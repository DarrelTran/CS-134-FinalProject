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
		// facing from the back
		ParticleEmitter leftEngineEmitter;
		ParticleEmitter rightEngineEmitter;
		ParticleEmitter hoverEmitter;
		glm::vec3 center;
		vector<Box> bboxList;
		vector<Box> colBoxList;
		glm::vec3 lastPos;
		bool loaded = false;
		ofxAssimpModelLoader landerModel;
		Box landerBounds;
		Octree* theOctree;
		std::map<std::string, bool>* theKeymap;
		ofLight pointLight;
		ofLight spotLight;

		float yThrustSpeed;
		float zThrustSpeed;

		float maxFuel;      // Maximum fuel amount (seconds of thrust)
		float fuel;         // Current fuel amount
		float fuelBurnRate; // Fuel consumed per second of thrust
		bool outOfFuel;     // Set true when fuel runs out
		
		bool landedOnPad = false;  // Has the lander won/ended?
		int landedPadIndex = -1;   // Which pad, if wanted (-1=none)

		bool thrustActive;
		bool isThrusting() const { return thrustActive; }

		bool collisionUp = false;
		bool collisionDown = false;
		bool collisionForward = false;
		bool collisionBackward = false;

		ParticleEmitter explosionEmitter;
		bool exploded = false;
		bool contactLastFrame = false;
		std::vector<Box>* landingPadBoxListPtr = nullptr;
		bool catapulted = false;        
		int explosionTime = 0;    
		float catapultDelay = 0.05f;
		float explosionVelocityThreshold = 5.0f;

		void checkForMovement(float deltaTime);
		void update(float deltaTime);
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

		TurbulenceForce* leftEngineTurbForce;
		ThrustForce* leftEngineThrustForce;

		TurbulenceForce* rightEngineTurbForce;
		ThrustForce* rightEngineThrustForce;

		TurbulenceForce* hoverTurbForce;
		ThrustForce* hoverThrustForce;

		void loadModel(std::string path);
		void resolveCollision();
		bool keyWasPressed();
		void setupEmitters();
		void updateEmitters();
		void updateLights();
};