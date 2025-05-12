#include "Lander.h"

Lander::Lander()
{
	rotationAxis = { 0, 1, 0 };
	heading = {0, 0, -1};

    degrees = 0;
    scale = glm::vec3(1, 1, 1);

    velocity = { 0, 0, 0 };
    acceleration = { 0, 0, 0 };

    linearDamping = 0.95;
    angularDamping = 0.95;

    mass = 1;

    yThrustSpeed = 20;
	zThrustSpeed = 20;

    rotationSpeed = 200;
    angularVelocity = 0;
    angularAcceleration = 0;

	loadModel("geo/spaceship.obj");

	zThrustForce = new ThrustForce(glm::vec3(0, 0, 0), true, true);
	yThrustForce = new ThrustForce(glm::vec3(0, 0, 0), true, true);
	theGravityForce = new GravityForce(glm::vec3(0, -1.62, 0), false, true);

	forcesSystem.addForce(zThrustForce);
	forcesSystem.addForce(yThrustForce);
	forcesSystem.addForce(theGravityForce);

	setupEmitters();

	pointLight.setPointLight();
	pointLight.setDiffuseColor(ofColor::white);
	pointLight.setSpecularColor(ofColor::white);
	pointLight.setAttenuation(0.025f, 0.025f, 0.01f);
	pointLight.setScale(1);
	pointLight.enable();

	spotLight.setSpotlight();
	spotLight.setDiffuseColor(ofColor::white);
	spotLight.setSpecularColor(ofColor::white);
	spotLight.setSpotlightCutOff(15);
	spotLight.setSpotConcentration(60);
	spotLight.setScale(1);
	spotLight.enable();
}

void Lander::setupEmitters()
{
	leftEngineTurbForce = new TurbulenceForce(ofVec3f(-20, -20, -20), ofVec3f(20, 20, 20), false, true);
	leftEngineThrustForce = new ThrustForce(ofVec3f(0, 0, 0), false, true);

	rightEngineTurbForce = new TurbulenceForce(ofVec3f(-20, -20, -20), ofVec3f(20, 20, 20), false, true);
	rightEngineThrustForce = new ThrustForce(ofVec3f(0, 0, 0), false, true);

	hoverTurbForce = new TurbulenceForce(ofVec3f(-20, -20, -20), ofVec3f(20, 20, 20), false, true);
	hoverThrustForce = new ThrustForce(ofVec3f(0, 0, 0), false, true);

	leftEngineEmitter.init();
	leftEngineEmitter.sys->addForce(leftEngineTurbForce);
	leftEngineEmitter.sys->addForce(leftEngineThrustForce);

	leftEngineEmitter.setVelocity(ofVec3f(0, 0, 0));
	leftEngineEmitter.setOneShot(true);
	leftEngineEmitter.setEmitterType(ConeEmitter);
	leftEngineEmitter.setGroupSize(3);
	leftEngineEmitter.setRandomLife(true);
	leftEngineEmitter.setLifespanRange(ofVec2f(1, 5));

	rightEngineEmitter.init();
	rightEngineEmitter.sys->addForce(rightEngineTurbForce);
	rightEngineEmitter.sys->addForce(rightEngineThrustForce);

	rightEngineEmitter.setVelocity(ofVec3f(0, 0, 0));
	rightEngineEmitter.setOneShot(true);
	rightEngineEmitter.setEmitterType(ConeEmitter);
	rightEngineEmitter.setGroupSize(3);
	rightEngineEmitter.setRandomLife(true);
	rightEngineEmitter.setLifespanRange(ofVec2f(1, 5));

	hoverEmitter.init();
	hoverEmitter.sys->addForce(hoverTurbForce);
	hoverEmitter.sys->addForce(hoverThrustForce);

	hoverEmitter.setVelocity(ofVec3f(0, 0, 0));
	hoverEmitter.setOneShot(true);
	hoverEmitter.setEmitterType(ConeEmitter);
	hoverEmitter.setGroupSize(3);
	hoverEmitter.setRandomLife(true);
	hoverEmitter.setLifespanRange(ofVec2f(1, 5));
}

Lander::~Lander()
{
	if (zThrustForce != nullptr)
		delete zThrustForce;

	if (yThrustForce != nullptr)
		delete yThrustForce;

	if (theGravityForce != nullptr)
		delete theGravityForce;

	if (leftEngineTurbForce != nullptr)
		delete leftEngineTurbForce;
	if (leftEngineThrustForce != nullptr)
		delete leftEngineThrustForce;

	if (rightEngineTurbForce != nullptr)
		delete rightEngineTurbForce;
	if (rightEngineThrustForce != nullptr)
		delete rightEngineThrustForce;

	if (hoverThrustForce != nullptr)
		delete hoverThrustForce;
	if (hoverTurbForce != nullptr)
		delete hoverTurbForce;
}

void Lander::loadModel(std::string path)
{
	if (landerModel.loadModel(path))
	{
		landerModel.setScaleNormalization(false);
		position = { 1, 15, 0 };

		loaded = true;
		for (int i = 0; i < landerModel.getMeshCount(); i++) 
		{
			bboxList.push_back(Octree::meshBounds(landerModel.getMesh(i)));
		}

		center = (getSceneMax() + getSceneMin()) / 2;

		std::cout << "Loaded " << path << std::endl;
	}
	else
	{
		std::cout << "Can't load " << path << std::endl;
		ofExit();
	}
}

glm::vec3 Lander::getSceneMin()
{
	return landerModel.getSceneMin();
}

glm::vec3 Lander::getSceneMax()
{
	return landerModel.getSceneMax();
}

void Lander::update()
{
	lastPos = position;

	bounceTerrain();
	checkForMovement();
	forcesSystem.updateShape(this);

	updateEmitters();
	updateLights();
}

void Lander::updateLights()
{
	glm::mat4 transform = getTransform();
	// make landerLight point down on the lander
	glm::vec3 offset = glm::vec3(-3, 3, 3);
	glm::vec3 center = glm::vec3(transform * glm::vec4(this->center + offset, 1.0f));
	pointLight.setPosition(center);
	pointLight.lookAt(center);

	glm::vec3 landerCenter = glm::vec3(transform * glm::vec4(this->center, 1.0f));
	glm::vec3 fullHeading = getRotatedHeading();
	glm::vec3 rotateHeading = glm::normalize(glm::vec3(fullHeading.x, 0, fullHeading.z));
	// -0.5f = move spotlight a bit in front and down
	glm::vec3 tiltDir = glm::normalize(rotateHeading + glm::vec3(0, -0.5f, 0));
	glm::vec3 spotlightPos = landerCenter + glm::vec3(0, -1.0f, 0);
	spotLight.setPosition(spotlightPos);
	spotLight.lookAt(spotlightPos + tiltDir * 10.0f);
}

void Lander::updateEmitters()
{
	ofSeedRandom();
	glm::mat4 transform = getTransform();
	glm::vec3 rotatedHeading = getRotatedHeading();

	/* ********************************** Left engine ********************************** */
	glm::vec3 emitterOffset(-1.25, 0, 3);
	leftEngineEmitter.position = glm::vec3(transform * glm::vec4(emitterOffset, 1.0));

	leftEngineThrustForce->thrust = -rotatedHeading * ofRandom(1, 11);
	leftEngineEmitter.particleDirection = -rotatedHeading;
	leftEngineEmitter.velocity = velocity;

	leftEngineEmitter.update();

	/* ********************************** Right engine ********************************** */
	emitterOffset = { 1.25, 0, 3 };
	rightEngineEmitter.position = glm::vec3(transform * glm::vec4(emitterOffset, 1.0));

	rightEngineThrustForce->thrust = -rotatedHeading * ofRandom(1, 11);
	rightEngineEmitter.particleDirection = -rotatedHeading;
	rightEngineEmitter.velocity = velocity;

	rightEngineEmitter.update();

	/* ********************************** Hover ********************************** */
	emitterOffset = { 0, 0, 2.25 };
	hoverEmitter.position = glm::vec3(transform * glm::vec4(emitterOffset, 1.0));
	glm::vec3 hoverHeading = {0, -1, 0};

	hoverThrustForce->thrust = hoverHeading * ofRandom(1, 11);
	hoverEmitter.particleDirection = hoverHeading;
	hoverEmitter.velocity = velocity;

	hoverEmitter.update();
}

void Lander::draw()
{
	ofPushMatrix();
	ofMultMatrix(getTransform());

	landerModel.drawFaces();

	ofPopMatrix();
}

void Lander::checkForMovement()
{
	// Step 1: Reset thrusts each frame
	zThrustForce->thrust = glm::vec3(0);
	yThrustForce->thrust = glm::vec3(0);

	bool appliedZ = true;
	bool appliedY = true;

	if (theKeymap->at("w") && !collisionForward)
	{
		appliedZ = false;
		zThrustForce->thrust += getRotatedHeading() * zThrustSpeed;
		leftEngineEmitter.start();
		rightEngineEmitter.start();
	}

	if (theKeymap->at("s") && !collisionBackward)
	{
		appliedZ = false;
		zThrustForce->thrust += getRotatedHeading() * -zThrustSpeed;
		leftEngineEmitter.start();
		rightEngineEmitter.start();
	}

	if (theKeymap->at("space") && !collisionUp)
	{
		appliedY = false;
		yThrustForce->thrust += glm::vec3(0, yThrustSpeed, 0);
		hoverEmitter.start();
	}

	if (theKeymap->at("x") && !collisionDown)
	{
		appliedY = false;
		yThrustForce->thrust += glm::vec3(0, -yThrustSpeed, 0);
		hoverEmitter.start();
	}

	// hopefully fixes keys randomly getting stuck sometimes
	zThrustForce->applied = appliedZ;
	yThrustForce->applied = appliedY;

	if (theKeymap->at("a"))
	{
		angularAcceleration += rotationSpeed;
	}

	if (theKeymap->at("d"))
	{
		angularAcceleration -= rotationSpeed;
	}
}

glm::mat4 Lander::getTransform()
{
	glm::mat4 identity(1.0);

	glm::mat4 T = glm::translate(position);
	glm::mat4 R = glm::rotate(glm::radians(degrees), rotationAxis);
	glm::mat4 S = glm::scale(identity, scale);
	// move to center in order to rotate around the center 
	glm::mat4 Tc = glm::translate(-center);
	// move back to where the position was
	glm::mat4 TcInv = glm::translate(center);

	return T * TcInv * R * Tc * S;
}

void Lander::transformCorners(glm::vec3& transformMin, glm::vec3& transformMax)
{
	glm::vec3 mi = transformMin;
	glm::vec3 mx = transformMax;

	// NO negatives on the min/max since min/max can be negative
	std::vector<glm::vec3> corners =
	{
		// bottom left back
		{mi.x, mi.y, mi.z},
		// bottom right back 
		{mx.x, mi.y, mi.z},
		// bottom left front
		{mi.x, mi.y, mx.z},
		// bottom right front
		{mx.x, mi.y, mx.z},
		// top left back
		{mi.x, mx.y, mi.z},
		// top right back
		{mx.x, mx.y, mi.z},
		// top left front
		{mi.x, mx.y, mx.z},
		// top right front
		{mx.x, mx.y, mx.z}
	};

	glm::mat4 transform = getTransform();

	glm::vec3 transformedMin(FLT_MAX);
	glm::vec3 transformedMax(-FLT_MAX);

	for (int i = 0; i < corners.size(); i++)
	{
		glm::vec3 transformedCorner = transform * glm::vec4(corners.at(i), 1);
		transformedMin = glm::min(transformedMin, transformedCorner);
		transformedMax = glm::max(transformedMax, transformedCorner);
	}

	transformMin = transformedMin;
	transformMax = transformedMax;
}

void Lander::bounceTerrain()
{
	colBoxList.clear();
	theOctree->intersect(getIntersectionBounds(), theOctree->root, colBoxList);

	collisionUp = collisionDown = collisionForward = collisionBackward = false;

	if (colBoxList.size() > 0)
	{
		theGravityForce->applyOnce = true;
		resolveCollision();
	}
	else
	{
		theGravityForce->applyOnce = false;
	}
}

void Lander::resolveCollision()
{
	// lander's intersection bounds
	Box boundsL = getIntersectionBounds();
	glm::vec3 minL(boundsL.min().x, boundsL.min().y, boundsL.min().z);
	glm::vec3 maxL(boundsL.max().x, boundsL.max().y, boundsL.max().z);
	glm::vec3 centerL = (minL + maxL) / 2.0f;
	glm::vec3 halfSizeL = (maxL - minL) / 2.0f;

	// first colliding terrain box
	const Box& b = colBoxList[0];
	glm::vec3 minB(b.min().x, b.min().y, b.min().z);
	glm::vec3 maxB(b.max().x, b.max().y, b.max().z);
	glm::vec3 centerB = (minB + maxB) / 2.0f;
	glm::vec3 halfSizeB = (maxB - minB) / 2.0f;

	// how far apart the boxes are
	glm::vec3 diff = centerL - centerB; 
	// add half sizes to get spot where boxes touch
	// positive coordinate = intersection
	// smallest value = least penetration = best for collision resolvable 
	glm::vec3 overlap = halfSizeL + halfSizeB - glm::abs(diff); 

	// collision normal along smallest penetration axis
	glm::vec3 normalLocal = {0, 0, 0};
	// x axis resolvable 
	if (overlap.x < overlap.y && overlap.x < overlap.z) 
	{
		// set normal to left or right depending on diff's sign
		normalLocal = glm::vec3(diff.x > 0 ? 1.0f : -1.0f, 0.0f, 0.0f);
	}
	// y axis resolvable
	else if (overlap.y < overlap.z) 
	{
		normalLocal = glm::vec3(0.0f, diff.y > 0 ? 1.0f : -1.0f, 0.0f);
	}
	// z axis resolvable
	else 
	{
		normalLocal = glm::vec3(0.0f, 0.0f, diff.z > 0 ? 1.0f : -1.0f);
	}

	collisionUp = glm::dot(normalLocal, glm::vec3(0.0f, -1.0f, 0.0f)) > 0.9f;
	collisionDown = glm::dot(normalLocal, glm::vec3(0.0f, 1.0f, 0.0f)) > 0.9f;

	glm::vec3 forwardDir = getRotatedHeading();
	collisionForward = glm::dot(normalLocal, forwardDir) > 0.9f;
	collisionBackward = glm::dot(normalLocal, -forwardDir) > 0.9f;

	float restitution = 0.75f;
	float vDotN = glm::dot(-velocity, normalLocal);
	glm::vec3 impulse = (restitution + 1.0f) * vDotN * normalLocal;
	velocity = velocity + impulse;

	// prevent sticking
	if (glm::length(velocity) > 1.0f && keyWasPressed()) 
	{
		float correction = glm::max(glm::min(glm::min(overlap.x, overlap.y), overlap.z), 0.05f);
		position = position + normalLocal * correction;
	}
}

Box Lander::getIntersectionBounds()
{
	glm::vec3 min = getSceneMin();
	glm::vec3 max = getSceneMax();
	transformCorners(min, max);

	Box bounds = Box(glm::vec3(min.x, min.y, min.z), glm::vec3(max.x, max.y, max.z));

	return bounds;
}

bool Lander::keyWasPressed()
{
	for (const auto& pair : *theKeymap) 
	{
		if (pair.second)
		{
			return true;
		}
	}

	return false;
}