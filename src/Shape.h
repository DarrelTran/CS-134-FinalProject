#pragma once

#include "ofMain.h"
#include "ForcesSystem.h"

class Shape
{
private:
	virtual void integrateLinearMotion(float dt);
	virtual void integrateAngularMotion(float dt);

public:
	glm::vec3 position;
	glm::vec3 scale;
	glm::vec3 rotationAxis = { 0, 0, 1 };
	glm::vec3 velocity;
	glm::vec3 acceleration;
	glm::vec3 forces;
	ForcesSystem system;

	float linearDamping;
	float angularDamping;
	float degrees;
	float mass;

	glm::vec3 heading;

	float width;
	float height;

	// physics stuff
	float thrustSpeed;
	float rotationSpeed;
	float angularVelocity;
	float angularAcceleration;
	float maxLinearSpeed = 9999999;
	float maxAngularSpeed = 9999999;

	float lifespan;
	float birthtime;
	float radius;
	ofColor color;

	bool collided = false;

	Shape();
	Shape(ofColor color, float lifespan, float birthtime, float radius);
	void integrate();
	glm::vec3 getRotatedHeading();
	virtual glm::mat4 getTransform();	
	float age();	
};