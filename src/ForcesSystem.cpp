#include "ForcesSystem.h"
#include "Shape.h"

void ForcesSystem::add(const Shape& p)
{
	particles.push_back(p);
}

void ForcesSystem::addForce(Forces* f)
{
	forces.push_back(f);
}

void ForcesSystem::remove(int i)
{
	particles.erase(particles.begin() + i);
}

void ForcesSystem::checkAppliedForces()
{
	// remove forces that should only be applied once
	for (int i = forces.size() - 1; i >= 0; i--)
	{
		Forces* f = forces.at(i);
		if (f->applyOnce && f->applied && !f->reusable)
		{
			delete forces.at(i);
			forces.erase(forces.begin() + i);
		}
	}
}

void ForcesSystem::checkLifespan()
{
	vector<Shape>::iterator p = particles.begin();
	vector<Shape>::iterator tmp;

	// check which particles have exceed their lifespan and delete
	// from list.  When deleting multiple objects from a vector while
	// traversing at the same time, we need to use an iterator.
	for (int i = particles.size() - 1; i >= 0; i--)
	{
		Shape* p = &particles.at(i);
		if (p->collided || (p->lifespan != -1 && p->age() > p->lifespan))
		{
			particles.erase(particles.begin() + i);
		}
	}
}

void ForcesSystem::resetApplied()
{
	for (int i = 0; i < forces.size(); i++)
	{
		forces.at(i)->applied = false;
	}
}

void ForcesSystem::deleteApplied()
{
	for (int i = forces.size() - 1; i >= 0; i--)
	{
		if (forces.at(i)->applied)
		{
			delete forces.at(i);
			forces.erase(forces.begin() + i);
		}
	}
}

void ForcesSystem::update()
{
	// check if empty and just return
	if (particles.size() == 0) return;

	// update forces on all particles first 
	for (int i = 0; i < particles.size(); i++)
	{
		for (int k = 0; k < forces.size(); k++)
		{
			if ((forces[k]->applyOnce && !forces[k]->applied) || !forces[k]->applyOnce)
			{
				forces[k]->updateForce(&particles[i]);
				forces[k]->applied = true;
			}
		}
	}

	// integrate all the particles in the store
	for (int i = 0; i < particles.size(); i++)
		particles[i].integrate();

	checkLifespan();
	checkAppliedForces();
}

void ForcesSystem::updateShape(Shape* sh)
{
	checkAppliedForces();

	// update forces on all particles first 
	for (int k = 0; k < forces.size(); k++)
	{
		if ((forces[k]->applyOnce && !forces[k]->applied) || !forces[k]->applyOnce)
		{
			forces[k]->updateForce(sh);
			forces[k]->applied = true;
		}
	}

	sh->integrate();
}

ThrustForce::ThrustForce(glm::vec3 thrust, bool once, bool reusable)
{
	applyOnce = once;
	this->thrust = thrust;
	this->reusable = reusable;
}

void ThrustForce::updateForce(Shape* sh)
{
	sh->forces = sh->forces + thrust;
}

ImpulseRadialForce::ImpulseRadialForce(float mag, bool once, bool reusable, float magnitudeFactor)
{
	applyOnce = once;
	magnitude = mag;
	this->magnitudeFactor = magnitudeFactor;
	this->reusable = reusable;
}

void ImpulseRadialForce::updateForce(Shape* sh)
{
	// we basically create a random direction for each particle
	// the force is only added once after it is triggered.
	//
	ofVec3f dir = ofVec3f(ofRandom(-1, 1), ofRandom(-1, 1), 0);
	sh->forces = sh->forces + dir.getNormalized() * magnitude * magnitudeFactor;
}

GravityForce::GravityForce(const ofVec3f& g, bool once, bool reusable)
{
	applyOnce = once;
	gravity = g;
	this->reusable = reusable;
}

void GravityForce::updateForce(Shape* particle)
{
	// f = mg
	particle->forces += gravity * particle->mass;
}

TurbulenceForce::TurbulenceForce(const ofVec3f& min, const ofVec3f& max, bool once, bool reusable)
{
	applyOnce = once;
	tmin = min;
	tmax = max;
	this->reusable = reusable;
}

void TurbulenceForce::updateForce(Shape* particle)
{
	// We are going to add a little "noise" to a particles
	// forces to achieve a more natual look to the motion
	particle->forces.x += ofRandom(tmin.x, tmax.x);
	particle->forces.y += ofRandom(tmin.y, tmax.y);
	particle->forces.z += ofRandom(tmin.z, tmax.z);
}