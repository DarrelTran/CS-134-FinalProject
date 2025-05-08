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
		float height = .2;

		ImpulseRadialForce(float mag, bool once, bool reusable, float magnitudeFactor, float height);
		void updateForce(Shape*);
};

class GravityForce : public Forces
{
	public:
		ofVec3f gravity;
		GravityForce(const ofVec3f& gravity, bool once, bool reusable);
		void updateForce(Shape*);
};

class TurbulenceForce : public Forces
{
	public:
		ofVec3f tmin, tmax;
		TurbulenceForce(const ofVec3f& min, const ofVec3f& max, bool once, bool reusable);
		void updateForce(Shape*);
};

class CyclicForce : public Forces 
{
	public:
		float magnitude;
		CyclicForce(float magnitude, bool once, bool reusable);
		void updateForce(Shape*);
};
