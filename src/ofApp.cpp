
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

	// setup rudimentary lighting 
	initLightingAndMaterials();

	mars.loadModel("geo/terrain.obj");
	mars.setScaleNormalization(false);

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
	
	testBox = Box(Vector3(3, 3, 0), Vector3(5, 5, 2));

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

	landerLight.setSpotlight();                    
	landerLight.setSpotlightCutOff(100);          
	landerLight.setSpotConcentration(25); // make light a little more narrow        
	landerLight.setDiffuseColor(ofColor::white);    
	landerLight.setSpecularColor(ofColor::white);
	landerLight.setScale(0.25);
	landerLight.enable();

	landerLightFront.setSpotlight();
	landerLightFront.setSpotlightCutOff(100);
	landerLightFront.setSpotConcentration(25);   
	landerLightFront.setDiffuseColor(ofColor::white);
	landerLightFront.setSpecularColor(ofColor::white);
	landerLightFront.setScale(0.25);
	landerLightFront.enable();

	theCam = &fixedCam;
	updateCameras();
}

void ofApp::updateCameras()
{
	glm::mat4 transform = lander.getTransform();

	glm::vec3 offsetO = glm::vec3(0, 0, -5);
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
}

float ofApp::getAGL()
{
	float agl = FLT_MAX;

	Vector3 landerPosV3(lander.position.x, lander.position.y, lander.position.y);
	Ray ray(landerPosV3, Vector3(0, -1, 0));

	TreeNode intersectedNode;
	bool intersected = octree.intersect(ray, octree.root, intersectedNode);

	if (intersected)
	{
		glm::vec3 pointRet = octree.mesh.getVertex(intersectedNode.points[0]);
		glm::vec3 landerPos(lander.position.x, lander.position.y, lander.position.y);

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
	}
}
 
//--------------------------------------------------------------
void ofApp::update() 
{
	checkKeysPressed();
	lander.update();
	updateCameras();
	oldAGL = getAGL();
}
//--------------------------------------------------------------
void ofApp::draw() 
{
	ofBackground(ofColor::black);

	theCam->begin();
	ofPushMatrix();

	ofEnableLighting();              // shaded mode
	mars.drawFaces();
	ofMesh mesh;
	if (lander.loaded) 
	{
		glm::mat4 transform = lander.getTransform();
		// make landerLight point down on the lander
		glm::vec3 center = glm::vec3(transform * glm::vec4(lander.center, 1.0f));
		glm::vec3 offset = glm::vec3(0, 10, 5);
		glm::vec3 lightPos = center + offset;
		landerLight.setPosition(lightPos);
		landerLight.lookAt(center);

		// add front light to see in front
		glm::vec3 centerF = glm::vec3(transform * glm::vec4(lander.center, 1.0f));
		glm::vec3 offsetF = glm::vec3(0, 10, 5);
		glm::vec3 lightPosF = centerF + offsetF;
		landerLightFront.setPosition(lightPosF);
		glm::vec3 forwardO = glm::normalize(glm::vec3(transform * glm::vec4(0, 0, -1, 0)));
		landerLightFront.lookAt(centerF + forwardO * 10.0f);

		lander.draw();

		float range = 100.0f;
		glm::vec3 pos = lander.position;
		Vector3 min(pos.x - range / 2, pos.y - range / 2, pos.z - range / 2);
		Vector3 max(pos.x + range / 2, pos.y + range / 2, pos.z + range / 2);
		Box rangeBox(min, max);

		std::vector<Box> nearbyBoxes;
		octree.intersect(rangeBox, octree.root, nearbyBoxes);

		for (const Box& box : nearbyBoxes)
		{
			ofSetColor(ofColor::orange);
			Octree::drawBox(box);
		}

		for (int i = 0; i < lander.colBoxList.size(); i++)
		{
			ofSetColor(ofColor::red);
			Octree::drawBox(lander.colBoxList.at(i));
		}
	}

	// highlight selected point (draw sphere around selected point)
	if (bPointSelected && theCam == &freeCam) {
		ofSetColor(ofColor::blue);
		ofDrawSphere(selectedPoint, .1);
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
	if (pointSelected) {
		ofVec3f p = octree.mesh.getVertex(selectedNode.points[0]);
		ofVec3f d = p - theCam->getPosition();
		ofSetColor(ofColor::lightGreen);
		ofDrawSphere(p, .02 * d.length());
	}

	ofPopMatrix();
	theCam->end();

	lander.engineEmitter.loadVbo(ofFloatColor(0.76, 0.5, 0.1, 1.0));
	lander.leftWingEmitter.loadVbo(ofFloatColor(0.2, 0.6, 1.0, 0.75));
	lander.rightWingEmitter.loadVbo(ofFloatColor(0.4, 0.8, 1.0, 0.75));

	glDepthMask(GL_FALSE);
	ofSetColor(255, 100, 90);
	// this makes everything look glowy :)
	ofEnableBlendMode(OF_BLENDMODE_ADD);
	ofEnablePointSprites();

	// begin drawing in the camera
	shader.begin();
	theCam->begin();

	shaderTexture.bind();
	lander.engineEmitter.vbo.draw(GL_POINTS, 0, (int)lander.engineEmitter.sys->particles.size());
	lander.leftWingEmitter.vbo.draw(GL_POINTS, 0, (int)lander.leftWingEmitter.sys->particles.size());
	lander.rightWingEmitter.vbo.draw(GL_POINTS, 0, (int)lander.rightWingEmitter.sys->particles.size());
	shaderTexture.unbind();

	theCam->end();
	shader.end();

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
		ofDrawBitmapString(lander.position, 15, 15);
	}
	std::string onboardCamStr = "Onboard camera (fps): Press 1";
	ofDrawBitmapString(onboardCamStr, ofGetWindowWidth() - 300, 50);
	std::string fixedCamStr = "Fixed camera: Press 2";
	ofDrawBitmapString(fixedCamStr, ofGetWindowWidth() - 300, 75);
	std::string freeCamStr = "Free camera: Press 3";
	ofDrawBitmapString(freeCamStr, ofGetWindowWidth() - 300, 100);
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

		Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
		bool hit = bounds.intersect(Ray(Vector3(origin.x, origin.y, origin.z), Vector3(mouseDir.x, mouseDir.y, mouseDir.z)), 0, 10000);
		if (hit) {
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
		ofVec3f p;

		if (raySelectWithOctree(p))
		{
			glm::vec3 camOffset(0, 10, 10); 
			freeCam.setPosition(p + camOffset);
			freeCam.lookAt(p);
		}
	}
}

bool ofApp::raySelectWithOctree(ofVec3f &pointRet) {
	ofVec3f mouse(mouseX, mouseY);
	ofVec3f rayPoint = theCam->screenToWorld(mouse);
	ofVec3f rayDir = rayPoint - theCam->getPosition();
	rayDir.normalize();
	Ray ray = Ray(Vector3(rayPoint.x, rayPoint.y, rayPoint.z),
		Vector3(rayDir.x, rayDir.y, rayDir.z));

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
		ofVec3f p;
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

	ofVec3f point;
	mouseIntersectPlane(ofVec3f(0, 0, 0), theCam->getZAxis(), point);
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

bool ofApp::mouseIntersectPlane(ofVec3f planePoint, ofVec3f planeNorm, ofVec3f &point) {
	ofVec2f mouse(mouseX, mouseY);
	ofVec3f rayPoint = theCam->screenToWorld(glm::vec3(mouseX, mouseY, 0));
	ofVec3f rayDir = rayPoint - theCam->getPosition();
	rayDir.normalize();
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
			lander.landerBounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));

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
