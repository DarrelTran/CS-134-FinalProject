
//--------------------------------------------------------------
//
//  Kevin M. Smith
//
//  Octree Test - startup scene
// 
//
//  Student Name:   Darrel Tran
//  Date: 4/25/25


#include "ofApp.h"
#include "Util.h"
#include <glm/gtx/intersect.hpp>

//--------------------------------------------------------------
// setup scene, lighting, state and load geometry
//
void ofApp::setup(){
	bWireframe = false;
	bDisplayPoints = false;
	bAltKeyDown = false;
	bCtrlKeyDown = false;
	bTerrainSelected = true;

	ofSetVerticalSync(true);
	ofEnableSmoothing();
	ofEnableDepthTest();
	ofEnableAntiAliasing();
	//ofSetGlobalAmbientColor(ofColor(128));

	// setup rudimentary lighting 
	initLightingAndMaterials();

	mars.loadModel("geo/terrain.obj");
	mars.setScaleNormalization(false);

	backgroundImg.load("images/background.jpg");

	// Set desired landing pad positions
	padPositions[0] = glm::vec3(-107, -53, -262);
	padPositions[1] = glm::vec3(665, -289, -689);
	padPositions[2] = glm::vec3(-638, -262, 469);
	landingPadBoxes.clear();

	for (int i = 0; i < 3; i++) {
		landingPads[i].loadModel("geo/landing-pad.obj"); // Or 3 different models
		landingPads[i].setPosition(padPositions[i].x, padPositions[i].y, padPositions[i].z);
		landingPads[i].setScaleNormalization(false);

		// get bounding box in LOCAL (model) space
		Box padBox = Octree::meshBounds(landingPads[i].getMesh(0));

		// Transform the padBox into world coordinates using pad position (assume no rotation/scale)
		padBox.setMin(padBox.min() + padPositions[i]);
		padBox.setMax(padBox.max() + padPositions[i]);
		landingPadBoxes.push_back(padBox);
	}

	lander.landingPadBoxListPtr = &landingPadBoxes;

	thrustSFX.load("sounds/thrust.wav");           
	thrustSFX.setLoop(true);                       
	thrustSFX.setMultiPlay(false);                 
	thrustSFX.setVolume(0.7f);

	explosionSFX.load("sounds/explosion.wav");   
	explosionSFX.setMultiPlay(false);
	explosionSFX.setVolume(0.7f);

	// create sliders for testing
	gui.setup();
	gui.add(numLevels.setup("Number of Octree Levels", 1, 1, maxLevels));
	gui.add(timeOn.setup("Time", false));
	bHide = true;
	
	colors = 
	{
		ofColor::red,
		ofColor::green,
		ofColor::blue,
		ofColor::yellow,
		ofColor::cyan,
		ofColor::magenta,
		ofColor::orange,
		ofColor::purple,
		ofColor::teal,
		ofColor::lime,
		ofColor::pink,
		ofColor(139, 69, 19),    // brown
		ofColor(255, 105, 180),  // hot pink
		ofColor(0, 128, 128),    // dark teal
		ofColor(128, 0, 0),      // maroon
		ofColor(128, 0, 128),    // dark purple
		ofColor(0, 100, 0),      // dark green
		ofColor(70, 130, 180),   // steel blue
		ofColor(255, 215, 0),    // gold
		ofColor(255, 165, 0)     // dark orange
	};

	octree.create(mars.getMesh(0), maxLevels);
	octree.colors = colors;
	
	testBox = Box(glm::vec3(3, 3, 0), glm::vec3(5, 5, 2));

	// DONT USE A SPECIAL KEY LIKE LCNTRL
	// cant be pressed in parallel
	keymap["w"] = false;
	keymap["a"] = false;
	keymap["s"] = false;
	keymap["d"] = false;
	keymap["space"] = false;
	keymap["x"] = false;

	lander.theOctree = &octree;
	lander.theKeymap = &keymap;

	ofDisableArbTex();

	if (!ofLoadImage(shaderTexture, "images/dot.png"))
	{
		cout << "Particle Texture File: images/dot.png not found" << endl;
		ofExit();
	}

// load the shader
#ifdef TARGET_OPENGLES
	shader.load("shaders_gles/shader");
#else
	shader.load("shaders/shader");
#endif

	environmentLight.setPointLight();
	environmentLight.setDiffuseColor(ofColor::grey);
	environmentLight.setSpecularColor(ofColor::grey);
	environmentLight.setScale(1);
	environmentLight.setPosition(0, 200, 0);
	environmentLight.enable();

	for (int i = 0; i < 3; i++)
	{
		glm::vec3 pPos = padPositions[i];

		padLights[i].setSpotlight();
		padLights[i].setSpotConcentration(2);
		padLights[i].setDiffuseColor(ofColor::blue);
		padLights[i].setSpecularColor(ofColor::blue);
		padLights[i].setAmbientColor(ofColor::blue);
		padLights[i].setScale(1);
		padLights[i].setSpotlightCutOff(100);
		padLights[i].setSpotConcentration(5);
		padLights[i].setPosition(pPos.x, pPos.y + 20, pPos.z);
		padLights[i].lookAt(pPos);
		padLights[i].enable();
	}

	for (int i = 0; i < 3; i++)
	{
		float beamRadius = 5;
		float beamHeight = 1000;
		float x = padPositions[i].x;
		float y = padPositions[i].y;
		float z = padPositions[i].z;
		beams[i].set(beamRadius, beamHeight);
		beams[i].setPosition(x, y + beamHeight / 2.0, z);
	}

	theCam = &fixedCam;
	updateCameras();

	freeCam.setTarget(freeCam);
	freeCam.setAutoDistance(false);
}

void ofApp::updateCameras()
{
	glm::mat4 transform = lander.getTransform();

	glm::vec3 offsetO = glm::vec3(0, 2, 1);
	glm::vec3 camPosO = glm::vec3(transform * glm::vec4(offsetO, 1.0f));
	glm::vec3 centerO = glm::vec3(transform * glm::vec4(lander.center, 1.0f));
	glm::vec3 forwardO = glm::normalize(glm::vec3(transform * glm::vec4(0, 0, -1, 0)));
	onboardCam.disableMouseInput();
	onboardCam.setNearClip(0.1f);
	onboardCam.setPosition(camPosO);
	onboardCam.lookAt(centerO + forwardO * 10.0f);

	glm::vec3 centerF = glm::vec3(transform * glm::vec4(lander.center, 1.0f));
	glm::vec3 topOffsetF = glm::vec3(0, 10, 10);
	glm::vec3 camPosF = glm::vec3(transform * glm::vec4(topOffsetF, 1.0));
	fixedCam.setPosition(camPosF);
	fixedCam.lookAt(centerF);
	fixedCam.disableMouseInput();

	freeCam.enableMouseInput();
	freeCam.setNearClip(0.1f);
}

float ofApp::getAGL()
{
	float agl = FLT_MAX;

	Ray ray(lander.position, glm::vec3(0, -1, 0));

	TreeNode intersectedNode;
	bool intersected = octree.intersect(ray, octree.root, intersectedNode);

	if (intersected)
	{
		glm::vec3 pointRet = octree.mesh.getVertex(intersectedNode.points[0]);
		glm::vec3 landerPos(lander.position.x, lander.position.y, lander.position.z);

		agl = glm::length(pointRet - landerPos);
	}
	else agl = oldAGL;

	return agl;
}

void ofApp::checkKeysPressed()
{
	if (theCam != &freeCam)
	{
		if (ofGetKeyPressed('w') || ofGetKeyPressed('W'))
			keymap["w"] = true;
		else
			keymap["w"] = false;

		if (ofGetKeyPressed('a') || ofGetKeyPressed('A'))
			keymap["a"] = true;
		else
			keymap["a"] = false;
		if (ofGetKeyPressed('s') || ofGetKeyPressed('S'))
			keymap["s"] = true;
		else
			keymap["s"] = false;

		if (ofGetKeyPressed('d') || ofGetKeyPressed('D'))
			keymap["d"] = true;
		else
			keymap["d"] = false;

		if (ofGetKeyPressed(' '))
			keymap["space"] = true;
		else
			keymap["space"] = false;

		if (ofGetKeyPressed('x') || ofGetKeyPressed('X'))
			keymap["x"] = true;
		else
			keymap["x"] = false;
	}
	else if (theCam == &freeCam)
	{
		glm::vec3 camPos = freeCam.getPosition();
		glm::vec3 forward = freeCam.getLookAtDir(); 
		glm::vec3 up = freeCam.getUpDir();
		glm::vec3 right = freeCam.getSideDir();
		float freeCamSpeed = 0.5f;

		if (ofGetKeyPressed('w') || ofGetKeyPressed('W')) 
			camPos += forward * freeCamSpeed;
		if (ofGetKeyPressed('s') || ofGetKeyPressed('S')) 
			camPos -= forward * freeCamSpeed;
		if (ofGetKeyPressed('a') || ofGetKeyPressed('A')) 
			camPos -= right * freeCamSpeed;
		if (ofGetKeyPressed('d') || ofGetKeyPressed('D'))
			camPos += right * freeCamSpeed;
		if (ofGetKeyPressed(' '))
			camPos += up * freeCamSpeed;
		if (ofGetKeyPressed('x') || ofGetKeyPressed('X'))
			camPos -= up * freeCamSpeed;

		freeCam.setPosition(camPos);

		if (teleportPointSelected && (ofGetKeyPressed('q') || ofGetKeyPressed('Q')))
		{
			glm::vec3 camOffset(0, 10, 10);
			freeCam.setPosition(teleportPoint + camOffset);
			freeCam.lookAt(teleportPoint);

			teleportPointSelected = false;
		}
	}
}
 
//--------------------------------------------------------------
void ofApp::update() 
{
	if (lander.landedOnPad) {
		if (thrustSFX.isPlaying()) {
			thrustSFX.stop();
		}
		return;
	}
	
	checkKeysPressed();
	float deltaTime = ofGetLastFrameTime(); // seconds
	lander.update(deltaTime);
	
	if (lander.isThrusting() && !lander.outOfFuel) {
		if (!thrustSFX.isPlaying()) {
			thrustSFX.play();
		}
	}
	else {
		if (thrustSFX.isPlaying()) {
			thrustSFX.stop();
		}
	}

	
	Box landerBox = lander.getIntersectionBounds();
	for (int i = 0; i < 3; i++) {
		bool isContactNow = landerBox.overlap(landingPadBoxes[i]);
		static bool wasContact[3] = { false,false,false };

		if (isContactNow && !wasContact[i]) {
			if (glm::length(lander.velocity) > lander.explosionVelocityThreshold) {
				lander.exploded = true;
				thrustSFX.stop();
				lander.explosionEmitter.position = lander.position;
				lander.explosionEmitter.start();
				lander.explosionEmitter.visible = false;
				explosionSFX.play();
				lander.fuel = 0;
				lander.outOfFuel = true;
				lander.velocity += glm::vec3(ofRandom(-720, 720), ofRandom(360, 480), ofRandom(-720, 720));
				lander.angularVelocity = ofRandom(-720, 720);
			}
			else {
				lander.landedOnPad = true;
				lander.landedPadIndex = i;
			}
		}
		wasContact[i] = isContactNow;
	}
	

	updateCameras();
	oldAGL = getAGL();
}

//--------------------------------------------------------------
void ofApp::draw() 
{
	backgroundImg.draw(0, 0, ofGetWidth(), ofGetHeight());
	ofEnableDepthTest();

	theCam->begin();
	ofPushMatrix();

	ofEnableLighting();              // shaded mode
	mars.drawFaces();
	ofMesh mesh;
	if (lander.loaded) 
	{
		lander.draw();

	}

	for (int i = 0; i < 3; i++) {
		landingPads[i].drawFaces();
	}

	// recursively draw octree
	ofDisableLighting();
	int level = 0;

	if (bDisplayLeafNodes) {
		octree.drawLeafNodes(octree.root);
    }
	else if (bDisplayOctree) {
		ofNoFill();
		ofSetColor(ofColor::white);
		octree.draw(numLevels, 0);
	}

	// if point selected, draw a sphere
	if (pointSelected && theCam == &freeCam) {
		ofVec3f p = octree.mesh.getVertex(selectedNode.points[0]);
		ofVec3f d = p - theCam->getPosition();
		ofSetColor(ofColor::lightGreen);
		ofDrawSphere(p, .02 * d.length());
	}

	ofPopMatrix();
	theCam->end();

	lander.leftEngineEmitter.loadVbo(ofFloatColor(0.76, 0.5, 0.1, 1.0));
	lander.rightEngineEmitter.loadVbo(ofFloatColor(0.76, 0.5, 0.1, 1.0));
	lander.hoverEmitter.loadVbo(ofFloatColor(0.2, 0.6, 1.0, 0.75));

	// begin drawing in the camera
	theCam->begin();

	glDepthMask(GL_FALSE);
	ofSetColor(255, 100, 90);
	// this makes everything look glowy :)
	ofEnableBlendMode(OF_BLENDMODE_ADD);
	ofEnablePointSprites();

	for (int i = 0; i < 3; i++)
	{
		glm::vec3 beamPos = beams[i].getPosition();

		float dist = glm::distance(glm::vec2(lander.position.x, lander.position.z),
			glm::vec2(beamPos.x, beamPos.z));

		float beamAlpha = 100;
		if (dist < 400.0f)
		{
			beamAlpha = beamAlpha * (dist / 400);

			if (beamAlpha < 1.0f)
				beamAlpha = 0;
		}
		else
		{
			beamAlpha = 100;
		}

		ofColor beamColor = ofColor::white;
		beamColor.a = beamAlpha;
		ofSetColor(beamColor);
		beams[i].draw();
	}

	shader.begin();

	shaderTexture.bind();
	lander.leftEngineEmitter.vbo.draw(GL_POINTS, 0, (int)lander.leftEngineEmitter.sys->particles.size());
	lander.rightEngineEmitter.vbo.draw(GL_POINTS, 0, (int)lander.rightEngineEmitter.sys->particles.size());
	lander.hoverEmitter.vbo.draw(GL_POINTS, 0, (int)lander.hoverEmitter.sys->particles.size());
	shaderTexture.unbind();

	if (lander.exploded) {
		lander.explosionEmitter.loadVbo(ofFloatColor(1, 0.4, 0.04, 0.8)); // fireball color
		shaderTexture.bind();
		lander.explosionEmitter.vbo.draw(GL_POINTS, 0, (int)lander.explosionEmitter.sys->particles.size());
		shaderTexture.unbind();
	}
	

	theCam->end();
	shader.end();
	ofDisableDepthTest();
	ofDisablePointSprites();
	ofDisableBlendMode();
	ofEnableAlphaBlending();

	// set back the depth mask
	glDepthMask(GL_TRUE);

	// draw screen data
	std::string frameRateStr = "Frame Rate: " + std::to_string(ofGetFrameRate());
	ofSetColor(ofColor::white);
	ofDrawBitmapString(frameRateStr, ofGetWindowWidth() - 170, 15);
	if (bShowAGL)
	{
		std::string aglStr = "AGL: " + std::to_string(oldAGL);
		ofDrawBitmapString(aglStr, 15, 15);
	}
	std::string onboardCamStr = "Onboard camera: 1";
	ofDrawBitmapString(onboardCamStr, ofGetWindowWidth() - 250, 50);

	std::string fixedCamStr = "Fixed camera: 2";
	ofDrawBitmapString(fixedCamStr, ofGetWindowWidth() - 250, 60);

	std::string freeCamStr = "Free camera: 3";
	ofDrawBitmapString(freeCamStr, ofGetWindowWidth() - 250, 70);
	std::string freeCamStr1 = "Free camera left: A";
	ofDrawBitmapString(freeCamStr1, ofGetWindowWidth() - 250, 80);
	std::string freeCamStr2 = "Free camera right: D";
	ofDrawBitmapString(freeCamStr2, ofGetWindowWidth() - 250, 90);
	std::string freeCamStr3 = "Free camera forward: W";
	ofDrawBitmapString(freeCamStr3, ofGetWindowWidth() - 250, 100);
	std::string freeCamStr4 = "Free camera back: S";
	ofDrawBitmapString(freeCamStr4, ofGetWindowWidth() - 250, 110);
	std::string freeCamStr5 = "Free camera rotate: Mouse";
	ofDrawBitmapString(freeCamStr5, ofGetWindowWidth() - 250, 120);
	std::string freeCamStr6 = "Free camera teleport: Click + q";
	ofDrawBitmapString(freeCamStr6, ofGetWindowWidth() - 250, 130);
	std::string freeCamStr7 = "Free camera Enable/Disable drag: E";
	ofDrawBitmapString(freeCamStr7, ofGetWindowWidth() - 250, 140);

	if (lander.exploded) {
		ofSetColor(ofColor::red);
		ofDrawBitmapString("CRASH! LANDER DESTROYED!", ofGetWidth() / 2 - 80, 60);
	}
	
	if (lander.landedOnPad) {
		ofSetColor(ofColor::lime);
		std::string msg = "SUCCESSFUL LANDING ON PAD #" + std::to_string(lander.landedPadIndex + 1) + "!";
		ofDrawBitmapString(msg, ofGetWidth() / 2 - 100, 40);
	}

	ofSetColor(ofColor::white);
	std::string fuelString = "Fuel: " + std::to_string((int)lander.fuel) + "s";
	ofDrawBitmapString(fuelString, 15, 35);

	if (lander.outOfFuel) {
		ofSetColor(ofColor::red);
		ofDrawBitmapString("OUT OF FUEL!", ofGetWidth() / 2 - 56, 100);
	}

	
}

void ofApp::keyPressed(int key) 
{
	switch (key)
	{
	case 'B':
	case 'b':
		bDisplayBBoxes = !bDisplayBBoxes;
		break;
	case 'F':
	case 'f':
		ofToggleFullscreen();
		break;
	case 'L':
	case 'l':
		bDisplayLeafNodes = !bDisplayLeafNodes;
		break;
	case 'O':
	case 'o':
		bDisplayOctree = !bDisplayOctree;
		break;
	case 'k':
		savePicture();
		break;
	case 't':
		setCameraTarget();
		break;
	case 'u':
		bShowAGL = !bShowAGL;
		break;
	case 'v':
		togglePointsDisplay();
		break;
	case 'V':
		break;
	case 'z':
		toggleWireframeMode();
		break;
	case OF_KEY_CONTROL:
		bCtrlKeyDown = true;
		break;
	case OF_KEY_SHIFT:
		break;
	case OF_KEY_DEL:
		break;
	default:
		break;
	}

	if (key == 'e' || key == 'E')
	{
		landerDraggable = !landerDraggable;

		std::cout << "Lander is now draggable: " << landerDraggable << " and bInDrag is: " << bInDrag << std::endl;
	}
}

void ofApp::toggleWireframeMode() {
	bWireframe = !bWireframe;
}

void ofApp::toggleSelectTerrain() {
	bTerrainSelected = !bTerrainSelected;
}

void ofApp::togglePointsDisplay() {
	bDisplayPoints = !bDisplayPoints;
}

void ofApp::keyReleased(int key) 
{
	switch (key)
	{
		case OF_KEY_CONTROL:
			bCtrlKeyDown = false;
			break;
		case OF_KEY_SHIFT:
			break;
		// sometimes keys would stick even when released
		case 'w':
		case 'W':
			keymap["w"] = false;
			break;
		case 'a':
		case 'A':
			keymap["a"] = false;
			break;
		case 's':
		case 'S':
			keymap["s"] = false;
			break;
		case 'd':
		case 'D':
			keymap["d"] = false;
			break;
		case ' ':
			keymap["space"] = false;
			break;
		case 'x':
		case 'X':
			keymap["x"] = false;
			break;
		case '1':
			theCam = &onboardCam;
			break;
		case '2':
			theCam = &fixedCam;
			break;
		case '3':
		{
			glm::vec3 oldPosition = theCam->getPosition();
			theCam = &freeCam;
			freeCam.setPosition(oldPosition);
			freeCam.lookAt(oldPosition + glm::vec3(0, 0, -1));
			freeCam.setTarget(freeCam);
			break;
		}
		default:
			break;
	}
}



//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

	
}


//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button) 
{
	// if rover is loaded, test for selection
	//
	if (lander.loaded)
	{
		glm::vec3 origin = theCam->getPosition();
		glm::vec3 mouseWorld = theCam->screenToWorld(glm::vec3(mouseX, mouseY, 0));
		glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);

		ofVec3f min = lander.getSceneMin() + lander.position;
		ofVec3f max = lander.getSceneMax() + lander.position;

		Box bounds = Box(glm::vec3(min.x, min.y, min.z), glm::vec3(max.x, max.y, max.z));
		bool hit = bounds.intersect(Ray(glm::vec3(origin.x, origin.y, origin.z), glm::vec3(mouseDir.x, mouseDir.y, mouseDir.z)), 0, 10000);
		if (hit && landerDraggable) {
			bLanderSelected = true;
			mouseDownPos = getMousePointOnPlane(lander.position, theCam->getZAxis());
			mouseLastPos = mouseDownPos;
			bInDrag = true;
		}
		else {
			bLanderSelected = false;
		}
	}

	if (theCam == &freeCam)
	{
		glm::vec3 p;

		if (raySelectWithOctree(p))
		{
			teleportPointSelected = true;
			teleportPoint = p;
		}
	}
	else
	{
		landerDraggable = false;
		teleportPointSelected = false;
	}
}

bool ofApp::raySelectWithOctree(glm::vec3&pointRet) {
	ofVec3f mouse(mouseX, mouseY);
	ofVec3f rayPoint = theCam->screenToWorld(mouse);
	ofVec3f rayDir = rayPoint - theCam->getPosition();
	rayDir.normalize();
	Ray ray = Ray(glm::vec3(rayPoint.x, rayPoint.y, rayPoint.z),
		glm::vec3(rayDir.x, rayDir.y, rayDir.z));

	pointSelected = octree.intersect(ray, octree.root, selectedNode);
	
	if (pointSelected) {
		pointRet = octree.mesh.getVertex(selectedNode.points[0]);
	}
	return pointSelected;
}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button) 
{
	if (bInDrag) 
	{
		glm::mat4 transform = lander.getTransform();

		lander.lastPos = lander.position;

		glm::vec3 mousePos = getMousePointOnPlane(lander.position, theCam->getZAxis());
		glm::vec3 delta = mousePos - mouseLastPos;
	
		lander.position += delta;
		mouseLastPos = mousePos;
		
		//lander.intersectTerrain(getIntersectionBounds(), octree);
	}
	else {
		glm::vec3 p;
		raySelectWithOctree(p);
	}
}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button) {
	bInDrag = false;
}



// Set the camera to use the selected point as it's new target
//  
void ofApp::setCameraTarget() {

}


//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}



//--------------------------------------------------------------
// setup basic ambient lighting in GL  (for now, enable just 1 light)
//
void ofApp::initLightingAndMaterials() {

	static float ambient[] =
	{ .5f, .5f, .5, 1.0f };
	static float diffuse[] =
	{ 1.0f, 1.0f, 1.0f, 1.0f };

	static float position[] =
	{5.0, 5.0, 5.0, 0.0 };

	static float lmodel_ambient[] =
	{ 1.0f, 1.0f, 1.0f, 1.0f };

	static float lmodel_twoside[] =
	{ GL_TRUE };


	glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
	glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT0, GL_POSITION, position);

	glLightfv(GL_LIGHT1, GL_AMBIENT, ambient);
	glLightfv(GL_LIGHT1, GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT1, GL_POSITION, position);


	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
	glLightModelfv(GL_LIGHT_MODEL_TWO_SIDE, lmodel_twoside);

	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
//	glEnable(GL_LIGHT1);
	glShadeModel(GL_SMOOTH);
} 

void ofApp::savePicture() {
	ofImage picture;
	picture.grabScreen(0, 0, ofGetWidth(), ofGetHeight());
	picture.save("screenshot.png");
	//cout << "picture saved" << endl;
}

//--------------------------------------------------------------
//
// support drag-and-drop of model (.obj) file loading.  when
// model is dropped in viewport, place origin under cursor
//
void ofApp::dragEvent2(ofDragInfo dragInfo) {

	glm::vec3 point;
	mouseIntersectPlane(glm::vec3(0, 0, 0), theCam->getZAxis(), point);
	if (lander.landerModel.loadModel(dragInfo.files[0])) {
		lander.landerModel.setScaleNormalization(false);
		//		lander.setScale(.1, .1, .1);
			//	lander.setPosition(point.x, point.y, point.z);
		lander.position = { 1, 1, 0 };

		lander.loaded = true;
		for (int i = 0; i < lander.landerModel.getMeshCount(); i++) {
			lander.bboxList.push_back(Octree::meshBounds(lander.landerModel.getMesh(i)));
		}

		//cout << "Mesh Count: " << lander.getMeshCount() << endl;
	}
	else; //cout << "Error: Can't load model" << dragInfo.files[0] << endl;
}

bool ofApp::mouseIntersectPlane(glm::vec3 planePoint, glm::vec3 planeNorm, glm::vec3& point) {
	glm::vec2 mouse(mouseX, mouseY);
	glm::vec3 rayPoint = theCam->screenToWorld(glm::vec3(mouseX, mouseY, 0));
	glm::vec3 rayDir = rayPoint - theCam->getPosition();
	rayDir = glm::normalize(rayDir);
	return (rayIntersectPlane(rayPoint, rayDir, planePoint, planeNorm, point));
}

//--------------------------------------------------------------
//
// support drag-and-drop of model (.obj) file loading.  when
// model is dropped in viewport, place origin under cursor
//
void ofApp::dragEvent(ofDragInfo dragInfo) {
	if (lander.landerModel.loadModel(dragInfo.files[0])) {
		lander.loaded = true;
		lander.landerModel.setScaleNormalization(false);
		lander.position = { 0, 0, 0 };
		//cout << "number of meshes: " << lander.getNumMeshes() << endl;
		lander.bboxList.clear();
		for (int i = 0; i < lander.landerModel.getMeshCount(); i++) {
			lander.bboxList.push_back(Octree::meshBounds(lander.landerModel.getMesh(i)));
		}

		//		lander.setRotation(1, 180, 1, 0, 0);

				// We want to drag and drop a 3D object in space so that the model appears 
				// under the mouse pointer where you drop it !
				//
				// Our strategy: intersect a plane parallel to the camera plane where the mouse drops the model
				// once we find the point of intersection, we can position the lander/lander
				// at that location.
				//

				// Setup our rays
				//
		glm::vec3 origin = theCam->getPosition();
		glm::vec3 camAxis = theCam->getZAxis();
		glm::vec3 mouseWorld = theCam->screenToWorld(glm::vec3(mouseX, mouseY, 0));
		glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
		float distance;

		bool hit = glm::intersectRayPlane(origin, mouseDir, glm::vec3(0, 0, 0), camAxis, distance);
		if (hit) {
			// find the point of intersection on the plane using the distance 
			// We use the parameteric line or vector representation of a line to compute
			//
			// p' = p + s * dir;
			//
			glm::vec3 intersectPoint = origin + distance * mouseDir;

			// Now position the lander's origin at that intersection point
			//
			glm::vec3 min = lander.getSceneMin();
			glm::vec3 max = lander.getSceneMax();
			float offset = (max.y - min.y) / 2.0;
			lander.position = { intersectPoint.x, intersectPoint.y - offset, intersectPoint.z };

			// set up bounding box for lander while we are at it
			//
			lander.landerBounds = Box(glm::vec3(min.x, min.y, min.z), glm::vec3(max.x, max.y, max.z));

			lander.center = (min + max) / 2;
		}
	}


}

//  intersect the mouse ray with the plane normal to the camera 
//  return intersection point.   (package code above into function)
//
glm::vec3 ofApp::getMousePointOnPlane(glm::vec3 planePt, glm::vec3 planeNorm) {
	// Setup our rays
	//
	glm::vec3 origin = theCam->getPosition();
	glm::vec3 camAxis = theCam->getZAxis();
	glm::vec3 mouseWorld = theCam->screenToWorld(glm::vec3(mouseX, mouseY, 0));
	glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
	float distance;

	bool hit = glm::intersectRayPlane(origin, mouseDir, planePt, planeNorm, distance);

	if (hit) {
		// find the point of intersection on the plane using the distance 
		// We use the parameteric line or vector representation of a line to compute
		//
		// p' = p + s * dir;
		//
		glm::vec3 intersectPoint = origin + distance * mouseDir;

		return intersectPoint;
	}
	else return glm::vec3(0, 0, 0);
}
