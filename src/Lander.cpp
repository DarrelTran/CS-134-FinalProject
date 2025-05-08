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

    thrustSpeed = 25;

    rotationSpeed = 200;
    angularVelocity = 0;
    angularAcceleration = 0;

	forcesSystem.addForce(theThrustForce);
	forcesSystem.addForce(theGravityForce);
	loadModel("geo/spaceship.obj");
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
	if (theKeymap->at("w") && !collisionForward)
	{
		theThrustForce->applied = false;
		theThrustForce->thrust = getRotatedHeading() * thrustSpeed;
	}

	if (theKeymap->at("a"))
	{
		angularAcceleration = angularAcceleration + rotationSpeed;
	}

	if (theKeymap->at("s") && !collisionBackward)
	{
		theThrustForce->applied = false;
		theThrustForce->thrust = getRotatedHeading() * -thrustSpeed;
	}

	if (theKeymap->at("d"))
	{
		angularAcceleration = angularAcceleration - rotationSpeed;
	}

	if (theKeymap->at("space") && !collisionUp)
	{
		theThrustForce->applied = false;
		theThrustForce->thrust = glm::vec3(0, thrustSpeed, 0);
	}

	if (theKeymap->at("lcntrl") && !collisionDown)
	{
		theThrustForce->applied = false;
		theThrustForce->thrust = glm::vec3(0, -thrustSpeed, 0);
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
	glm::vec3 minL(boundsL.min().x(), boundsL.min().y(), boundsL.min().z());
	glm::vec3 maxL(boundsL.max().x(), boundsL.max().y(), boundsL.max().z());
	glm::vec3 centerL = (minL + maxL) / 2.0f;
	glm::vec3 halfSizeL = (maxL - minL) / 2.0f;

	// first colliding terrain box
	const Box& b = colBoxList[0];
	glm::vec3 minB(b.min().x(), b.min().y(), b.min().z());
	glm::vec3 maxB(b.max().x(), b.max().y(), b.max().z());
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
	if (keyWasPressed()) 
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

	Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));

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