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
		position = { 1, 1, 0 };

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