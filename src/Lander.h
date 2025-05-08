#pragma once

#include "ofMain.h"
#include "Shape.h"
#include "ofxAssimpModelLoader.h"
#include "Octree.h"
#include "Box.h"

class Lander : public Shape 
{
	public:
		Lander();
		ForcesSystem forcesSystem;
		glm::vec3 center;
		vector<Box> bboxList;
		vector<Box> colBoxList;
		glm::vec3 lastPos;
		bool loaded = false;
		ofxAssimpModelLoader landerModel;
		Box landerBounds;
		Octree* theOctree;
		std::map<std::string, bool>* theKeymap;

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
		ThrustForce* theThrustForce = new ThrustForce(glm::vec3(0, 0, 0), true, true);
		GravityForce* theGravityForce = new GravityForce(glm::vec3(0, -1.62, 0), false, true);
		void loadModel(std::string path);
		void resolveCollision();
		bool keyWasPressed();
		bool isPressingIntoTerrain(const glm::vec3& normal);
};