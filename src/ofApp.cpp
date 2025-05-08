
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
//	ofSetWindowShape(1024, 768);

	cam.setDistance(10);
	cam.setNearClip(.1);
	cam.setFov(65.5);   // approx equivalent to 28mm in 35mm format
	cam.disableMouseInput();
	cam.setPosition({0, 10, 0});
	cam.lookAt(glm::vec3(0, 0, 0));

	ofSetVerticalSync(true);
	ofEnableSmoothing();
	ofEnableDepthTest();

	// setup rudimentary lighting 
	//
	initLightingAndMaterials();

	//mars.loadModel("geo/mars-low-5x-v2.obj");
	mars.loadModel("geo/mars-low.obj");
	mars.setScaleNormalization(false);

	// create sliders for testing
	//
	gui.setup();
	gui.add(numLevels.setup("Number of Octree Levels", 1, 1, maxLevels));
	gui.add(timeOn.setup("Time", false));
	bHide = false;

	//  Create Octree for testing.
	//
	
	// max 20
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

	float temp = static_cast<float>(ofGetElapsedTimef() * 1000.0f);
	octree.create(mars.getMesh(0), maxLevels);
	time = (static_cast<float>(ofGetElapsedTimef() * 1000.0f) - temp);
	octree.colors = colors;
	
	//cout << "Number of Verts: " << mars.getMesh(0).getNumVertices() << endl;

	testBox = Box(Vector3(3, 3, 0), Vector3(5, 5, 2));

	keymap["w"] = false;
	keymap["a"] = false;
	keymap["s"] = false;
	keymap["d"] = false;
	keymap["space"] = false;
	keymap["lcntrl"] = false;

	lander.theOctree = &octree;
	lander.theKeymap = &keymap;
}
 
//--------------------------------------------------------------
// incrementally update scene (animation)
//
void ofApp::update() 
{
	lander.update();	
}
//--------------------------------------------------------------
void ofApp::draw() 
{

	ofBackground(ofColor::black);

	glDepthMask(false);
	if (!bHide) gui.draw();
	glDepthMask(true);

	cam.begin();
	ofPushMatrix();
	if (bWireframe) {                    // wireframe mode  (include axis)
		ofDisableLighting();
		ofSetColor(ofColor::slateGray);
		mars.drawWireframe();
		if (lander.loaded) {
			lander.landerModel.drawWireframe();
			if (!bTerrainSelected) drawAxis(lander.landerModel.getPosition());
		}
		if (bTerrainSelected) drawAxis(ofVec3f(0, 0, 0));
	}
	else {
		ofEnableLighting();              // shaded mode
		mars.drawFaces();
		ofMesh mesh;
		if (lander.loaded) {
			lander.draw();
			//lander.landerModel.drawFaces();
			if (!bTerrainSelected) drawAxis(lander.position);
			if (bDisplayBBoxes) {
				ofNoFill();
				ofSetColor(ofColor::white);
				for (int i = 0; i < lander.landerModel.getNumMeshes(); i++) {
					ofPushMatrix();
					ofMultMatrix(lander.landerModel.getModelMatrix());
					ofRotate(-90, 1, 0, 0);
					Octree::drawBox(lander.bboxList[i]);
					ofPopMatrix();
				}
			}

			if (bLanderSelected) {

				ofPushMatrix();
				ofMultMatrix(lander.getTransform());

				ofVec3f min = lander.getSceneMin();
				ofVec3f max = lander.getSceneMax();

				Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
				ofSetColor(ofColor::white, 128);
				Octree::drawBox(bounds);

				ofPopMatrix();

				// draw colliding boxes
				//
				ofSetColor(ofColor::red);
				for (int i = 0; i < lander.colBoxList.size(); i++) {
					Octree::drawBox(lander.colBoxList[i]);
				}
				ofSetColor(ofColor::white);
			}
		}
	}
	if (bTerrainSelected) drawAxis(ofVec3f(0, 0, 0));



	if (bDisplayPoints) {                // display points as an option    
		glPointSize(3);
		ofSetColor(ofColor::green);
		mars.drawVertices();
	}

	// highlight selected point (draw sphere around selected point)
	//
	if (bPointSelected) {
		ofSetColor(ofColor::blue);
		ofDrawSphere(selectedPoint, .1);
	}


	// recursively draw octree
	//
	ofDisableLighting();
	int level = 0;
	//	ofNoFill();

	if (bDisplayLeafNodes) {
		octree.drawLeafNodes(octree.root);
		//cout << "num leaf: " << octree.numLeaf << endl;
    }
	else if (bDisplayOctree) {
		ofNoFill();
		ofSetColor(ofColor::white);
		octree.draw(numLevels, 0);
	}

	// if point selected, draw a sphere
	//
	if (pointSelected) {
		ofVec3f p = octree.mesh.getVertex(selectedNode.points[0]);
		ofVec3f d = p - cam.getPosition();
		ofSetColor(ofColor::lightGreen);
		ofDrawSphere(p, .02 * d.length());
	}

	ofPopMatrix();
	cam.end();
}


// 
// Draw an XYZ axis in RGB at world (0,0,0) for reference.
//
void ofApp::drawAxis(ofVec3f location) {

	ofPushMatrix();
	ofTranslate(location);

	ofSetLineWidth(1.0);

	// X Axis
	ofSetColor(ofColor(255, 0, 0));
	ofDrawLine(ofPoint(0, 0, 0), ofPoint(1, 0, 0));
	

	// Y Axis
	ofSetColor(ofColor(0, 255, 0));
	ofDrawLine(ofPoint(0, 0, 0), ofPoint(0, 1, 0));

	// Z Axis
	ofSetColor(ofColor(0, 0, 255));
	ofDrawLine(ofPoint(0, 0, 0), ofPoint(0, 0, 1));

	ofPopMatrix();
}


void ofApp::keyPressed(int key) 
{
	switch (key)
	{
	case 'B':
	case 'b':
		bDisplayBBoxes = !bDisplayBBoxes;
		break;
	case 'C':
	case 'c':
		if (cam.getMouseInputEnabled()) cam.disableMouseInput();
		else cam.enableMouseInput();
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
	case 'r':
		cam.reset();
		break;
	case 'k':
		savePicture();
		break;
	case 't':
		setCameraTarget();
		break;
	case 'u':
		break;
	case 'v':
		togglePointsDisplay();
		break;
	case 'V':
		break;
	case 'z':
		toggleWireframeMode();
		break;
	case OF_KEY_ALT:
		cam.enableMouseInput();
		bAltKeyDown = true;
		break;
	case OF_KEY_CONTROL:
		bCtrlKeyDown = true;
		break;
	case OF_KEY_SHIFT:
		break;
	case OF_KEY_DEL:
		break;
	case 'w':
	case 'W':
		keymap["w"] = true;
		break;
	case 'a':
	case 'A':
		keymap["a"] = true;
		break;
	case 's':
	case 'S':
		keymap["s"] = true;
		break;
	case 'd':
	case 'D':
		keymap["d"] = true;
		break;
	case ' ':
		keymap["space"] = true;
		break;
	case OF_KEY_LEFT_CONTROL:
		keymap["lcntrl"] = true;
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
	case OF_KEY_ALT:
		cam.disableMouseInput();
		bAltKeyDown = false;
		break;
	case OF_KEY_CONTROL:
		bCtrlKeyDown = false;
		break;
	case OF_KEY_SHIFT:
		break;
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
	case OF_KEY_LEFT_CONTROL:
		keymap["lcntrl"] = false;
		break;
	default:
		break;
	}
}



//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

	
}


//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button) {

	// if moving camera, don't allow mouse interaction
	//
	if (cam.getMouseInputEnabled()) return;

	// if moving camera, don't allow mouse interaction
//
	if (cam.getMouseInputEnabled()) return;

	// if rover is loaded, test for selection
	//
	if (lander.loaded) {
		glm::vec3 origin = cam.getPosition();
		glm::vec3 mouseWorld = cam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
		glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);

		ofVec3f min = lander.getSceneMin() + lander.position;
		ofVec3f max = lander.getSceneMax() + lander.position;

		Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
		bool hit = bounds.intersect(Ray(Vector3(origin.x, origin.y, origin.z), Vector3(mouseDir.x, mouseDir.y, mouseDir.z)), 0, 10000);
		if (hit) {
			bLanderSelected = true;
			mouseDownPos = getMousePointOnPlane(lander.position, cam.getZAxis());
			mouseLastPos = mouseDownPos;
			bInDrag = true;
		}
		else {
			bLanderSelected = false;
		}
	}
	else {
		ofVec3f p;
		
		raySelectWithOctree(p);
	}
}

bool ofApp::raySelectWithOctree(ofVec3f &pointRet) {
	ofVec3f mouse(mouseX, mouseY);
	ofVec3f rayPoint = cam.screenToWorld(mouse);
	ofVec3f rayDir = rayPoint - cam.getPosition();
	rayDir.normalize();
	Ray ray = Ray(Vector3(rayPoint.x, rayPoint.y, rayPoint.z),
		Vector3(rayDir.x, rayDir.y, rayDir.z));

	float temp = static_cast<float>(ofGetElapsedTimef() * 1000.0f);
	pointSelected = octree.intersect(ray, octree.root, selectedNode);
	time = (static_cast<float>(ofGetElapsedTimef() * 1000.0f) - temp);
	
	if (pointSelected) {
		pointRet = octree.mesh.getVertex(selectedNode.points[0]);
	}
	return pointSelected;
}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button) {

	// if moving camera, don't allow mouse interaction
	//
	if (cam.getMouseInputEnabled()) return;

	if (bInDrag) {
		glm::mat4 transform = lander.getTransform();

		lander.lastPos = lander.position;

		glm::vec3 mousePos = getMousePointOnPlane(lander.position, cam.getZAxis());
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
	mouseIntersectPlane(ofVec3f(0, 0, 0), cam.getZAxis(), point);
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
	ofVec3f rayPoint = cam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
	ofVec3f rayDir = rayPoint - cam.getPosition();
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
		glm::vec3 origin = cam.getPosition();
		glm::vec3 camAxis = cam.getZAxis();
		glm::vec3 mouseWorld = cam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
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
	glm::vec3 origin = cam.getPosition();
	glm::vec3 camAxis = cam.getZAxis();
	glm::vec3 mouseWorld = cam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
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
