#pragma once

#include "ofMain.h"
#include "ofxGui.h"
#include  "ofxAssimpModelLoader.h"
#include "Octree.h"
#include "Lander.h"
#include "ofSoundPlayer.h"


class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void mouseEntered(int x, int y);
		void mouseExited(int x, int y);
		void windowResized(int w, int h);
		void dragEvent2(ofDragInfo dragInfo);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
		void initLightingAndMaterials();
		void savePicture();
		void toggleWireframeMode();
		void togglePointsDisplay();
		void toggleSelectTerrain();
		void setCameraTarget();
		bool mouseIntersectPlane(glm::vec3 planePoint, glm::vec3 planeNorm, glm::vec3&point);
		bool raySelectWithOctree(glm::vec3& pointRet);
		glm::vec3 ofApp::getMousePointOnPlane(glm::vec3 p , glm::vec3 n);
		void checkKeysPressed();
		float getAGL();
		void updateCameras();

		ofCamera* theCam;
		ofEasyCam onboardCam;
		ofEasyCam fixedCam;
		// player can teleport to any selected point on terrain
		ofEasyCam freeCam; 

		ofxAssimpModelLoader mars;
		ofLight light;
		Box boundingBox;
		Box testBox;
		bool bLanderSelected = false;
		Octree octree;
		TreeNode selectedNode;
		glm::vec3 mouseDownPos, mouseLastPos;
		bool bInDrag = false;


		ofxIntSlider numLevels;
		ofxToggle timeOn;
		ofxPanel gui;

		bool bAltKeyDown;
		bool bCtrlKeyDown;
		bool bWireframe;
		bool bDisplayPoints;
		bool bPointSelected;
		bool bHide;
		bool pointSelected = false;
		bool bDisplayLeafNodes = false;
		bool bDisplayOctree = false;
		bool bDisplayBBoxes = false;
		bool bShowAGL = true;

		bool bTerrainSelected;
	
		glm::vec3 selectedPoint;
		glm::vec3 intersectPoint;

		int maxLevels = 20;
		std::vector<ofColor> colors;

		const float selectionRange = 4.0;

		Lander lander;
		std::map<std::string, bool> keymap;
		ofTexture shaderTexture;
		ofShader shader;
		// assumes that at least the first agl is a hit 
		float oldAGL = 0;
		bool teleportPointSelected = false;
		glm::vec3 teleportPoint;
		bool landerDraggable = false;

		ofLight environmentLight;

		ofxAssimpModelLoader landingPads[3];
		glm::vec3 padPositions[3]; // positions to place each pad
		std::vector<Box> landingPadBoxes; // collision areas for each pad
		ofLight padLights[3];

		ofSoundPlayer thrustSFX;
		ofSoundPlayer explosionSFX;
		ofImage backgroundImg;

		ofCylinderPrimitive beams[3];
};
