#pragma once

#include "ofMain.h"

class Shape;

//  Pure Virtual Function Class - must be subclassed to create new forces.
//
class Forces
{
public:
	bool applied = false;
	bool applyOnce = false;
	bool reusable = false;
	Shape* associatedParticle = nullptr;

	virtual void updateForce(Shape* s) = 0;
};

class ForcesSystem
{
public:
	void add(const Shape&);
	void addForce(Forces* f);
	void remove(int);
	void update();
	void updateShape(Shape* sh);
	void checkLifespan();
	void checkAppliedForces();
	void resetApplied();
	void deleteApplied();
	void draw();
	vector<Shape> particles;
	vector<Forces*> forces;
};

class ThrustForce : public Forces
{
public:
	glm::vec3 thrust;

	ThrustForce(glm::vec3 thrust, bool once, bool reusable);
	void updateForce(Shape* sh);
};

class ImpulseRadialForce : public Forces
{
public:
	float magnitude;
	float magnitudeFactor;

	ImpulseRadialForce(float mag, bool once, bool reusable, float magnitudeFactor);
	void updateForce(Shape*);
};

class GravityForce : public Forces
{
	ofVec3f gravity;
public:
	GravityForce(const ofVec3f& gravity, bool once, bool reusable);
	void updateForce(Shape*);
};

class TurbulenceForce : public Forces
{
	ofVec3f tmin, tmax;
public:
	TurbulenceForce(const ofVec3f& min, const ofVec3f& max, bool once, bool reusable);
	void updateForce(Shape*);
};
