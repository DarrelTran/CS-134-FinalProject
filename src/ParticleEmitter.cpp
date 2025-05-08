
//  Kevin M. Smith - CS 134 SJSU

#include "ParticleEmitter.h"

ParticleEmitter::ParticleEmitter() {
	sys = new ForcesSystem();
	createdSys = true;
	init();
}

ParticleEmitter::ParticleEmitter(ForcesSystem *s) {
	if (s == NULL)
	{
		cout << "fatal error: null particle system passed to ParticleEmitter()" << endl;
		ofExit();
	}
	sys = s;
	createdSys = false;
	init();
}

ParticleEmitter::~ParticleEmitter() {

	// deallocate particle system if emitter created one internally
	//
	if (createdSys) delete sys;
}

void ParticleEmitter::init() {
	rate = 1;
	velocity = ofVec3f(0, 20, 0);
	lifespan = 3;
	mass = 1;
	randomLife = false;
	lifeMinMax = ofVec3f(2, 4);
	started = false;
	oneShot = false;
	fired = false;
	lastSpawned = 0;
	radius = 10;
	particleRadius = .1;
	visible = true;
	type = DirectionalEmitter;
	groupSize = 1;
	damping = .99;
}

void ParticleEmitter::draw() 
{
	if (visible) {
		switch (type) {
		case DirectionalEmitter:
			ofDrawSphere(position, radius/10);  // just draw a small sphere for point emitters 
			break;
		case SphereEmitter:
		case RadialEmitter:
			ofDrawSphere(position, radius/10);  // just draw a small sphere as a placeholder
			break;
		default:
			break;
		}
	}
	sys->draw(); 	
}
void ParticleEmitter::start() {
	started = true;
	lastSpawned = ofGetElapsedTimeMillis();
}

void ParticleEmitter::stop() {
	started = false;
	fired = false;
}
void ParticleEmitter::update() {

	float time = ofGetElapsedTimeMillis();

	if (oneShot && started) {
		if (!fired) {

			// spawn a new particle(s)
			//
			for (int i = 0; i < groupSize; i++)
				spawn(time);

			lastSpawned = time;
		}
		fired = true;
		stop();
	}

	else if (((time - lastSpawned) > (1000.0 / rate)) && started) {

		// spawn a new particle(s)
		//
		for (int i= 0; i < groupSize; i++)
			spawn(time);
	
		lastSpawned = time;
	}

	sys->update();
}

// spawn a single particle.  time is current time of birth
//
void ParticleEmitter::spawn(float time) {

	Shape particle(ofColor::blue, 5, 0, 0.1f);

	// set initial velocity and position
	// based on emitter type
	//
	switch (type) {
	case RadialEmitter:
	{
		ofVec3f dir = ofVec3f(ofRandom(-1, 1), ofRandom(-1, 1), ofRandom(-1, 1));
		float speed = velocity.length();
		particle.velocity = dir.getNormalized() * speed;
		particle.position = position;
	}
	break;
	case SphereEmitter:
		break;
	case DirectionalEmitter:
		particle.velocity = velocity;
		particle.position = position;
		break;
	case ConeEmitter:
		float speed = velocity.length();
		particle.velocity = velocity + particleDirection * speed;
		particle.position = position;
		break;
	}

	// other particle attributes
	//
	if (randomLife) {
		particle.lifespan = ofRandom(lifeMinMax.x, lifeMinMax.y);
	}
	else particle.lifespan = lifespan;
	particle.birthtime = time;
	particle.radius = particleRadius;
	particle.mass = mass;
	particle.linearDamping = damping;

	// add to system
	//
	sys->add(particle);
}

void ParticleEmitter::loadVbo(ofFloatColor color)
{
	if (sys->particles.size() < 1) return;

	vector<ofVec3f> sizes;
	vector<ofVec3f> points;
	vector<ofFloatColor> colors;

	for (int i = 0; i < sys->particles.size(); i++) {
		points.push_back(sys->particles[i].position);
		sizes.push_back(ofVec3f(radius));
		colors.push_back(color);
	}
	// upload the data to the vbo
	//
	int total = (int)points.size();
	vbo.clear();
	vbo.setVertexData(&points[0], total, GL_STATIC_DRAW);
	vbo.setNormalData(&sizes[0], total, GL_STATIC_DRAW);
	vbo.setColorData(&colors[0], total, GL_STATIC_DRAW);
}