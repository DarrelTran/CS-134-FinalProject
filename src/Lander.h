#pragma once

#include "ofMain.h"
#include "Shape.h"
#include "box.h"
#include "ofxAssimpModelLoader.h"

class Lander : public Shape 
{
	public:
		Lander();
		ForcesSystem forcesSystem;

		bool loaded = false;
		ofxAssimpModelLoader landerModel;
		Box landerBounds;
		void checkForMovement(const std::map<std::string, bool>& keymap);
		void update();
		void draw();

		glm::vec3 getSceneMin();
		glm::vec3 getSceneMax();

		glm::mat4 Lander::getTransform();
	private:
		ThrustForce* theThrustForce = new ThrustForce(glm::vec3(0, 0, 0), true, true);
};