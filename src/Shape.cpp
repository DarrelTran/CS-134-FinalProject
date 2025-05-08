#include "Shape.h"

Shape::Shape()
{
	position = { 0, 0, 0 };
	scale = { 0, 0, 0 };
	rotationAxis = { 0, 0, 1 };
	velocity = { 0, 0, 0 };
	acceleration = { 0, 0, 0 };
	forces = { 0, 0, 0 };

	linearDamping = 0;
	angularDamping = 0;
	degrees = 0;
	mass = 1;

	heading = { 0, -1, 0 };

	width = 0;
	height = 0;

	thrustSpeed = 0;
	rotationSpeed = 0;
	angularVelocity = 0;
	angularAcceleration = 0;

	birthtime = 0;
	lifespan = 0;
	color = ofColor::white;
}

// for projectiles
Shape::Shape(ofColor color, float lifespan, float birthtime, float radius)
{
	position = { 0, 0, 0 };
	scale = { 1, 1, 1 };
	rotationAxis = { 0, 0, 1 };
	velocity = { 0, 0, 0 };
	acceleration = { 0, 0, 0 };
	forces = { 0, 0, 0 };

	linearDamping = 0.99;
	angularDamping = 1;
	degrees = 0;
	mass = 1;

	heading = { 0, -1, 0 };

	width = 8;
	height = 15;

	thrustSpeed = 0;
	rotationSpeed = 0;
	angularVelocity = 0;
	angularAcceleration = 0;

	this->birthtime = birthtime;
	this->lifespan = lifespan;
	this->color = color;
	this->radius = radius;
}

void Shape::integrateLinearMotion(float dt)
{
	// update acceleration with accumulated particle forces
	// (f = ma) OR (a = 1/m * f)
	// start with any acceleration already on the particle
	ofVec3f accel = acceleration;
	accel = accel + forces / mass;
	velocity = velocity + accel * dt;
	// add a little damping to slow down the shape over time
	velocity = velocity * linearDamping;

	if (glm::length(velocity) > maxLinearSpeed)
	{
		velocity = glm::normalize(velocity) * maxLinearSpeed;
	}

	position = position + velocity * dt;
}

void Shape::integrateAngularMotion(float dt)
{
	// integrating a "hardcoded" acceleration 
	// similar process to linear integration
	angularVelocity = angularVelocity + angularAcceleration * dt;
	angularVelocity = angularVelocity * angularDamping;

	if (abs(angularVelocity) > maxAngularSpeed)
	{
		// keep direction
		angularVelocity = (angularVelocity > 0 ? 1 : -1) * maxAngularSpeed;
	}

	degrees = degrees + angularVelocity * dt;
}

void Shape::integrate()
{
	// calling this at the start of the program will mean ofGetFrameRate() = 0
	if (ofGetFrameRate() > 0.01)
	{
		// interval for this step
		float dt = 1.0f / ofGetFrameRate();

		integrateLinearMotion(dt);

		integrateAngularMotion(dt);

		// clear forces on particle (they get re-added each step)
		forces = { 0, 0, 0 };
		angularAcceleration = 0;
	}
}

glm::vec3 Shape::getRotatedHeading()
{
	glm::mat4 rot = glm::rotate(glm::mat4(1.0), glm::radians(degrees), rotationAxis);
	glm::vec4 head = rot * glm::vec4(heading, 0);

	return glm::normalize(glm::vec3(head));
}

void Shape::draw() 
{
	ofSetColor(ofMap(age(), 0, lifespan, 255, 10), 0, 0);
	ofDrawSphere(position, radius);
}

glm::mat4 Shape::getTransform()
{
	glm::mat4 identity(1.0);

	// TRS
	glm::mat4 transform;

	glm::mat4 translate = glm::translate(identity, position);
	glm::mat4 rotation = glm::rotate(glm::radians(degrees), rotationAxis);
	glm::mat4 sc = glm::scale(identity, scale);

	return (translate * rotation * sc);
}

float Shape::age()
{
	return (ofGetElapsedTimeMillis() - birthtime) / 1000.0;
}