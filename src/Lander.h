#pragma once

#include "ofMain.h"
#include "Shape.h"
#include "ofxAssimpModelLoader.h"
#include "Octree.h"
#include "Box.h"
#include "ParticleEmitter.h"

class Lander : public Shape 
{
	public:
		Lander();
		~Lander();
		ForcesSystem forcesSystem;
		ParticleEmitter engineEmitter;
		// facing from the back
		ParticleEmitter leftWingEmitter;
		ParticleEmitter rightWingEmitter;
		glm::vec3 center;
		vector<Box> bboxList;
		vector<Box> colBoxList;
		glm::vec3 lastPos;
		bool loaded = false;
		ofxAssimpModelLoader landerModel;
		Box landerBounds;
		Octree* theOctree;
		std::map<std::string, bool>* theKeymap;

		float yThrustSpeed;
		float zThrustSpeed;

		bool collisionUp = false;
		bool collisionDown = false;
		bool collisionForward = false;
		bool collisionBackward = false;

		void checkForMovement();
		void update();
		void draw();

		glm::vec3 getSceneMin();
		glm::vec3 getSceneMax();

		glm::mat4 Lander::getTransform();
		// updates transformMin & transformMax after execution
		// MUST initialize transformMin/transformMax!
		// Need this because transform can create new min/max
		void transformCorners(glm::vec3& transformMin, glm::vec3& transformMax);
		void bounceTerrain();
		Box getIntersectionBounds();
	private:
		ThrustForce* zThrustForce;
		ThrustForce* yThrustForce;
		GravityForce* theGravityForce;

		TurbulenceForce* engineTurbForce;
		ThrustForce* engineThrustForce;

		TurbulenceForce* leftTurbForce;
		ThrustForce* leftThrustForce;

		TurbulenceForce* rightTurbForce;
		ThrustForce* rightThrustForce;

		void loadModel(std::string path);
		void resolveCollision();
		bool keyWasPressed();
		void setupEmitters();
		void updateEmitters();
};