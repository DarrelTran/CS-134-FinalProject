
//--------------------------------------------------------------
//
//  Kevin M. Smith
//
//  Simple Octree Implementation 11/10/2020
// 
//  Copyright (c) by Kevin M. Smith
//  Copying or use without permission is prohibited by law. 
//


#include "Octree.h"
 


//draw a box from a "Box" class  
//
void Octree::drawBox(const Box &box) {
	glm::vec3 min = box.parameters[0];
	glm::vec3 max = box.parameters[1];
	glm::vec3 size = max - min;
	glm::vec3 center = size / 2 + min;
	glm::vec3 p = glm::vec3(center.x, center.y, center.z);
	float w = size.x;
	float h = size.y;
	float d = size.z;
	ofDrawBox(p, w, h, d);
}

// return a Mesh Bounding Box for the entire Mesh
//
Box Octree::meshBounds(const ofMesh & mesh) {
	int n = mesh.getNumVertices();
	ofVec3f v = mesh.getVertex(0);
	ofVec3f max = v;
	ofVec3f min = v;
	for (int i = 1; i < n; i++) {
		ofVec3f v = mesh.getVertex(i);

		if (v.x > max.x) max.x = v.x;
		else if (v.x < min.x) min.x = v.x;

		if (v.y > max.y) max.y = v.y;
		else if (v.y < min.y) min.y = v.y;

		if (v.z > max.z) max.z = v.z;
		else if (v.z < min.z) min.z = v.z;
	}
	//cout << "vertices: " << n << endl;
//	cout << "min: " << min << "max: " << max << endl;
	return Box(glm::vec3(min.x, min.y, min.z), glm::vec3(max.x, max.y, max.z));
}

// getMeshPointsInBox:  return an array of indices to points in mesh that are contained 
//                      inside the Box.  Return count of points found;
//
int Octree::getMeshPointsInBox(const ofMesh & mesh, const vector<int>& points,
	Box & box, vector<int> & pointsRtn)
{
	int count = 0;
	for (int i = 0; i < points.size(); i++) {
		ofVec3f v = mesh.getVertex(points[i]);
		if (box.inside(glm::vec3(v.x, v.y, v.z))) {
			count++;
			pointsRtn.push_back(points[i]);
		}
	}
	return count;
}

// getMeshFacesInBox:  return an array of indices to Faces in mesh that are contained 
//                      inside the Box.  Return count of faces found;
//
int Octree::getMeshFacesInBox(const ofMesh & mesh, const vector<int>& faces,
	Box & box, vector<int> & facesRtn)
{
	int count = 0;
	for (int i = 0; i < faces.size(); i++) {
		ofMeshFace face = mesh.getFace(faces[i]);
		glm::vec3 v[3];
		v[0] = face.getVertex(0);
		v[1] = face.getVertex(1);
		v[2] = face.getVertex(2);
		glm::vec3 p[3];
		p[0] = glm::vec3(v[0].x, v[0].y, v[0].z);
		p[1] = glm::vec3(v[1].x, v[1].y, v[1].z);
		p[2] = glm::vec3(v[2].x, v[2].y, v[2].z);
		if (box.inside(p,3)) {
			count++;
			facesRtn.push_back(faces[i]);
		}
	}
	return count;
}

//  Subdivide a Box into eight(8) equal size boxes, return them in boxList;
//
void Octree::subDivideBox8(const Box &box, vector<Box> & boxList) {
	glm::vec3 min = box.parameters[0];
	glm::vec3 max = box.parameters[1];

	glm::vec3 size = max - min;
	glm::vec3 center = size / 2 + min;

	float xdist = (max.x - min.x) / 2;
	float ydist = (max.y - min.y) / 2;
	float zdist = (max.z - min.z) / 2;
	glm::vec3 h = glm::vec3(0, ydist, 0);

	//  generate ground floor
	//
	Box b[8];
	b[0] = Box(min, center);
	b[1] = Box(b[0].min() + glm::vec3(xdist, 0, 0), b[0].max() + glm::vec3(xdist, 0, 0));
	b[2] = Box(b[1].min() + glm::vec3(0, 0, zdist), b[1].max() + glm::vec3(0, 0, zdist));
	b[3] = Box(b[2].min() + glm::vec3(-xdist, 0, 0), b[2].max() + glm::vec3(-xdist, 0, 0));

	boxList.clear();
	for (int i = 0; i < 4; i++)
		boxList.push_back(b[i]);

	// generate second story
	//
	for (int i = 4; i < 8; i++) {
		b[i] = Box(b[i - 4].min() + h, b[i - 4].max() + h);
		boxList.push_back(b[i]);
	}
}

void Octree::create(const ofMesh & geo, int numLevels) {
	// initialize octree structure
	//
	
	mesh = geo;
	root.box = meshBounds(mesh);
	if (!bUseFaces) {
		for (int i = 0; i < mesh.getNumVertices(); i++) {
			root.points.push_back(i);
		}
	}
	else {
		// need to load face vertices here
		//

	}

	// recursively buid octree
	//
    subdivide(mesh, root, numLevels, 1);
}


//
// subdivide:  recursive function to perform octree subdivision on a mesh
//
//  subdivide(node) algorithm:
//     1) subdivide box in node into 8 equal side boxes - see helper function subDivideBox8().
//     2) For each child box
//            sort point data into each box  (see helper function getMeshFacesInBox())
//        if a child box contains at list 1 point
//            add child to tree
//            if child is not a leaf node (contains more than 1 point)
//               recursively call subdivide(child)
//         
//      
             
void Octree::subdivide(const ofMesh& mesh, TreeNode& node, int numLevels, int level) {
	if (level >= numLevels) return;

	vector<Box> boxList;
	subDivideBox8(node.box, boxList);

	for (int i = 0; i < boxList.size(); i++) 
	{
		TreeNode child;
		child.box = boxList[i];

		vector<int> pointsInChild;
		getMeshPointsInBox(mesh, node.points, child.box, pointsInChild);

		if (!pointsInChild.empty())
		{
			child.points = pointsInChild;
			node.children.push_back(child);

			glm::vec3 sz = child.box.max() - child.box.min();
			float maxBoxSize = 10.0f;

			bool isTooLarge = (sz.x > maxBoxSize || sz.z > maxBoxSize);
			bool hasMultiplePoints = child.points.size() > 1;

			if (hasMultiplePoints || isTooLarge)
			{
				subdivide(mesh, node.children.back(), numLevels, level + 1);
			} 
		}
	}
}

// Implement functions below for Homework project
//

bool Octree::intersect(const Ray& ray, const TreeNode& node, TreeNode& nodeRtn) {
	bool intersects = false;

	if (!node.box.intersect(ray, 0, FLT_MAX))
	{
		return intersects;
	}

	if (node.children.empty()) 
	{
		nodeRtn = node;
		intersects = true;
	}
	else 
	{
		for (int i = 0; i < node.children.size(); i++) 
		{
			intersects = intersect(ray, node.children.at(i), nodeRtn);
			if (intersects)
			{
				break;
			}
		}
	}

	return intersects;
}

bool Octree::intersect(const Box &box, TreeNode & node, vector<Box> & boxListRtn) {
	bool intersects = false;

	if (!box.overlap(node.box))
	{
		return intersects;
	}

	if (node.children.empty())
	{
		boxListRtn.push_back(node.box);
		intersects = true;
	}
	else
	{
		for (int i = 0; i < node.children.size(); i++)
		{
			intersects = intersect(box, node.children.at(i), boxListRtn);
		}
	}

	return intersects;
}

void Octree::draw(TreeNode& node, int numLevels, int level) {
	if (level >= numLevels) return;

	if (level < colors.size()) 
	{ 
		ofSetColor(colors[level]);
	}
	else 
	{
		ofSetColor(ofColor::white);
	}

	drawBox(node.box);

	for (int i = 0; i < node.children.size(); i++) 
	{
		draw(node.children[i], numLevels, level + 1);
	}
}

// Optional
//
void Octree::drawLeafNodes(TreeNode & node) {
	if (node.children.empty())
	{
		drawBox(node.box);
		return;
	}
	for (int i = 0; i < node.children.size(); i++) {
		drawLeafNodes(node.children.at(i));
	}
}