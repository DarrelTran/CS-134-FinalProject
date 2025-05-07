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
	loadModel("geo/spaceship.obj");
}

void Lander::loadModel(std::string path)
{
	if (landerModel.loadModel(path))
	{
		landerModel.setScaleNormalization(false);
		position = { 1, 5, 0 };

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
	//landerModel.setPosition(position.x, position.y, position.z);
	forcesSystem.updateShape(this);
}

void Lander::draw()
{
	ofPushMatrix();
	ofMultMatrix(getTransform());

	landerModel.drawFaces();

	ofPopMatrix();
}

void Lander::checkForMovement(const std::map<std::string, bool>& keymap)
{
	if (keymap.at("w"))
	{
		theThrustForce->applied = false;
		theThrustForce->thrust = getRotatedHeading() * thrustSpeed;
	}

	if (keymap.at("a"))
	{
		angularAcceleration = angularAcceleration + rotationSpeed;
	}

	if (keymap.at("s"))
	{
		theThrustForce->applied = false;
		theThrustForce->thrust = getRotatedHeading() * -thrustSpeed;
	}

	if (keymap.at("d"))
	{
		angularAcceleration = angularAcceleration - rotationSpeed;
	}

	if (keymap.at("space"))
	{
		theThrustForce->applied = false;
		theThrustForce->thrust = glm::vec3(0, thrustSpeed, 0);
	}

	if (keymap.at("lcntrl"))
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

void Lander::intersectTerrain(Octree& octree)
{
	colBoxList.clear();
	octree.intersect(getIntersectionBounds(), octree.root, colBoxList);

	if (colBoxList.size() > 0)
	{
		resolveCollision();
	}
}

void Lander::resolveCollision()
{
	/* P = (e + 1) * (-v.dot.n) * n
	Where v is the velocity of the moving object
	n is the normal at the contact point.
	e is the material restitution in [0, 1] 
	*/

	glm::vec3 normal = glm::normalize(position - lastPos);
	float restitution = 1.0f;
	glm::vec3 impulse = (restitution + 1) * (glm::dot(-velocity, normal)) * normal;

	velocity = velocity + impulse;
}

Box Lander::getIntersectionBounds()
{
	glm::vec3 min = getSceneMin();
	glm::vec3 max = getSceneMax();
	transformCorners(min, max);

	Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));

	return bounds;
}