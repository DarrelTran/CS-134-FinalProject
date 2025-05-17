//Maya ASCII 2025ff03 scene
//Name: spaceship2.ma
//Last modified: Fri, May 16, 2025 05:39:08 PM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "aiOptions" -nodeType "aiImagerDenoiserOidn" "mtoa" "5.4.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202409190603-cbdc5a7e54";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "DFA2D6DF-44FB-BEC7-05AB-CA9B9F9334C8";
createNode transform -s -n "persp";
	rename -uid "8E1DCB09-48CC-2332-05F5-01874DD94BAA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.751047772287766 2.3284659254018507 -7.868017224778602 ;
	setAttr ".r" -type "double3" -18.338352724031012 -1998.599999999441 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "62DD68D2-441D-EA16-3990-65BE92B83EAB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 6.2798537047766505;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "67D74B3E-499D-3C43-9C6C-B7909588652F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "74C607A2-438E-18BB-A14D-57A31A35A306";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E5F24666-4F53-F9CA-B681-05AF3D7099C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F18320AE-4CFB-CF0E-7DF1-1FABC70BB358";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "92AD0FFF-4BAD-F7A4-D77B-A3ADA4F1C5DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8E8DE12A-4CB3-D90B-ABA5-73810D96C18D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "frontBodyCube";
	rename -uid "538D8B35-4E20-72E1-E3DD-CE8FF576F678";
	setAttr ".t" -type "double3" 0 0 0.79283923727583705 ;
createNode mesh -n "frontBodyCubeShape" -p "frontBodyCube";
	rename -uid "85C6235A-482B-24E5-58E1-0582847F16BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67499995231628418 0.05000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[2]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[7]" -type "float3" -0.096786849 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.091253422 0 0 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[13]" -type "float3" -0.096786849 0 0 ;
	setAttr ".pt[16]" -type "float3" 0.091253422 0 0 ;
	setAttr ".pt[17]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[18]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[19]" -type "float3" -0.096786849 0 0 ;
	setAttr ".pt[22]" -type "float3" 0.091253422 0 0 ;
	setAttr ".pt[23]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[24]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[25]" -type "float3" -0.096786849 0 0 ;
	setAttr ".pt[28]" -type "float3" 0.091253422 0 0 ;
	setAttr ".pt[29]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[30]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[32]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[33]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[35]" -type "float3" 0 0 0.27003804 ;
	setAttr ".pt[42]" -type "float3" 0 0.16761748 0 ;
	setAttr ".pt[43]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[46]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[47]" -type "float3" 0 0.16761748 0 ;
	setAttr ".pt[48]" -type "float3" 0 0.16761748 0 ;
	setAttr ".pt[49]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[52]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[53]" -type "float3" 0 0.16761748 0 ;
	setAttr ".pt[54]" -type "float3" 0 0.16761748 0 ;
	setAttr ".pt[55]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[58]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[59]" -type "float3" 0 0.16761748 0 ;
	setAttr ".pt[60]" -type "float3" 0 0.1676175 0 ;
	setAttr ".pt[61]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[64]" -type "float3" 0 0.16761751 0 ;
	setAttr ".pt[65]" -type "float3" 0 0.1676175 0 ;
createNode transform -n "wingCube1";
	rename -uid "FBA57E9A-4E96-D760-239B-81BED6C0EB16";
	setAttr ".t" -type "double3" 0.86963161860547533 0 2.7555162232991348 ;
createNode mesh -n "wingCubeShape1" -p "wingCube1";
	rename -uid "1D783F99-433B-EBA0-27BF-1388D09DD326";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 76 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[2]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[4]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[5]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[11]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[17]" -type "float3" 0.052308314 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.052308314 0 0 ;
	setAttr ".pt[29]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[34]" -type "float3" 0 -2.9802322e-08 -0.1128633 ;
	setAttr ".pt[35]" -type "float3" 0.038712576 -0.2005689 0 ;
	setAttr ".pt[41]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[47]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[53]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[59]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[60]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[61]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[62]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[63]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[64]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[65]" -type "float3" 0.03871258 -0.20056896 -2.2351742e-08 ;
	setAttr ".pt[66]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[67]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[68]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[69]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[70]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[71]" -type "float3" 0.040230636 -1.4901161e-08 -2.2351742e-08 ;
	setAttr ".pt[72]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[73]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[74]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[75]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[76]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[77]" -type "float3" 0.35427704 0 -2.2351742e-08 ;
	setAttr ".pt[78]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[79]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[80]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[81]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[82]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[83]" -type "float3" 0.35427704 0 -2.2351742e-08 ;
	setAttr ".pt[84]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[85]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[86]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[87]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[88]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[89]" -type "float3" 0.040230636 0 -2.2351742e-08 ;
	setAttr ".pt[90]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[91]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[92]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[93]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[94]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[95]" -type "float3" 0.036598358 0.19266795 -2.2351742e-08 ;
	setAttr ".pt[101]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[107]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[113]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[119]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[120]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[121]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[122]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[123]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[124]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[125]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[126]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[127]" -type "float3" 0.24636832 0 0 ;
	setAttr ".pt[128]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[129]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[130]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[131]" -type "float3" 0.24636832 0 0 ;
	setAttr ".pt[132]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[133]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[134]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[135]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
createNode transform -n "wingDetailCube";
	rename -uid "E9831865-4DDC-FD63-8904-56995937CDD7";
	setAttr ".t" -type "double3" 1.5985468834877097 0 1.0340092738286506 ;
createNode mesh -n "wingDetailCubeShape" -p "wingDetailCube";
	rename -uid "6B67A8F7-4AC6-C142-D7C0-0593DED842D1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40000000596046448 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[3]" -type "float3" -0.096574597 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.19761729 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.29603788 0 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[9]" -type "float3" -0.096574597 0 0 ;
	setAttr ".pt[10]" -type "float3" -0.19761729 0 0 ;
	setAttr ".pt[11]" -type "float3" -0.29603788 0 0 ;
	setAttr ".pt[16]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[17]" -type "float3" -0.19946326 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.19946326 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.098420613 0 0 ;
	setAttr ".pt[37]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.052639201 ;
	setAttr ".pt[38]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.10229667 ;
	setAttr ".pt[39]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.15007024 ;
	setAttr ".pt[40]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.18757029 ;
	setAttr ".pt[41]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.22451162 ;
	setAttr ".pt[43]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.052639201 ;
	setAttr ".pt[44]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.10229667 ;
	setAttr ".pt[45]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.15007024 ;
	setAttr ".pt[46]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.18757029 ;
	setAttr ".pt[47]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.22451162 ;
	setAttr ".pt[59]" -type "float3" -0.098420613 0 0 ;
	setAttr ".pt[64]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.19946326 0 0 ;
	setAttr ".pt[70]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[71]" -type "float3" -0.19946326 0 0 ;
createNode transform -n "middleBodyCube";
	rename -uid "CF44A41F-46F6-16CA-61B4-B1B79BF2456C";
	setAttr ".t" -type "double3" 0 0 -0.95410682101495592 ;
createNode mesh -n "middleBodyCubeShape" -p "middleBodyCube";
	rename -uid "416A6C5C-46C3-D38A-433E-01866494821A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6875 0.3125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[10:35]" -type "float3"  0 0.0073437672 0 0 0.0073437672 
		0 -0.3031041 0.11172641 0 0.29948997 0.11172642 1.3969839e-09 -0.47060221 0.26668161 
		0 0.471001 0.26668161 0 -0.47060221 0 0 0.471001 0 0 -0.47060221 0 0 0.471001 0 0 
		-0.47060221 0 0 0.471001 0 0 -0.47060221 0 0 0.471001 0 0 -0.47060221 0 0 0.471001 
		0 0 -0.3031041 0 0 0.29949009 0 0 0.29949009 0 0 0.29949009 0 0 0.29949009 0 0 0.29949009 
		0 0 -0.3031041 0 0 -0.3031041 0 0 -0.3031041 0 0 -0.3031041 0 0;
createNode transform -n "commandBlock";
	rename -uid "4E083D88-4005-46CF-0817-6EBD0BB3BD72";
	setAttr ".t" -type "double3" 0 1.1255109083614327 -2.8831439174980908 ;
	setAttr ".s" -type "double3" 1 0.25 1 ;
createNode mesh -n "commandBlockShape" -p "commandBlock";
	rename -uid "537FC53F-4031-5B9E-D7EC-269775C2D9D3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42500001192092896 0.60000008344650269 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt";
	setAttr ".pt[42]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".pt[43]" -type "float3" 2.9802322e-08 0.0092869559 0 ;
	setAttr ".pt[44]" -type "float3" 0 0.0032460056 0 ;
	setAttr ".pt[46]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[47]" -type "float3" 1.4901161e-08 0.0055206325 0 ;
	setAttr ".pt[48]" -type "float3" 0 0.0077691833 0 ;
	setAttr ".pt[100]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[104]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[147]" -type "float3" -4.4703484e-08 0.0090368195 0 ;
	setAttr ".pt[151]" -type "float3" 0 0.00010214373 0 ;
	setAttr ".pt[153]" -type "float3" 0 0.0051745414 0 ;
	setAttr ".pt[155]" -type "float3" 0 0.012477139 0 ;
	setAttr ".pt[165]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[166]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[168]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[169]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[174]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[177]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[180]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[181]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[183]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[185]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[186]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[187]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[189]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[190]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[192]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[195]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[198]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[199]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[200]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[203]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[204]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[205]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[206]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[207]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[210]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[214]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[215]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[217]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[218]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[219]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[220]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[223]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[232]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[233]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[234]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[235]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[236]" -type "float3" 1.4901161e-08 0.54050362 0 ;
	setAttr ".pt[237]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[238]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[241]" -type "float3" 0 0.54050368 0 ;
	setAttr ".pt[244]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[245]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[246]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[249]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[255]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[256]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[258]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[259]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[260]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[261]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[264]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[286]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[287]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[288]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[289]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[290]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[293]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[294]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[297]" -type "float3" -1.4901161e-08 1.0430813e-07 0 ;
	setAttr ".pt[300]" -type "float3" 2.9802322e-08 5.9604645e-08 0 ;
	setAttr ".pt[303]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".pt[304]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".pt[317]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[318]" -type "float3" 0 0.5405035 0 ;
	setAttr ".pt[320]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".pt[321]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[322]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[323]" -type "float3" 0 0.54050356 0 ;
	setAttr ".pt[324]" -type "float3" 0 0.54050344 0 ;
	setAttr ".pt[325]" -type "float3" 0 0.54050356 0 ;
createNode transform -n "connectorRect";
	rename -uid "04491645-4313-0371-7AF6-88883870E85A";
	setAttr ".t" -type "double3" 0.67437910579681748 0 -0.95730011923011027 ;
createNode mesh -n "connectorRectShape" -p "connectorRect";
	rename -uid "79DF9C7D-4EAD-BA31-15E5-51B1255FCF76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[2]" -type "float3" 0.024062276 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[5]" -type "float3" 0.024062276 0 0 ;
	setAttr ".pt[7]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[8]" -type "float3" 0.024062276 0 0 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.19314076 ;
	setAttr ".pt[14]" -type "float3" -0.046980333 0 0 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.19314076 ;
	setAttr ".pt[17]" -type "float3" -0.046980333 0 0 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.19314076 ;
	setAttr ".pt[20]" -type "float3" -0.046980333 0 0 ;
createNode transform -n "engineContainer1";
	rename -uid "9B25F247-4088-DCB5-865B-C68E178689A5";
	setAttr ".t" -type "double3" 1.1219538876703459 0.13570514845112036 -2.5977481208740865 ;
createNode mesh -n "engineContainerShape1" -p "engineContainer1";
	rename -uid "FF00E031-4E22-FC11-A8CC-E2ABDF0CC35C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[2]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[5]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[16]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[18]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[19]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[20]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[21]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[22]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[24]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[25]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[26]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[27]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[28]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[30]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[32]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[33]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[35]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[49]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[55]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[56]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[57]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[58]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[59]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[60]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[61]" -type "float3" 0 0.1294411 -0.7209354 ;
	setAttr ".pt[62]" -type "float3" 0 0.1294411 -0.7209354 ;
	setAttr ".pt[63]" -type "float3" 0 0.1294411 -0.72032154 ;
	setAttr ".pt[64]" -type "float3" 0 0.1294411 -0.72032154 ;
	setAttr ".pt[65]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[66]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[67]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[68]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[69]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[70]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[71]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[72]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[73]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[74]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[76]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[77]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[78]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[79]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[80]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[81]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[82]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[83]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[84]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[85]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[86]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[87]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[88]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[89]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[90]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[91]" -type "float3" 0 0 -0.74988067 ;
	setAttr ".pt[92]" -type "float3" 0 0 -0.74988067 ;
	setAttr ".pt[93]" -type "float3" 0 0 -0.74926674 ;
	setAttr ".pt[94]" -type "float3" 0 0 -0.74926674 ;
	setAttr ".pt[95]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[96]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[97]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[98]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[99]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[100]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[101]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[102]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[103]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[104]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[105]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[106]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[107]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[120]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[121]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[124]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[125]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[128]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[129]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[132]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[133]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[136]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[137]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[140]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[141]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[144]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[145]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[148]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[149]" -type "float3" 0 0 -0.28594869 ;
createNode transform -n "engine1";
	rename -uid "09F57C0B-4FE9-EAF6-8483-31B464429733";
	setAttr ".t" -type "double3" 0 0 0.79283923727583705 ;
	setAttr ".rp" -type "double3" 1.1207600180044761 0.12213982111864796 -4.2836549407194031 ;
	setAttr ".sp" -type "double3" 1.1207600180044761 0.12213982111864796 -4.2836549407194031 ;
createNode mesh -n "engineShape1" -p "engine1";
	rename -uid "2B89BFCA-49E2-5882-1910-DF972E448CC7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 11 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 15 "e[38]" "e[66]" "e[68:69]" "e[72:75]" "e[78:81]" "e[84:87]" "e[90:93]" "e[95:96]" "e[98:99]" "e[102:105]" "e[108:111]" "e[114:117]" "e[119:120]" "e[138]" "e[145]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[12]" "f[22:39]" "f[98]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 12 "e[0]" "e[6:7]" "e[12:13]" "e[18:19]" "e[24:25]" "e[30:31]" "e[36]" "e[40]" "e[45:46]" "e[51:52]" "e[57:58]" "e[62]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 20 "vtx[0:1]" "vtx[4]" "vtx[6:9]" "vtx[12]" "vtx[14:18]" "vtx[20]" "vtx[22:26]" "vtx[28]" "vtx[30:34]" "vtx[36]" "vtx[38:42]" "vtx[44]" "vtx[46:50]" "vtx[52]" "vtx[54:58]" "vtx[60]" "vtx[62:66]" "vtx[68]" "vtx[70:74]" "vtx[76:80]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 21 "vtx[0:1]" "vtx[4]" "vtx[6:9]" "vtx[12]" "vtx[14:18]" "vtx[20]" "vtx[22:26]" "vtx[28]" "vtx[30:34]" "vtx[36]" "vtx[38:40]" "vtx[42]" "vtx[44]" "vtx[46:50]" "vtx[52]" "vtx[54:58]" "vtx[60]" "vtx[62:66]" "vtx[68]" "vtx[70:74]" "vtx[76:80]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[0:10]" "vtx[12:101]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 20 "vtx[2:3]" "vtx[5]" "vtx[10:11]" "vtx[13]" "vtx[19]" "vtx[21]" "vtx[27]" "vtx[29]" "vtx[35]" "vtx[37]" "vtx[43]" "vtx[45]" "vtx[51]" "vtx[53]" "vtx[59]" "vtx[61]" "vtx[67]" "vtx[69]" "vtx[75]" "vtx[81:101]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 20 "vtx[2:3]" "vtx[5]" "vtx[10]" "vtx[13]" "vtx[19]" "vtx[21]" "vtx[27]" "vtx[29]" "vtx[35]" "vtx[37]" "vtx[43]" "vtx[45]" "vtx[51]" "vtx[53]" "vtx[59]" "vtx[61]" "vtx[67]" "vtx[69]" "vtx[75]" "vtx[81:101]";
	setAttr ".gtag[8].gtagnm" -type "string" "sides";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 4 "f[0:11]" "f[13:21]" "f[40:57]" "f[99]";
	setAttr ".gtag[9].gtagnm" -type "string" "top";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "f[58:97]";
	setAttr ".gtag[10].gtagnm" -type "string" "topRing";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 25 "e[2]" "e[4]" "e[9:10]" "e[15:16]" "e[21:22]" "e[27:28]" "e[33:34]" "e[42:43]" "e[48:49]" "e[54:55]" "e[60:61]" "e[64]" "e[122]" "e[124]" "e[127:128]" "e[131:132]" "e[135:136]" "e[139]" "e[141]" "e[144]" "e[146]" "e[149:150]" "e[153:154]" "e[157:158]" "e[190]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 206 ".uvst[0].uvsp[0:205]" -type "float2" 0.375 0.3125 0.38749999
		 0.3125 0.38749999 0.6875 0.375 0.6875 0.62499976 0.3125 0.62499976 0.6875 0.61249977
		 0.6875 0.61249977 0.3125 0.64860266 0.10796607 0.6116159 0.11998381 0.59685051 0.091005132
		 0.59388441 0.088039011 0.62640899 0.064408496 0.39999998 0.3125 0.39999998 0.6875
		 0.62640893 0.93559146 0.5 0.84375 0.6486026 0.89203393 0.59999979 0.6875 0.59999979
		 0.3125 0.65625 0.15625 0.61865532 0.15625 0.61349577 0.1236733 0.65625 0.84375 0.57092488
		 0.06507951 0.56750524 0.063337088 0.59184152 0.029841021 0.41249996 0.3125 0.41249996
		 0.6875 0.59184146 0.97015893 0.5874998 0.6875 0.5874998 0.3125 0.6486026 0.2045339
		 0.6139434 0.19327246 0.61923128 0.15988626 0.64860266 0.79546607 0.53825665 0.048434258
		 0.53518927 0.047948435 0.54828393 0.0076473355 0.42499995 0.3125 0.42499995 0.6875
		 0.54828387 0.9923526 0.57499981 0.6875 0.57499981 0.3125 0.62640893 0.24809146 0.59765047
		 0.22719721 0.61349571 0.19609919 0.62640899 0.75190848 0.50204372 0.042698689 0.5
		 0.04302239 0.5 -7.4505806e-08 0.43749994 0.3125 0.43749994 0.6875 0.5 1 0.56249982
		 0.6875 0.56249982 0.3125 0.59184146 0.28265893 0.57127124 0.25434649 0.59685045 0.22876735
		 0.59184152 0.71734101 0.4658308 0.048434265 0.46509102 0.048811205 0.45171607 0.0076473504
		 0.44999993 0.3125 0.44999993 0.6875 0.4517161 0.9923526 0.54999983 0.6875 0.54999983
		 0.3125 0.54828387 0.3048526 0.5374366 0.2714681 0.53825665 0.27133819 0.57092488
		 0.25469297 0.54828393 0.69514734 0.43359917 0.06485711 0.40815851 0.029841051 0.46249992
		 0.3125 0.46249992 0.6875 0.40815854 0.97015893 0.53749985 0.6875 0.53749985 0.3125
		 0.5 0.3125 0.5 0.27675003 0.50204372 0.27707374 0.5 0.68749994 0.43316263 0.06507954
		 0.40848312 0.089759082 0.37359107 0.064408526 0.4749999 0.3125 0.4749999 0.6875 0.37359107
		 0.93559146 0.52499986 0.6875 0.52499986 0.3125 0.4517161 0.3048526 0.46306369 0.26992828
		 0.4658308 0.27133819 0.45171607 0.69514734 0.40723705 0.091005154 0.39189106 0.12112328
		 0.3513974 0.1079661 0.48749989 0.3125 0.48749989 0.6875 0.3513974 0.89203393 0.51249987
		 0.6875 0.51249987 0.3125 0.40815854 0.28265893 0.43044877 0.25197905 0.43316263 0.25469297
		 0.40815851 0.71734107 0.39059177 0.12367333 0.38543218 0.15625 0.34374997 0.15625
		 0.49999988 0.3125 0.49999988 0.6875 0.34374997 0.84375 0.37359107 0.24809146 0.40533268
		 0.22502984 0.40723705 0.22876737 0.37359107 0.75190854 0.38485622 0.15988624 0.38994402
		 0.19200936 0.3513974 0.2045339 0.3513974 0.79546607 0.3905918 0.19609919 0.37641177
		 0.39823201 0.375 0.39823201 0.375 0.6875 0.38749999 0.6875 0.38749999 0.39823201
		 0.39999998 0.6875 0.39999998 0.39823201 0.38893005 0.39823201 0.6486026 0.89203393
		 0.5 0.84375 0.62640893 0.93559146 0.61375499 0.39823204 0.61249977 0.39823201 0.61249977
		 0.6875 0.62499976 0.6875 0.62499976 0.39823201 0.41249996 0.6875 0.41249996 0.39823201
		 0.40130848 0.39823201 0.59184146 0.97015893 0.65625 0.84375 0.60097551 0.39823198
		 0.59999979 0.39823201 0.59999979 0.6875 0.42499995 0.6875 0.42499995 0.39823201 0.41355872
		 0.39823201 0.54828387 0.9923526 0.64860266 0.79546607 0.58810061 0.39823198 0.5874998
		 0.39823201 0.5874998 0.6875 0.43749994 0.6875 0.43749997 0.39823201 0.4257054 0.39823198
		 0.5 1 0.62640899 0.75190848 0.57516682 0.39823201 0.57499981 0.39823201 0.57499981
		 0.6875 0.44999993 0.6875 0.44999993 0.39823201 0.44983289 0.39823201 0.437783 0.39823201
		 0.4517161 0.9923526 0.59184152 0.71734101 0.56249982 0.39823201 0.56249982 0.6875
		 0.46249992 0.6875 0.46249995 0.39823201 0.46189913 0.39823204 0.40815854 0.97015893
		 0.54828393 0.69514734 0.56221676 0.39823201 0.54999983 0.39823201 0.54999983 0.6875
		 0.4749999 0.6875 0.4749999 0.39823201 0.47402418 0.39823201 0.37359107 0.93559146
		 0.5 0.68749994 0.54929435 0.39823198 0.53749985 0.39823201 0.53749985 0.6875 0.48749989
		 0.6875 0.48749989 0.39823201 0.48624474 0.39823198 0.3513974 0.89203393 0.45171607
		 0.69514734 0.53644109 0.39823201 0.52499986 0.39823201 0.52499986 0.6875 0.49999988
		 0.6875 0.49999988 0.39823201 0.49858814 0.39823204 0.34374997 0.84375 0.40815851
		 0.71734107 0.5236913 0.39823201 0.51249987 0.39823201 0.51249987 0.6875 0.51106977
		 0.39823201 0.3513974 0.79546607 0.37359107 0.75190854;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  1.50118279 0.2457467 -4.53365517 1.44436693 0.35725406 -4.53365517
		 1.44436693 0.35725406 -4.033655167 1.50118279 0.2457467 -4.033655167 1.52075994 0.12213982 -4.53365517
		 1.52075994 0.12213982 -4.033655167 1.40649664 0.21498129 -4.53365517 1.36869717 0.28916669 -4.53365517
		 1.36110389 0.29675993 -4.53365517 1.35587418 0.44574681 -4.53365517 1.35587418 0.44574681 -4.033655167
		 1.12075996 0.12213982 -4.033655167 1.50118256 -0.0014669821 -4.53365517 1.50118256 -0.0014669821 -4.033655167
		 1.42451763 0.12213982 -4.53365517 1.41130912 0.20553617 -4.53365517 1.30232763 0.35553628 -4.53365517
		 1.29357326 0.35999689 -4.53365517 1.24436688 0.50256264 -4.53365517 1.24436688 0.50256264 -4.033655167
		 1.44436681 -0.11297431 -4.53365517 1.44436681 -0.11297431 -4.033655167 1.41245508 0.027362341 -4.53365517
		 1.42599201 0.11283101 -4.53365517 1.21869707 0.39814812 -4.53365517 1.21084464 0.39939183 -4.53365517
		 1.12075996 0.52214003 -4.53365517 1.12075996 0.52214003 -4.033655167 1.35587406 -0.20146701 -4.53365517
		 1.35587406 -0.20146701 -4.033655167 1.37074506 -0.059485018 -4.53365517 1.41130888 0.020125911 -4.53365517
		 1.12599194 0.41283119 -4.53365517 1.12075996 0.41200253 -4.53365517 0.9971531 0.50256264 -4.53365517
		 0.9971531 0.50256264 -4.033655167 1.24436677 -0.25828284 -4.53365517 1.24436677 -0.25828284 -4.033655167
		 1.30321443 -0.12898721 -4.53365517 1.36869705 -0.063504592 -4.53365517 1.03328681 0.39814812 -4.53365517
		 1.031392932 0.39718315 -4.53365517 0.88564575 0.44574675 -4.53365517 0.88564575 0.44574675 -4.033655167
		 1.12075996 -0.27786025 -4.53365517 1.12075996 -0.27786025 -4.033655167 1.21659768 -0.1728185 -4.53365517
		 1.21869707 -0.17248599 -4.53365517 1.30232751 -0.12987411 -4.53365517 0.95077384 0.35610563 -4.53365517
		 0.79715306 0.357254 -4.53365517 0.79715306 0.357254 -4.033655167 0.99715316 -0.25828287 -4.53365517
		 0.99715316 -0.25828287 -4.033655167 1.12075996 -0.18634036 -4.53365517 1.12599194 -0.18716903 -4.53365517
		 0.94965631 0.35553622 -4.53365517 0.8864767 0.29235658 -4.53365517 0.74033725 0.24574664 -4.53365517
		 0.74033725 0.24574664 -4.033655167 0.88564581 -0.20146704 -4.53365517 0.88564581 -0.20146704 -4.033655167
		 1.026203036 -0.16887662 -4.53365517 1.03328681 -0.17248599 -4.53365517 0.88328677 0.28916663 -4.53365517
		 0.84400111 0.21206422 -4.53365517 0.72075987 0.12213982 -4.53365517 0.72075987 0.12213982 -4.033655167
		 0.79715312 -0.11297432 -4.53365517 0.79715312 -0.11297432 -4.033655167 0.94270879 -0.12292661 -4.53365517
		 0.94965631 -0.12987414 -4.53365517 0.84067488 0.20553613 -4.53365517 0.82746625 0.12213982 -4.53365517
		 0.74033725 -0.0014670044 -4.53365517 0.74033725 -0.0014670044 -4.033655167 0.87841159 -0.053936567 -4.53365517
		 0.88328677 -0.063504606 -4.53365517 0.82599187 0.11283101 -4.53365517 0.83901662 0.030595858 -4.53365517
		 0.84067488 0.020125888 -4.53365517 1.41130912 0.20553617 -4.45651674 1.36869717 0.28916669 -4.45651674
		 1.30232763 0.35553628 -4.45651674 1.12599194 0.11283101 -4.45651674 1.42599201 0.11283101 -4.45651674
		 1.21869707 0.39814812 -4.45651674 1.41130888 0.020125911 -4.45651674 1.12599194 0.41283119 -4.45651674
		 1.36869705 -0.063504592 -4.45651674 1.03328681 0.39814812 -4.45651674 1.30232751 -0.12987411 -4.45651674
		 0.94965631 0.35553622 -4.45651674 1.21869707 -0.17248599 -4.45651674 0.88328677 0.28916663 -4.45651674
		 1.12599194 -0.18716903 -4.45651674 0.84067488 0.20553613 -4.45651674 1.03328681 -0.17248599 -4.45651674
		 0.82599187 0.11283101 -4.45651674 0.94965631 -0.12987414 -4.45651674 0.84067488 0.020125888 -4.45651674
		 0.88328677 -0.063504606 -4.45651674;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 3 0 3 0 1 3 5 0 5 4 1 4 0 0 1 9 0 9 10 1
		 10 2 0 5 13 0 13 12 1 12 4 0 9 18 0 18 19 1 19 10 0 13 21 0 21 20 1 20 12 0 18 26 0
		 26 27 1 27 19 0 21 29 0 29 28 1 28 20 0 26 34 0 34 35 1 35 27 0 29 37 0 37 36 1 36 28 0
		 34 42 0 42 43 1 43 35 0 37 45 0 45 44 1 44 36 0 34 41 1 41 49 0 49 42 1 42 50 0 50 51 1
		 51 43 0 45 53 0 53 52 1 52 44 0 50 58 0 58 59 1 59 51 0 53 61 0 61 60 1 60 52 0 58 66 0
		 66 67 1 67 59 0 61 69 0 69 68 1 68 60 0 66 74 0 74 75 1 75 67 0 69 75 0 74 68 0 47 93 1
		 93 91 0 91 48 1 48 47 0 0 6 1 6 7 0 7 8 0 8 1 1 4 14 1 14 15 0 15 6 0 8 16 0 16 17 0
		 17 9 1 12 22 1 22 23 0 23 14 0 17 24 0 24 25 0 25 18 1 20 30 1 30 31 0 31 22 0 25 32 0
		 32 33 0 33 26 1 28 38 1 38 39 0 39 30 0 33 40 0 40 41 0 44 54 1 54 55 0 55 46 0 46 36 1
		 49 56 0 56 57 0 57 50 1 52 62 1 62 63 0 63 54 0 57 64 0 64 65 0 65 58 1 60 70 1 70 71 0
		 71 62 0 65 72 0 72 73 0 73 66 1 68 76 1 76 77 0 77 70 0 73 78 0 78 79 0 79 74 1 79 80 0
		 80 76 0 15 81 1 81 82 0 82 7 1 82 83 0 83 16 1 23 85 1 85 81 0 83 86 0 86 24 1 31 87 1
		 87 85 0 86 88 0 88 32 1 39 89 1 89 87 0 88 90 0 90 40 1 38 48 0 91 89 0 56 92 1 92 94 0
		 94 64 1 55 95 1 95 93 0 47 46 0 94 96 0 96 72 1 63 97 1 97 95 0 96 98 0 98 78 1 71 99 1
		 99 97 0 98 100 0 100 80 1 77 101 1 101 99 0 100 101 0 2 11 1 11 3 1 11 5 1 10 11 1
		 11 13 1 19 11 1 11 21 1;
	setAttr ".ed[166:199]" 27 11 1 11 29 1 35 11 1 11 37 1 43 11 1 11 45 1 51 11 1
		 11 53 1 59 11 1 11 61 1 67 11 1 11 69 1 75 11 1 81 84 1 84 82 1 84 83 1 85 84 1 84 86 1
		 87 84 1 84 88 1 89 84 1 84 90 1 91 84 1 84 92 1 92 90 0 93 84 1 84 94 1 95 84 1 84 96 1
		 97 84 1 84 98 1 99 84 1 84 100 1 101 84 1;
	setAttr -s 202 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.30901712 0.95105648 0 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 -0.58778542 0.80901688 0 1e+20 1e+20 1e+20 0 0 -1 0
		 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1
		 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 0 0 -1 -0.93963361 -0.34218228 0 -0.95105666
		 -0.30901653 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.80901688 -0.58778536 0 1e+20
		 1e+20 1e+20 -0.58778518 -0.80901706 0 -0.78762162 -0.61615926 0 -0.99951422 -0.031166211
		 0 -1 1.3050172e-06 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.30901679 -0.9510566 0
		 -0.56118393 -0.82769114 0 -0.95825803 0.28590471 0 -0.95105642 0.30901727 0 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 -7.543453e-09 -1 0 -0.28392145 -0.95884752 0 -0.81767702
		 0.57567722 0 -0.80901706 0.58778518 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.30901718
		 -0.95105648 0 0.017485552 -0.99984711 0 -0.59112334 0.8065812 0 0.58778554 -0.80901676
		 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.80901706 -0.58778518 0 0.80017781 -0.59976286
		 0 -0.302347 0.95319796 0 0 1 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.95105654 -0.30901688
		 0 0.94329751 -0.33194849 0 0.01748554 0.99984711 0 0.30901685 0.95105654 0 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1 -7.5434521e-09 0 0.99951416 -0.031167451 0 0.33389893
		 0.94260889 0 0.58778518 0.80901706 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.95105654
		 0.30901691 0 0.96130937 0.27547112 0 0.61376548 0.78948838 0 0.80901694 0.58778536
		 0 1e+20 1e+20 1e+20 0.82939059 0.55866915 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr ".n[166:201]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0.58443773 -0.81143856 0 0.31567213 -0.94886833
		 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -4 4 5 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -2
		mu 0 4 1 13 14 2
		f 4 -6 10 11 12
		mu 0 4 7 6 18 19
		f 4 13 14 15 -9
		mu 0 4 13 27 28 14
		f 4 -12 16 17 18
		mu 0 4 19 18 30 31
		f 4 19 20 21 -15
		mu 0 4 27 39 40 28
		f 4 -18 22 23 24
		mu 0 4 31 30 42 43
		f 4 25 26 27 -21
		mu 0 4 39 51 52 40
		f 4 -24 28 29 30
		mu 0 4 43 42 54 55
		f 4 31 32 33 -27
		mu 0 4 51 63 64 52
		f 4 -30 34 35 36
		mu 0 4 55 54 66 67
		f 4 37 38 39 -32
		mu 0 4 62 61 73 74
		f 4 40 41 42 -33
		mu 0 4 63 75 76 64
		f 4 -36 43 44 45
		mu 0 4 67 66 78 79
		f 4 46 47 48 -42
		mu 0 4 75 87 88 76
		f 4 -45 49 50 51
		mu 0 4 79 78 90 91
		f 4 52 53 54 -48
		mu 0 4 87 99 100 88
		f 4 -51 55 56 57
		mu 0 4 91 90 102 103
		f 4 58 59 60 -54
		mu 0 4 99 111 112 100
		f 4 -57 61 -60 62
		mu 0 4 103 102 112 111
		f 4 63 64 65 66
		mu 0 4 169 170 162 161
		f 5 67 68 69 70 -1
		mu 0 5 8 9 10 11 12
		f 5 -7 71 72 73 -68
		mu 0 5 8 20 21 22 9
		f 5 -71 74 75 76 -8
		mu 0 5 12 11 24 25 26
		f 5 -13 77 78 79 -72
		mu 0 5 20 32 33 34 21
		f 5 -77 80 81 82 -14
		mu 0 5 26 25 36 37 38
		f 5 -19 83 84 85 -78
		mu 0 5 32 44 45 46 33
		f 5 -83 86 87 88 -20
		mu 0 5 38 37 48 49 50
		f 5 -25 89 90 91 -84
		mu 0 5 44 56 57 58 45
		f 5 -89 92 93 -38 -26
		mu 0 5 50 49 60 61 62
		f 5 -37 94 95 96 97
		mu 0 5 68 80 81 82 69
		f 5 -40 98 99 100 -41
		mu 0 5 74 73 84 85 86
		f 5 -46 101 102 103 -95
		mu 0 5 80 92 93 94 81
		f 5 -101 104 105 106 -47
		mu 0 5 86 85 96 97 98
		f 5 -52 107 108 109 -102
		mu 0 5 92 104 105 106 93
		f 5 -107 110 111 112 -53
		mu 0 5 98 97 108 109 110
		f 5 -58 113 114 115 -108
		mu 0 5 104 114 115 116 105
		f 5 -113 116 117 118 -59
		mu 0 5 110 109 118 119 120
		f 5 -63 -119 119 120 -114
		mu 0 5 114 120 119 122 115
		f 5 -74 121 122 123 -69
		mu 0 5 123 124 125 126 127
		f 5 -124 124 125 -75 -70
		mu 0 5 127 126 128 129 130
		f 5 -80 126 127 -122 -73
		mu 0 5 134 135 136 137 138
		f 5 -126 128 129 -81 -76
		mu 0 5 129 128 139 140 141
		f 5 -86 130 131 -127 -79
		mu 0 5 144 145 146 136 135
		f 5 -130 132 133 -87 -82
		mu 0 5 140 139 147 148 149
		f 5 -92 134 135 -131 -85
		mu 0 5 152 153 154 146 145
		f 5 -134 136 137 -93 -88
		mu 0 5 148 147 155 156 157
		f 5 138 -66 139 -135 -91
		mu 0 5 160 161 162 154 153
		f 5 140 141 142 -105 -100
		mu 0 5 164 163 171 172 173
		f 5 -97 143 144 -64 145
		mu 0 5 176 177 178 170 169
		f 5 -143 146 147 -111 -106
		mu 0 5 172 171 179 180 181
		f 5 -104 148 149 -144 -96
		mu 0 5 184 185 186 178 177
		f 5 -148 150 151 -117 -112
		mu 0 5 180 179 187 188 189
		f 5 -110 152 153 -149 -103
		mu 0 5 192 193 194 186 185
		f 5 -152 154 155 -120 -118
		mu 0 5 188 187 195 196 197
		f 5 -116 156 157 -153 -109
		mu 0 5 200 201 202 194 193
		f 5 -121 -156 158 -157 -115
		mu 0 5 203 196 195 202 201
		f 3 159 160 -3
		mu 0 3 15 16 17
		f 3 -161 161 -5
		mu 0 3 17 16 23
		f 3 -10 162 -160
		mu 0 3 15 29 16
		f 3 -162 163 -11
		mu 0 3 23 16 35
		f 3 -16 164 -163
		mu 0 3 29 41 16
		f 3 165 -17 -164
		mu 0 3 16 47 35
		f 3 -165 -22 166
		mu 0 3 16 41 53
		f 3 167 -23 -166
		mu 0 3 16 59 47
		f 3 -167 -28 168
		mu 0 3 16 53 65
		f 3 169 -29 -168
		mu 0 3 16 72 59
		f 3 -169 -34 170
		mu 0 3 16 65 77
		f 3 171 -35 -170
		mu 0 3 16 83 72
		f 3 -171 -43 172
		mu 0 3 16 77 89
		f 3 173 -44 -172
		mu 0 3 16 95 83
		f 3 -173 -49 174
		mu 0 3 16 89 101
		f 3 175 -50 -174
		mu 0 3 16 107 95
		f 3 -175 -55 176
		mu 0 3 16 101 113
		f 3 177 -56 -176
		mu 0 3 16 117 107
		f 3 -177 -61 178
		mu 0 3 16 113 121
		f 3 -179 -62 -178
		mu 0 3 16 121 117
		f 3 179 180 -123
		mu 0 3 131 132 133
		f 3 -181 181 -125
		mu 0 3 133 132 142
		f 3 -128 182 -180
		mu 0 3 131 143 132
		f 3 -182 183 -129
		mu 0 3 142 132 150
		f 3 -183 -132 184
		mu 0 3 132 143 151
		f 3 185 -133 -184
		mu 0 3 132 158 150
		f 3 -185 -136 186
		mu 0 3 132 151 159
		f 3 187 -137 -186
		mu 0 3 132 167 158
		f 3 -187 -140 188
		mu 0 3 132 159 168
		f 3 189 190 -188
		mu 0 3 132 174 167
		f 3 -189 -65 191
		mu 0 3 132 168 175
		f 3 192 -142 -190
		mu 0 3 132 182 174
		f 3 -192 -145 193
		mu 0 3 132 175 183
		f 3 194 -147 -193
		mu 0 3 132 190 182
		f 3 -194 -150 195
		mu 0 3 132 183 191
		f 3 196 -151 -195
		mu 0 3 132 198 190
		f 3 -196 -154 197
		mu 0 3 132 191 199
		f 3 198 -155 -197
		mu 0 3 132 204 198
		f 3 -198 -158 199
		mu 0 3 132 199 205
		f 3 -200 -159 -199
		mu 0 3 132 205 204
		f 6 -31 -98 -146 -67 -139 -90
		mu 0 6 56 68 69 70 71 57
		f 6 -138 -191 -141 -99 -39 -94
		mu 0 6 156 155 163 164 165 166;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "insideEngine1";
	rename -uid "81081FA2-42BD-9834-28C7-1593EC726AEA";
	setAttr ".t" -type "double3" 1.1300611324450625 0.11439345793814748 -3.6789696306329311 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.3 0.025 0.3 ;
createNode mesh -n "insideEngineShape1" -p "insideEngine1";
	rename -uid "A19A8A5B-4649-71D0-CD1D-6B8BE9E07E43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "wingDetailCube1";
	rename -uid "25A49E4F-4A7A-BD2C-CD0A-D1AACECB5520";
	setAttr ".t" -type "double3" -1.6052003908614629 0 1.0340092738286506 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode mesh -n "wingDetailCube1Shape" -p "wingDetailCube1";
	rename -uid "D2891FFD-4711-32D1-A564-59A703007C6D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[30:34]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[35:59]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[65:69]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[60:64]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[5:29]";
	setAttr ".pv" -type "double2" 0.40000000596046448 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 98 ".uvst[0].uvsp[0:97]" -type "float2" 0.375 0 0.42500001
		 0 0.47500002 0 0.52500004 0 0.57500005 0 0.62500006 0 0.375 0.25 0.42500001 0.25
		 0.47500002 0.25 0.52500004 0.25 0.57500005 0.25 0.62500006 0.25 0.375 0.30000001
		 0.42500001 0.30000001 0.47500002 0.30000001 0.52500004 0.30000001 0.57500005 0.30000001
		 0.62500006 0.30000001 0.375 0.35000002 0.42500001 0.35000002 0.47500002 0.35000002
		 0.52500004 0.35000002 0.57500005 0.35000002 0.62500006 0.35000002 0.375 0.40000004
		 0.42500001 0.40000004 0.47500002 0.40000004 0.52500004 0.40000004 0.57500005 0.40000004
		 0.62500006 0.40000004 0.375 0.45000005 0.42500001 0.45000005 0.47500002 0.45000005
		 0.52500004 0.45000005 0.57500005 0.45000005 0.62500006 0.45000005 0.375 0.50000006
		 0.42500001 0.50000006 0.47500002 0.50000006 0.52500004 0.50000006 0.57500005 0.50000006
		 0.62500006 0.50000006 0.375 0.75000006 0.42500001 0.75000006 0.47500002 0.75000006
		 0.52500004 0.75000006 0.57500005 0.75000006 0.62500006 0.75000006 0.375 0.80000007
		 0.42500001 0.80000007 0.47500002 0.80000007 0.52500004 0.80000007 0.57500005 0.80000007
		 0.62500006 0.80000007 0.375 0.85000008 0.42500001 0.85000008 0.47500002 0.85000008
		 0.52500004 0.85000008 0.57500005 0.85000008 0.62500006 0.85000008 0.375 0.9000001
		 0.42500001 0.9000001 0.47500002 0.9000001 0.52500004 0.9000001 0.57500005 0.9000001
		 0.62500006 0.9000001 0.375 0.95000011 0.42500001 0.95000011 0.47500002 0.95000011
		 0.52500004 0.95000011 0.57500005 0.95000011 0.62500006 0.95000011 0.375 1.000000119209
		 0.42500001 1.000000119209 0.47500002 1.000000119209 0.52500004 1.000000119209 0.57500005
		 1.000000119209 0.62500006 1.000000119209 0.875 0 0.82499999 0 0.77499998 0 0.72499996
		 0 0.67499995 0 0.875 0.25 0.82499999 0.25 0.77499998 0.25 0.72499996 0.25 0.67499995
		 0.25 0.125 0 0.175 0 0.22499999 0 0.27500001 0 0.32500002 0 0.125 0.25 0.175 0.25
		 0.22499999 0.25 0.27500001 0.25 0.32500002 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[3]" -type "float3" -0.096574597 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.19761729 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.29603788 0 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.091126375 ;
	setAttr ".pt[9]" -type "float3" -0.096574597 0 0 ;
	setAttr ".pt[10]" -type "float3" -0.19761729 0 0 ;
	setAttr ".pt[11]" -type "float3" -0.29603788 0 0 ;
	setAttr ".pt[16]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[17]" -type "float3" -0.19946326 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.19946326 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.098420613 0 0 ;
	setAttr ".pt[37]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.052639201 ;
	setAttr ".pt[38]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.10229667 ;
	setAttr ".pt[39]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.15007024 ;
	setAttr ".pt[40]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.18757029 ;
	setAttr ".pt[41]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.22451162 ;
	setAttr ".pt[43]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.052639201 ;
	setAttr ".pt[44]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.10229667 ;
	setAttr ".pt[45]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.15007024 ;
	setAttr ".pt[46]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.18757029 ;
	setAttr ".pt[47]" -type "float3" 7.4505806e-08 1.4901161e-07 -0.22451162 ;
	setAttr ".pt[59]" -type "float3" -0.098420613 0 0 ;
	setAttr ".pt[64]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.19946326 0 0 ;
	setAttr ".pt[70]" -type "float3" -0.10104267 0 0 ;
	setAttr ".pt[71]" -type "float3" -0.19946326 0 0 ;
	setAttr -s 72 ".vt[0:71]"  -0.25 -0.0625 0.5 -0.15000001 -0.0625 0.5
		 -0.050000004 -0.0625 0.5 0.049999997 -0.0625 0.5 0.15000001 -0.0625 0.5 0.25 -0.0625 0.5
		 -0.25 0.0625 0.5 -0.15000001 0.0625 0.5 -0.050000004 0.0625 0.5 0.049999997 0.0625 0.5
		 0.15000001 0.0625 0.5 0.25 0.0625 0.5 -0.25 0.0625 0.30000001 -0.15000001 0.0625 0.30000001
		 -0.050000004 0.0625 0.30000001 0.049999997 0.0625 0.30000001 0.15000001 0.0625 0.30000001
		 0.25 0.0625 0.30000001 -0.25 0.0625 0.10000001 -0.15000001 0.0625 0.10000001 -0.050000004 0.0625 0.10000001
		 0.049999997 0.0625 0.10000001 0.15000001 0.0625 0.10000001 0.25 0.0625 0.10000001
		 -0.25 0.0625 -0.099999994 -0.15000001 0.0625 -0.099999994 -0.050000004 0.0625 -0.099999994
		 0.049999997 0.0625 -0.099999994 0.15000001 0.0625 -0.099999994 0.25 0.0625 -0.099999994
		 -0.25 0.0625 -0.30000001 -0.15000001 0.0625 -0.30000001 -0.050000004 0.0625 -0.30000001
		 0.049999997 0.0625 -0.30000001 0.15000001 0.0625 -0.30000001 0.25 0.0625 -0.30000001
		 -0.25 0.0625 -0.5 -0.15000001 0.0625 -0.5 -0.050000004 0.0625 -0.5 0.049999997 0.0625 -0.5
		 0.15000001 0.0625 -0.5 0.25 0.0625 -0.5 -0.25 -0.0625 -0.5 -0.15000001 -0.0625 -0.5
		 -0.050000004 -0.0625 -0.5 0.049999997 -0.0625 -0.5 0.15000001 -0.0625 -0.5 0.25 -0.0625 -0.5
		 -0.25 -0.0625 -0.30000001 -0.15000001 -0.0625 -0.30000001 -0.050000004 -0.0625 -0.30000001
		 0.049999997 -0.0625 -0.30000001 0.15000001 -0.0625 -0.30000001 0.25 -0.0625 -0.30000001
		 -0.25 -0.0625 -0.10000001 -0.15000001 -0.0625 -0.10000001 -0.050000004 -0.0625 -0.10000001
		 0.049999997 -0.0625 -0.10000001 0.15000001 -0.0625 -0.10000001 0.25 -0.0625 -0.10000001
		 -0.25 -0.0625 0.099999994 -0.15000001 -0.0625 0.099999994 -0.050000004 -0.0625 0.099999994
		 0.049999997 -0.0625 0.099999994 0.15000001 -0.0625 0.099999994 0.25 -0.0625 0.099999994
		 -0.25 -0.0625 0.30000001 -0.15000001 -0.0625 0.30000001 -0.050000004 -0.0625 0.30000001
		 0.049999997 -0.0625 0.30000001 0.15000001 -0.0625 0.30000001 0.25 -0.0625 0.30000001;
	setAttr -s 140 ".ed[0:139]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 11 0 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 18 19 1 19 20 1 20 21 1
		 21 22 1 22 23 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 30 31 1 31 32 1 32 33 1 33 34 1
		 34 35 1 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0
		 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 60 61 1
		 61 62 1 62 63 1 63 64 1 64 65 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 0 6 0 1 7 1
		 2 8 1 3 9 1 4 10 1 5 11 0 6 12 0 7 13 1 8 14 1 9 15 1 10 16 1 11 17 0 12 18 0 13 19 1
		 14 20 1 15 21 1 16 22 1 17 23 0 18 24 0 19 25 1 20 26 1 21 27 1 22 28 1 23 29 0 24 30 0
		 25 31 1 26 32 1 27 33 1 28 34 1 29 35 0 30 36 0 31 37 1 32 38 1 33 39 1 34 40 1 35 41 0
		 36 42 0 37 43 1 38 44 1 39 45 1 40 46 1 41 47 0 42 48 0 43 49 1 44 50 1 45 51 1 46 52 1
		 47 53 0 48 54 0 49 55 1 50 56 1 51 57 1 52 58 1 53 59 0 54 60 0 55 61 1 56 62 1 57 63 1
		 58 64 1 59 65 0 60 66 0 61 67 1 62 68 1 63 69 1 64 70 1 65 71 0 66 0 0 67 1 1 68 2 1
		 69 3 1 70 4 1 71 5 0 53 35 1 59 29 1 65 23 1 71 17 1 48 30 1 54 24 1 60 18 1 66 12 1;
	setAttr -s 70 -ch 280 ".fc[0:69]" -type "polyFaces" 
		f 4 0 61 -6 -61
		mu 0 4 0 1 7 6
		f 4 1 62 -7 -62
		mu 0 4 1 2 8 7
		f 4 2 63 -8 -63
		mu 0 4 2 3 9 8
		f 4 3 64 -9 -64
		mu 0 4 3 4 10 9
		f 4 4 65 -10 -65
		mu 0 4 4 5 11 10
		f 4 5 67 -11 -67
		mu 0 4 6 7 13 12
		f 4 6 68 -12 -68
		mu 0 4 7 8 14 13
		f 4 7 69 -13 -69
		mu 0 4 8 9 15 14
		f 4 8 70 -14 -70
		mu 0 4 9 10 16 15
		f 4 9 71 -15 -71
		mu 0 4 10 11 17 16
		f 4 10 73 -16 -73
		mu 0 4 12 13 19 18
		f 4 11 74 -17 -74
		mu 0 4 13 14 20 19
		f 4 12 75 -18 -75
		mu 0 4 14 15 21 20
		f 4 13 76 -19 -76
		mu 0 4 15 16 22 21
		f 4 14 77 -20 -77
		mu 0 4 16 17 23 22
		f 4 15 79 -21 -79
		mu 0 4 18 19 25 24
		f 4 16 80 -22 -80
		mu 0 4 19 20 26 25
		f 4 17 81 -23 -81
		mu 0 4 20 21 27 26
		f 4 18 82 -24 -82
		mu 0 4 21 22 28 27
		f 4 19 83 -25 -83
		mu 0 4 22 23 29 28
		f 4 20 85 -26 -85
		mu 0 4 24 25 31 30
		f 4 21 86 -27 -86
		mu 0 4 25 26 32 31
		f 4 22 87 -28 -87
		mu 0 4 26 27 33 32
		f 4 23 88 -29 -88
		mu 0 4 27 28 34 33
		f 4 24 89 -30 -89
		mu 0 4 28 29 35 34
		f 4 25 91 -31 -91
		mu 0 4 30 31 37 36
		f 4 26 92 -32 -92
		mu 0 4 31 32 38 37
		f 4 27 93 -33 -93
		mu 0 4 32 33 39 38
		f 4 28 94 -34 -94
		mu 0 4 33 34 40 39
		f 4 29 95 -35 -95
		mu 0 4 34 35 41 40
		f 4 30 97 -36 -97
		mu 0 4 36 37 43 42
		f 4 31 98 -37 -98
		mu 0 4 37 38 44 43
		f 4 32 99 -38 -99
		mu 0 4 38 39 45 44
		f 4 33 100 -39 -100
		mu 0 4 39 40 46 45
		f 4 34 101 -40 -101
		mu 0 4 40 41 47 46
		f 4 35 103 -41 -103
		mu 0 4 42 43 49 48
		f 4 36 104 -42 -104
		mu 0 4 43 44 50 49
		f 4 37 105 -43 -105
		mu 0 4 44 45 51 50
		f 4 38 106 -44 -106
		mu 0 4 45 46 52 51
		f 4 39 107 -45 -107
		mu 0 4 46 47 53 52
		f 4 40 109 -46 -109
		mu 0 4 48 49 55 54
		f 4 41 110 -47 -110
		mu 0 4 49 50 56 55
		f 4 42 111 -48 -111
		mu 0 4 50 51 57 56
		f 4 43 112 -49 -112
		mu 0 4 51 52 58 57
		f 4 44 113 -50 -113
		mu 0 4 52 53 59 58
		f 4 45 115 -51 -115
		mu 0 4 54 55 61 60
		f 4 46 116 -52 -116
		mu 0 4 55 56 62 61
		f 4 47 117 -53 -117
		mu 0 4 56 57 63 62
		f 4 48 118 -54 -118
		mu 0 4 57 58 64 63
		f 4 49 119 -55 -119
		mu 0 4 58 59 65 64
		f 4 50 121 -56 -121
		mu 0 4 60 61 67 66
		f 4 51 122 -57 -122
		mu 0 4 61 62 68 67
		f 4 52 123 -58 -123
		mu 0 4 62 63 69 68
		f 4 53 124 -59 -124
		mu 0 4 63 64 70 69
		f 4 54 125 -60 -125
		mu 0 4 64 65 71 70
		f 4 55 127 -1 -127
		mu 0 4 66 67 73 72
		f 4 56 128 -2 -128
		mu 0 4 67 68 74 73
		f 4 57 129 -3 -129
		mu 0 4 68 69 75 74
		f 4 58 130 -4 -130
		mu 0 4 69 70 76 75
		f 4 59 131 -5 -131
		mu 0 4 70 71 77 76
		f 4 -108 -102 -96 -133
		mu 0 4 79 78 83 84
		f 4 -114 132 -90 -134
		mu 0 4 80 79 84 85
		f 4 -120 133 -84 -135
		mu 0 4 81 80 85 86
		f 4 -126 134 -78 -136
		mu 0 4 82 81 86 87
		f 4 -132 135 -72 -66
		mu 0 4 5 82 87 11
		f 4 102 136 90 96
		mu 0 4 88 89 94 93
		f 4 108 137 84 -137
		mu 0 4 89 90 95 94
		f 4 114 138 78 -138
		mu 0 4 90 91 96 95
		f 4 120 139 72 -139
		mu 0 4 91 92 97 96
		f 4 126 60 66 -140
		mu 0 4 92 0 6 97;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wingCube2";
	rename -uid "190C3D16-4C7F-74ED-F257-CE8BA25F47ED";
	setAttr ".t" -type "double3" -0.87249259615804831 0 2.7555162232991348 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode mesh -n "wingCubeShape2" -p "wingCube2";
	rename -uid "769BEC49-4787-876F-5FC7-5EA8A34BF505";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[50:74]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[75:99]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:24]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[125:149]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[100:124]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[25:49]";
	setAttr ".pv" -type "double2" 0.25 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0.375 0 0.42500001
		 0 0.47500002 0 0.52500004 0 0.57500005 0 0.62500006 0 0.375 0.050000001 0.42500001
		 0.050000001 0.47500002 0.050000001 0.52500004 0.050000001 0.57500005 0.050000001
		 0.62500006 0.050000001 0.375 0.1 0.42500001 0.1 0.47500002 0.1 0.52500004 0.1 0.57500005
		 0.1 0.62500006 0.1 0.375 0.15000001 0.42500001 0.15000001 0.47500002 0.15000001 0.52500004
		 0.15000001 0.57500005 0.15000001 0.62500006 0.15000001 0.375 0.2 0.42500001 0.2 0.47500002
		 0.2 0.52500004 0.2 0.57500005 0.2 0.62500006 0.2 0.375 0.25 0.42500001 0.25 0.47500002
		 0.25 0.52500004 0.25 0.57500005 0.25 0.62500006 0.25 0.375 0.30000001 0.42500001
		 0.30000001 0.47500002 0.30000001 0.52500004 0.30000001 0.57500005 0.30000001 0.62500006
		 0.30000001 0.375 0.35000002 0.42500001 0.35000002 0.47500002 0.35000002 0.52500004
		 0.35000002 0.57500005 0.35000002 0.62500006 0.35000002 0.375 0.40000004 0.42500001
		 0.40000004 0.47500002 0.40000004 0.52500004 0.40000004 0.57500005 0.40000004 0.62500006
		 0.40000004 0.375 0.45000005 0.42500001 0.45000005 0.47500002 0.45000005 0.52500004
		 0.45000005 0.57500005 0.45000005 0.62500006 0.45000005 0.375 0.50000006 0.42500001
		 0.50000006 0.47500002 0.50000006 0.52500004 0.50000006 0.57500005 0.50000006 0.62500006
		 0.50000006 0.375 0.55000007 0.42500001 0.55000007 0.47500002 0.55000007 0.52500004
		 0.55000007 0.57500005 0.55000007 0.62500006 0.55000007 0.375 0.60000008 0.42500001
		 0.60000008 0.47500002 0.60000008 0.52500004 0.60000008 0.57500005 0.60000008 0.62500006
		 0.60000008 0.375 0.6500001 0.42500001 0.6500001 0.47500002 0.6500001 0.52500004 0.6500001
		 0.57500005 0.6500001 0.62500006 0.6500001 0.375 0.70000011 0.42500001 0.70000011
		 0.47500002 0.70000011 0.52500004 0.70000011 0.57500005 0.70000011 0.62500006 0.70000011
		 0.375 0.75000012 0.42500001 0.75000012 0.47500002 0.75000012 0.52500004 0.75000012
		 0.57500005 0.75000012 0.62500006 0.75000012 0.375 0.80000013 0.42500001 0.80000013
		 0.47500002 0.80000013 0.52500004 0.80000013 0.57500005 0.80000013 0.62500006 0.80000013
		 0.375 0.85000014 0.42500001 0.85000014 0.47500002 0.85000014 0.52500004 0.85000014
		 0.57500005 0.85000014 0.62500006 0.85000014 0.375 0.90000015 0.42500001 0.90000015
		 0.47500002 0.90000015 0.52500004 0.90000015 0.57500005 0.90000015 0.62500006 0.90000015
		 0.375 0.95000017 0.42500001 0.95000017 0.47500002 0.95000017 0.52500004 0.95000017
		 0.57500005 0.95000017 0.62500006 0.95000017 0.375 1.000000119209 0.42500001 1.000000119209
		 0.47500002 1.000000119209 0.52500004 1.000000119209 0.57500005 1.000000119209 0.62500006
		 1.000000119209 0.875 0 0.82499999 0 0.77499998 0 0.72499996 0 0.67499995 0 0.875
		 0.050000001 0.82499999 0.050000001 0.77499998 0.050000001 0.72499996 0.050000001
		 0.67499995 0.050000001 0.875 0.1 0.82499999 0.1 0.77499998 0.1 0.72499996 0.1 0.67499995
		 0.1 0.875 0.15000001 0.82499999 0.15000001 0.77499998 0.15000001 0.72499996 0.15000001
		 0.67499995 0.15000001 0.875 0.2 0.82499999 0.2 0.77499998 0.2 0.72499996 0.2 0.67499995
		 0.2 0.875 0.25 0.82499999 0.25 0.77499998 0.25 0.72499996 0.25 0.67499995 0.25 0.125
		 0 0.175 0 0.22499999 0 0.27500001 0 0.32500002 0 0.125 0.050000001 0.175 0.050000001
		 0.22499999 0.050000001 0.27500001 0.050000001 0.32500002 0.050000001 0.125 0.1 0.175
		 0.1 0.22499999 0.1 0.27500001 0.1 0.32500002 0.1 0.125 0.15000001 0.175 0.15000001
		 0.22499999 0.15000001 0.27500001 0.15000001 0.32500002 0.15000001 0.125 0.2 0.175
		 0.2 0.22499999 0.2 0.27500001 0.2 0.32500002 0.2 0.125 0.25 0.175 0.25 0.22499999
		 0.25 0.27500001 0.25 0.32500002 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 76 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[2]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[4]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[5]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[11]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[17]" -type "float3" 0.052308314 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.052308314 0 0 ;
	setAttr ".pt[29]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.1128633 ;
	setAttr ".pt[34]" -type "float3" 0 -2.9802322e-08 -0.1128633 ;
	setAttr ".pt[35]" -type "float3" 0.038712576 -0.2005689 0 ;
	setAttr ".pt[41]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[47]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[53]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[59]" -type "float3" 0.038712576 -0.20056896 0 ;
	setAttr ".pt[60]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[61]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[62]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[63]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[64]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[65]" -type "float3" 0.03871258 -0.20056896 -2.2351742e-08 ;
	setAttr ".pt[66]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[67]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[68]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[69]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[70]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[71]" -type "float3" 0.040230636 -1.4901161e-08 -2.2351742e-08 ;
	setAttr ".pt[72]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[73]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[74]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[75]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[76]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[77]" -type "float3" 0.35427704 0 -2.2351742e-08 ;
	setAttr ".pt[78]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[79]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[80]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[81]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[82]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[83]" -type "float3" 0.35427704 0 -2.2351742e-08 ;
	setAttr ".pt[84]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[85]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[86]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[87]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[88]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[89]" -type "float3" 0.040230636 0 -2.2351742e-08 ;
	setAttr ".pt[90]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[91]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[92]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[93]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[94]" -type "float3" 9.3132257e-09 0 -2.2351742e-08 ;
	setAttr ".pt[95]" -type "float3" 0.036598358 0.19266795 -2.2351742e-08 ;
	setAttr ".pt[101]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[107]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[113]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[119]" -type "float3" 0.036598362 0.19266795 0 ;
	setAttr ".pt[120]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[121]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[122]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[123]" -type "float3" 0.040230639 0 0 ;
	setAttr ".pt[124]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[125]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[126]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[127]" -type "float3" 0.24636832 0 0 ;
	setAttr ".pt[128]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[129]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[130]" -type "float3" 0.3542771 0 0 ;
	setAttr ".pt[131]" -type "float3" 0.24636832 0 0 ;
	setAttr ".pt[132]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[133]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[134]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr ".pt[135]" -type "float3" 0.040230639 -1.4901161e-08 0 ;
	setAttr -s 152 ".vt[0:151]"  -0.125 -0.5 2.5 -0.075000003 -0.5 2.5 -0.025000002 -0.5 2.5
		 0.024999999 -0.5 2.5 0.075000003 -0.5 2.5 0.125 -0.5 2.5 -0.125 -0.30000001 2.5 -0.075000003 -0.30000001 2.5
		 -0.025000002 -0.30000001 2.5 0.024999999 -0.30000001 2.5 0.075000003 -0.30000001 2.5
		 0.125 -0.30000001 2.5 -0.125 -0.10000001 2.5 -0.075000003 -0.10000001 2.5 -0.025000002 -0.10000001 2.5
		 0.024999999 -0.10000001 2.5 0.075000003 -0.10000001 2.5 0.125 -0.10000001 2.5 -0.125 0.099999994 2.5
		 -0.075000003 0.099999994 2.5 -0.025000002 0.099999994 2.5 0.024999999 0.099999994 2.5
		 0.075000003 0.099999994 2.5 0.125 0.099999994 2.5 -0.125 0.30000001 2.5 -0.075000003 0.30000001 2.5
		 -0.025000002 0.30000001 2.5 0.024999999 0.30000001 2.5 0.075000003 0.30000001 2.5
		 0.125 0.30000001 2.5 -0.125 0.5 2.5 -0.075000003 0.5 2.5 -0.025000002 0.5 2.5 0.024999999 0.5 2.5
		 0.075000003 0.5 2.5 0.125 0.5 2.5 -0.125 0.5 1.5 -0.075000003 0.5 1.5 -0.025000002 0.5 1.5
		 0.024999999 0.5 1.5 0.075000003 0.5 1.5 0.125 0.5 1.5 -0.125 0.5 0.5 -0.075000003 0.5 0.5
		 -0.025000002 0.5 0.5 0.024999999 0.5 0.5 0.075000003 0.5 0.5 0.125 0.5 0.5 -0.125 0.5 -0.5
		 -0.075000003 0.5 -0.5 -0.025000002 0.5 -0.5 0.024999999 0.5 -0.5 0.075000003 0.5 -0.5
		 0.125 0.5 -0.5 -0.125 0.5 -1.5 -0.075000003 0.5 -1.5 -0.025000002 0.5 -1.5 0.024999999 0.5 -1.5
		 0.075000003 0.5 -1.5 0.125 0.5 -1.5 -0.125 0.5 -2.5 -0.075000003 0.5 -2.5 -0.025000002 0.5 -2.5
		 0.024999999 0.5 -2.5 0.075000003 0.5 -2.5 0.125 0.5 -2.5 -0.125 0.30000001 -2.5 -0.075000003 0.30000001 -2.5
		 -0.025000002 0.30000001 -2.5 0.024999999 0.30000001 -2.5 0.075000003 0.30000001 -2.5
		 0.125 0.30000001 -2.5 -0.125 0.10000001 -2.5 -0.075000003 0.10000001 -2.5 -0.025000002 0.10000001 -2.5
		 0.024999999 0.10000001 -2.5 0.075000003 0.10000001 -2.5 0.125 0.10000001 -2.5 -0.125 -0.099999994 -2.5
		 -0.075000003 -0.099999994 -2.5 -0.025000002 -0.099999994 -2.5 0.024999999 -0.099999994 -2.5
		 0.075000003 -0.099999994 -2.5 0.125 -0.099999994 -2.5 -0.125 -0.30000001 -2.5 -0.075000003 -0.30000001 -2.5
		 -0.025000002 -0.30000001 -2.5 0.024999999 -0.30000001 -2.5 0.075000003 -0.30000001 -2.5
		 0.125 -0.30000001 -2.5 -0.125 -0.5 -2.5 -0.075000003 -0.5 -2.5 -0.025000002 -0.5 -2.5
		 0.024999999 -0.5 -2.5 0.075000003 -0.5 -2.5 0.125 -0.5 -2.5 -0.125 -0.5 -1.5 -0.075000003 -0.5 -1.5
		 -0.025000002 -0.5 -1.5 0.024999999 -0.5 -1.5 0.075000003 -0.5 -1.5 0.125 -0.5 -1.5
		 -0.125 -0.5 -0.5 -0.075000003 -0.5 -0.5 -0.025000002 -0.5 -0.5 0.024999999 -0.5 -0.5
		 0.075000003 -0.5 -0.5 0.125 -0.5 -0.5 -0.125 -0.5 0.5 -0.075000003 -0.5 0.5 -0.025000002 -0.5 0.5
		 0.024999999 -0.5 0.5 0.075000003 -0.5 0.5 0.125 -0.5 0.5 -0.125 -0.5 1.5 -0.075000003 -0.5 1.5
		 -0.025000002 -0.5 1.5 0.024999999 -0.5 1.5 0.075000003 -0.5 1.5 0.125 -0.5 1.5 0.125 -0.30000001 -1.5
		 0.125 -0.30000001 -0.5 0.125 -0.30000001 0.5 0.125 -0.30000001 1.5 0.125 -0.10000001 -1.5
		 0.125 -0.10000001 -0.5 0.125 -0.10000001 0.5 0.125 -0.10000001 1.5 0.125 0.099999994 -1.5
		 0.125 0.099999994 -0.5 0.125 0.099999994 0.5 0.125 0.099999994 1.5 0.125 0.30000001 -1.5
		 0.125 0.30000001 -0.5 0.125 0.30000001 0.5 0.125 0.30000001 1.5 -0.125 -0.30000001 -1.5
		 -0.125 -0.30000001 -0.5 -0.125 -0.30000001 0.5 -0.125 -0.30000001 1.5 -0.125 -0.10000001 -1.5
		 -0.125 -0.10000001 -0.5 -0.125 -0.10000001 0.5 -0.125 -0.10000001 1.5 -0.125 0.099999994 -1.5
		 -0.125 0.099999994 -0.5 -0.125 0.099999994 0.5 -0.125 0.099999994 1.5 -0.125 0.30000001 -1.5
		 -0.125 0.30000001 -0.5 -0.125 0.30000001 0.5 -0.125 0.30000001 1.5;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 1 7 8 1 8 9 1 9 10 1
		 10 11 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1
		 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 48 49 1 49 50 1
		 50 51 1 51 52 1 52 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 60 61 0 61 62 0 62 63 0
		 63 64 0 64 65 0 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 72 73 1 73 74 1 74 75 1 75 76 1
		 76 77 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1
		 90 91 0 91 92 0 92 93 0 93 94 0 94 95 0 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1
		 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 108 109 1 109 110 1 110 111 1 111 112 1
		 112 113 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 0 6 0 1 7 1 2 8 1 3 9 1
		 4 10 1 5 11 0 6 12 0 7 13 1 8 14 1 9 15 1 10 16 1 11 17 0 12 18 0 13 19 1 14 20 1
		 15 21 1 16 22 1 17 23 0 18 24 0 19 25 1 20 26 1 21 27 1 22 28 1 23 29 0 24 30 0 25 31 1
		 26 32 1 27 33 1 28 34 1 29 35 0 30 36 0 31 37 1 32 38 1 33 39 1 34 40 1 35 41 0 36 42 0
		 37 43 1 38 44 1 39 45 1 40 46 1 41 47 0 42 48 0 43 49 1 44 50 1 45 51 1 46 52 1 47 53 0
		 48 54 0 49 55 1 50 56 1 51 57 1 52 58 1 53 59 0 54 60 0 55 61 1 56 62 1 57 63 1 58 64 1
		 59 65 0 60 66 0 61 67 1 62 68 1 63 69 1 64 70 1 65 71 0;
	setAttr ".ed[166:299]" 66 72 0 67 73 1 68 74 1 69 75 1 70 76 1 71 77 0 72 78 0
		 73 79 1 74 80 1 75 81 1 76 82 1 77 83 0 78 84 0 79 85 1 80 86 1 81 87 1 82 88 1 83 89 0
		 84 90 0 85 91 1 86 92 1 87 93 1 88 94 1 89 95 0 90 96 0 91 97 1 92 98 1 93 99 1 94 100 1
		 95 101 0 96 102 0 97 103 1 98 104 1 99 105 1 100 106 1 101 107 0 102 108 0 103 109 1
		 104 110 1 105 111 1 106 112 1 107 113 0 108 114 0 109 115 1 110 116 1 111 117 1 112 118 1
		 113 119 0 114 0 0 115 1 1 116 2 1 117 3 1 118 4 1 119 5 0 89 120 1 120 121 1 121 122 1
		 122 123 1 123 11 1 83 124 1 124 125 1 125 126 1 126 127 1 127 17 1 77 128 1 128 129 1
		 129 130 1 130 131 1 131 23 1 71 132 1 132 133 1 133 134 1 134 135 1 135 29 1 101 120 1
		 107 121 1 113 122 1 119 123 1 120 124 1 121 125 1 122 126 1 123 127 1 124 128 1 125 129 1
		 126 130 1 127 131 1 128 132 1 129 133 1 130 134 1 131 135 1 132 59 1 133 53 1 134 47 1
		 135 41 1 84 136 1 136 137 1 137 138 1 138 139 1 139 6 1 78 140 1 140 141 1 141 142 1
		 142 143 1 143 12 1 72 144 1 144 145 1 145 146 1 146 147 1 147 18 1 66 148 1 148 149 1
		 149 150 1 150 151 1 151 24 1 96 136 1 102 137 1 108 138 1 114 139 1 136 140 1 137 141 1
		 138 142 1 139 143 1 140 144 1 141 145 1 142 146 1 143 147 1 144 148 1 145 149 1 146 150 1
		 147 151 1 148 54 1 149 48 1 150 42 1 151 36 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 0 101 -6 -101
		mu 0 4 0 1 7 6
		f 4 1 102 -7 -102
		mu 0 4 1 2 8 7
		f 4 2 103 -8 -103
		mu 0 4 2 3 9 8
		f 4 3 104 -9 -104
		mu 0 4 3 4 10 9
		f 4 4 105 -10 -105
		mu 0 4 4 5 11 10
		f 4 5 107 -11 -107
		mu 0 4 6 7 13 12
		f 4 6 108 -12 -108
		mu 0 4 7 8 14 13
		f 4 7 109 -13 -109
		mu 0 4 8 9 15 14
		f 4 8 110 -14 -110
		mu 0 4 9 10 16 15
		f 4 9 111 -15 -111
		mu 0 4 10 11 17 16
		f 4 10 113 -16 -113
		mu 0 4 12 13 19 18
		f 4 11 114 -17 -114
		mu 0 4 13 14 20 19
		f 4 12 115 -18 -115
		mu 0 4 14 15 21 20
		f 4 13 116 -19 -116
		mu 0 4 15 16 22 21
		f 4 14 117 -20 -117
		mu 0 4 16 17 23 22
		f 4 15 119 -21 -119
		mu 0 4 18 19 25 24
		f 4 16 120 -22 -120
		mu 0 4 19 20 26 25
		f 4 17 121 -23 -121
		mu 0 4 20 21 27 26
		f 4 18 122 -24 -122
		mu 0 4 21 22 28 27
		f 4 19 123 -25 -123
		mu 0 4 22 23 29 28
		f 4 20 125 -26 -125
		mu 0 4 24 25 31 30
		f 4 21 126 -27 -126
		mu 0 4 25 26 32 31
		f 4 22 127 -28 -127
		mu 0 4 26 27 33 32
		f 4 23 128 -29 -128
		mu 0 4 27 28 34 33
		f 4 24 129 -30 -129
		mu 0 4 28 29 35 34
		f 4 25 131 -31 -131
		mu 0 4 30 31 37 36
		f 4 26 132 -32 -132
		mu 0 4 31 32 38 37
		f 4 27 133 -33 -133
		mu 0 4 32 33 39 38
		f 4 28 134 -34 -134
		mu 0 4 33 34 40 39
		f 4 29 135 -35 -135
		mu 0 4 34 35 41 40
		f 4 30 137 -36 -137
		mu 0 4 36 37 43 42
		f 4 31 138 -37 -138
		mu 0 4 37 38 44 43
		f 4 32 139 -38 -139
		mu 0 4 38 39 45 44
		f 4 33 140 -39 -140
		mu 0 4 39 40 46 45
		f 4 34 141 -40 -141
		mu 0 4 40 41 47 46
		f 4 35 143 -41 -143
		mu 0 4 42 43 49 48
		f 4 36 144 -42 -144
		mu 0 4 43 44 50 49
		f 4 37 145 -43 -145
		mu 0 4 44 45 51 50
		f 4 38 146 -44 -146
		mu 0 4 45 46 52 51
		f 4 39 147 -45 -147
		mu 0 4 46 47 53 52
		f 4 40 149 -46 -149
		mu 0 4 48 49 55 54
		f 4 41 150 -47 -150
		mu 0 4 49 50 56 55
		f 4 42 151 -48 -151
		mu 0 4 50 51 57 56
		f 4 43 152 -49 -152
		mu 0 4 51 52 58 57
		f 4 44 153 -50 -153
		mu 0 4 52 53 59 58
		f 4 45 155 -51 -155
		mu 0 4 54 55 61 60
		f 4 46 156 -52 -156
		mu 0 4 55 56 62 61
		f 4 47 157 -53 -157
		mu 0 4 56 57 63 62
		f 4 48 158 -54 -158
		mu 0 4 57 58 64 63
		f 4 49 159 -55 -159
		mu 0 4 58 59 65 64
		f 4 50 161 -56 -161
		mu 0 4 60 61 67 66
		f 4 51 162 -57 -162
		mu 0 4 61 62 68 67
		f 4 52 163 -58 -163
		mu 0 4 62 63 69 68
		f 4 53 164 -59 -164
		mu 0 4 63 64 70 69
		f 4 54 165 -60 -165
		mu 0 4 64 65 71 70
		f 4 55 167 -61 -167
		mu 0 4 66 67 73 72
		f 4 56 168 -62 -168
		mu 0 4 67 68 74 73
		f 4 57 169 -63 -169
		mu 0 4 68 69 75 74
		f 4 58 170 -64 -170
		mu 0 4 69 70 76 75
		f 4 59 171 -65 -171
		mu 0 4 70 71 77 76
		f 4 60 173 -66 -173
		mu 0 4 72 73 79 78
		f 4 61 174 -67 -174
		mu 0 4 73 74 80 79
		f 4 62 175 -68 -175
		mu 0 4 74 75 81 80
		f 4 63 176 -69 -176
		mu 0 4 75 76 82 81
		f 4 64 177 -70 -177
		mu 0 4 76 77 83 82
		f 4 65 179 -71 -179
		mu 0 4 78 79 85 84
		f 4 66 180 -72 -180
		mu 0 4 79 80 86 85
		f 4 67 181 -73 -181
		mu 0 4 80 81 87 86
		f 4 68 182 -74 -182
		mu 0 4 81 82 88 87
		f 4 69 183 -75 -183
		mu 0 4 82 83 89 88
		f 4 70 185 -76 -185
		mu 0 4 84 85 91 90
		f 4 71 186 -77 -186
		mu 0 4 85 86 92 91
		f 4 72 187 -78 -187
		mu 0 4 86 87 93 92
		f 4 73 188 -79 -188
		mu 0 4 87 88 94 93
		f 4 74 189 -80 -189
		mu 0 4 88 89 95 94
		f 4 75 191 -81 -191
		mu 0 4 90 91 97 96
		f 4 76 192 -82 -192
		mu 0 4 91 92 98 97
		f 4 77 193 -83 -193
		mu 0 4 92 93 99 98
		f 4 78 194 -84 -194
		mu 0 4 93 94 100 99
		f 4 79 195 -85 -195
		mu 0 4 94 95 101 100
		f 4 80 197 -86 -197
		mu 0 4 96 97 103 102
		f 4 81 198 -87 -198
		mu 0 4 97 98 104 103
		f 4 82 199 -88 -199
		mu 0 4 98 99 105 104
		f 4 83 200 -89 -200
		mu 0 4 99 100 106 105
		f 4 84 201 -90 -201
		mu 0 4 100 101 107 106
		f 4 85 203 -91 -203
		mu 0 4 102 103 109 108
		f 4 86 204 -92 -204
		mu 0 4 103 104 110 109
		f 4 87 205 -93 -205
		mu 0 4 104 105 111 110
		f 4 88 206 -94 -206
		mu 0 4 105 106 112 111
		f 4 89 207 -95 -207
		mu 0 4 106 107 113 112
		f 4 90 209 -96 -209
		mu 0 4 108 109 115 114
		f 4 91 210 -97 -210
		mu 0 4 109 110 116 115
		f 4 92 211 -98 -211
		mu 0 4 110 111 117 116
		f 4 93 212 -99 -212
		mu 0 4 111 112 118 117
		f 4 94 213 -100 -213
		mu 0 4 112 113 119 118
		f 4 95 215 -1 -215
		mu 0 4 114 115 121 120
		f 4 96 216 -2 -216
		mu 0 4 115 116 122 121
		f 4 97 217 -3 -217
		mu 0 4 116 117 123 122
		f 4 98 218 -4 -218
		mu 0 4 117 118 124 123
		f 4 99 219 -5 -219
		mu 0 4 118 119 125 124
		f 4 -196 -190 220 -241
		mu 0 4 127 126 131 132
		f 4 -202 240 221 -242
		mu 0 4 128 127 132 133
		f 4 -208 241 222 -243
		mu 0 4 129 128 133 134
		f 4 -214 242 223 -244
		mu 0 4 130 129 134 135
		f 4 -220 243 224 -106
		mu 0 4 5 130 135 11
		f 4 -221 -184 225 -245
		mu 0 4 132 131 136 137
		f 4 -222 244 226 -246
		mu 0 4 133 132 137 138
		f 4 -223 245 227 -247
		mu 0 4 134 133 138 139
		f 4 -224 246 228 -248
		mu 0 4 135 134 139 140
		f 4 -225 247 229 -112
		mu 0 4 11 135 140 17
		f 4 -226 -178 230 -249
		mu 0 4 137 136 141 142
		f 4 -227 248 231 -250
		mu 0 4 138 137 142 143
		f 4 -228 249 232 -251
		mu 0 4 139 138 143 144
		f 4 -229 250 233 -252
		mu 0 4 140 139 144 145
		f 4 -230 251 234 -118
		mu 0 4 17 140 145 23
		f 4 -231 -172 235 -253
		mu 0 4 142 141 146 147
		f 4 -232 252 236 -254
		mu 0 4 143 142 147 148
		f 4 -233 253 237 -255
		mu 0 4 144 143 148 149
		f 4 -234 254 238 -256
		mu 0 4 145 144 149 150
		f 4 -235 255 239 -124
		mu 0 4 23 145 150 29
		f 4 -236 -166 -160 -257
		mu 0 4 147 146 151 152
		f 4 -237 256 -154 -258
		mu 0 4 148 147 152 153
		f 4 -238 257 -148 -259
		mu 0 4 149 148 153 154
		f 4 -239 258 -142 -260
		mu 0 4 150 149 154 155
		f 4 -240 259 -136 -130
		mu 0 4 29 150 155 35
		f 4 190 280 -261 184
		mu 0 4 156 157 162 161
		f 4 196 281 -262 -281
		mu 0 4 157 158 163 162
		f 4 202 282 -263 -282
		mu 0 4 158 159 164 163
		f 4 208 283 -264 -283
		mu 0 4 159 160 165 164
		f 4 214 100 -265 -284
		mu 0 4 160 0 6 165
		f 4 260 284 -266 178
		mu 0 4 161 162 167 166
		f 4 261 285 -267 -285
		mu 0 4 162 163 168 167
		f 4 262 286 -268 -286
		mu 0 4 163 164 169 168
		f 4 263 287 -269 -287
		mu 0 4 164 165 170 169
		f 4 264 106 -270 -288
		mu 0 4 165 6 12 170
		f 4 265 288 -271 172
		mu 0 4 166 167 172 171
		f 4 266 289 -272 -289
		mu 0 4 167 168 173 172
		f 4 267 290 -273 -290
		mu 0 4 168 169 174 173
		f 4 268 291 -274 -291
		mu 0 4 169 170 175 174
		f 4 269 112 -275 -292
		mu 0 4 170 12 18 175
		f 4 270 292 -276 166
		mu 0 4 171 172 177 176
		f 4 271 293 -277 -293
		mu 0 4 172 173 178 177
		f 4 272 294 -278 -294
		mu 0 4 173 174 179 178
		f 4 273 295 -279 -295
		mu 0 4 174 175 180 179
		f 4 274 118 -280 -296
		mu 0 4 175 18 24 180
		f 4 275 296 154 160
		mu 0 4 176 177 182 181
		f 4 276 297 148 -297
		mu 0 4 177 178 183 182
		f 4 277 298 142 -298
		mu 0 4 178 179 184 183
		f 4 278 299 136 -299
		mu 0 4 179 180 185 184
		f 4 279 124 130 -300
		mu 0 4 180 24 30 185;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "connectorRect1";
	rename -uid "BE6FD748-45B3-0EED-6C5F-69A70C22304B";
	setAttr ".t" -type "double3" -0.67556406626691667 0 -0.95730011923011027 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode mesh -n "connectorRect1Shape" -p "connectorRect1";
	rename -uid "EA861927-4310-033D-628C-E591A406441B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[12:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:3]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[20:23]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16:19]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[4:7]";
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[2]" -type "float3" 0.024062276 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[5]" -type "float3" 0.024062276 0 0 ;
	setAttr ".pt[7]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[8]" -type "float3" 0.024062276 0 0 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.19314076 ;
	setAttr ".pt[14]" -type "float3" -0.046980333 0 0 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.19314076 ;
	setAttr ".pt[17]" -type "float3" -0.046980333 0 0 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.19314076 ;
	setAttr ".pt[20]" -type "float3" -0.046980333 0 0 ;
	setAttr -s 26 ".vt[0:25]"  -0.050000001 -0.25 0.5 0 -0.25 0.5 0.050000001 -0.25 0.5
		 -0.050000001 0 0.5 0 0 0.5 0.050000001 0 0.5 -0.050000001 0.25 0.5 0 0.25 0.5 0.050000001 0.25 0.5
		 -0.050000001 0.25 0 0 0.25 0 0.050000001 0.25 0 -0.050000001 0.25 -0.5 0 0.25 -0.5
		 0.050000001 0.25 -0.5 -0.050000001 0 -0.5 0 0 -0.5 0.050000001 0 -0.5 -0.050000001 -0.25 -0.5
		 0 -0.25 -0.5 0.050000001 -0.25 -0.5 -0.050000001 -0.25 0 0 -0.25 0 0.050000001 -0.25 0
		 0.050000001 0 0 -0.050000001 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "antenna1";
	rename -uid "8086C2AD-4D46-BC57-070C-F7B960BDF75B";
	setAttr ".t" -type "double3" 0.27439270201671906 1.4496424602416231 -3.2116109029841784 ;
	setAttr ".s" -type "double3" 0.05 0.4 0.05 ;
createNode mesh -n "antennaShape1" -p "antenna1";
	rename -uid "7264DECB-4145-9085-0709-7DAE3AFFE8C2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "antennaWire";
	rename -uid "96C22B0C-4C4D-9F9C-8E4D-15BADA23C8E0";
	setAttr ".t" -type "double3" 0.27444331861388044 1.7204191125552319 -3.2114657723580127 ;
	setAttr ".s" -type "double3" 0.02 0.25 0.02 ;
createNode mesh -n "antennaWireShape" -p "antennaWire";
	rename -uid "8926003E-4419-CC08-C73C-FBB98647DE0A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "insideEngine2";
	rename -uid "621489CF-4902-E749-BD48-25A7162C4EDD";
	setAttr ".t" -type "double3" -1.1185190657134552 0.11439345793814748 -3.6789696306329311 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" -0.3 0.025 0.3 ;
createNode mesh -n "insideEngineShape2" -p "insideEngine2";
	rename -uid "BF548E65-40DC-1A51-55B2-90B782F63477";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "engine2";
	rename -uid "AA533CC6-46F2-A44B-23F3-F3BC115318F7";
	setAttr ".t" -type "double3" -2.2485801981585176 0 0.79283923727583705 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" 1.1207600180044761 0.12213982111864796 -4.2836549407194031 ;
	setAttr ".sp" -type "double3" 1.1207600180044761 0.12213982111864796 -4.2836549407194031 ;
createNode mesh -n "engineShape2" -p "engine2";
	rename -uid "403EE8F9-4679-E93C-0248-3D92CF7319E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 11 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 15 "e[38]" "e[66]" "e[68:69]" "e[72:75]" "e[78:81]" "e[84:87]" "e[90:93]" "e[95:96]" "e[98:99]" "e[102:105]" "e[108:111]" "e[114:117]" "e[119:120]" "e[138]" "e[145]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[12]" "f[22:39]" "f[98]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 12 "e[0]" "e[6:7]" "e[12:13]" "e[18:19]" "e[24:25]" "e[30:31]" "e[36]" "e[40]" "e[45:46]" "e[51:52]" "e[57:58]" "e[62]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 20 "vtx[0:1]" "vtx[4]" "vtx[6:9]" "vtx[12]" "vtx[14:18]" "vtx[20]" "vtx[22:26]" "vtx[28]" "vtx[30:34]" "vtx[36]" "vtx[38:42]" "vtx[44]" "vtx[46:50]" "vtx[52]" "vtx[54:58]" "vtx[60]" "vtx[62:66]" "vtx[68]" "vtx[70:74]" "vtx[76:80]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 21 "vtx[0:1]" "vtx[4]" "vtx[6:9]" "vtx[12]" "vtx[14:18]" "vtx[20]" "vtx[22:26]" "vtx[28]" "vtx[30:34]" "vtx[36]" "vtx[38:40]" "vtx[42]" "vtx[44]" "vtx[46:50]" "vtx[52]" "vtx[54:58]" "vtx[60]" "vtx[62:66]" "vtx[68]" "vtx[70:74]" "vtx[76:80]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[0:10]" "vtx[12:101]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 20 "vtx[2:3]" "vtx[5]" "vtx[10:11]" "vtx[13]" "vtx[19]" "vtx[21]" "vtx[27]" "vtx[29]" "vtx[35]" "vtx[37]" "vtx[43]" "vtx[45]" "vtx[51]" "vtx[53]" "vtx[59]" "vtx[61]" "vtx[67]" "vtx[69]" "vtx[75]" "vtx[81:101]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 20 "vtx[2:3]" "vtx[5]" "vtx[10]" "vtx[13]" "vtx[19]" "vtx[21]" "vtx[27]" "vtx[29]" "vtx[35]" "vtx[37]" "vtx[43]" "vtx[45]" "vtx[51]" "vtx[53]" "vtx[59]" "vtx[61]" "vtx[67]" "vtx[69]" "vtx[75]" "vtx[81:101]";
	setAttr ".gtag[8].gtagnm" -type "string" "sides";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 4 "f[0:11]" "f[13:21]" "f[40:57]" "f[99]";
	setAttr ".gtag[9].gtagnm" -type "string" "top";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "f[58:97]";
	setAttr ".gtag[10].gtagnm" -type "string" "topRing";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 25 "e[2]" "e[4]" "e[9:10]" "e[15:16]" "e[21:22]" "e[27:28]" "e[33:34]" "e[42:43]" "e[48:49]" "e[54:55]" "e[60:61]" "e[64]" "e[122]" "e[124]" "e[127:128]" "e[131:132]" "e[135:136]" "e[139]" "e[141]" "e[144]" "e[146]" "e[149:150]" "e[153:154]" "e[157:158]" "e[190]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 206 ".uvst[0].uvsp[0:205]" -type "float2" 0.375 0.3125 0.38749999
		 0.3125 0.38749999 0.6875 0.375 0.6875 0.62499976 0.3125 0.62499976 0.6875 0.61249977
		 0.6875 0.61249977 0.3125 0.64860266 0.10796607 0.6116159 0.11998381 0.59685051 0.091005132
		 0.59388441 0.088039011 0.62640899 0.064408496 0.39999998 0.3125 0.39999998 0.6875
		 0.62640893 0.93559146 0.5 0.84375 0.6486026 0.89203393 0.59999979 0.6875 0.59999979
		 0.3125 0.65625 0.15625 0.61865532 0.15625 0.61349577 0.1236733 0.65625 0.84375 0.57092488
		 0.06507951 0.56750524 0.063337088 0.59184152 0.029841021 0.41249996 0.3125 0.41249996
		 0.6875 0.59184146 0.97015893 0.5874998 0.6875 0.5874998 0.3125 0.6486026 0.2045339
		 0.6139434 0.19327246 0.61923128 0.15988626 0.64860266 0.79546607 0.53825665 0.048434258
		 0.53518927 0.047948435 0.54828393 0.0076473355 0.42499995 0.3125 0.42499995 0.6875
		 0.54828387 0.9923526 0.57499981 0.6875 0.57499981 0.3125 0.62640893 0.24809146 0.59765047
		 0.22719721 0.61349571 0.19609919 0.62640899 0.75190848 0.50204372 0.042698689 0.5
		 0.04302239 0.5 -7.4505806e-08 0.43749994 0.3125 0.43749994 0.6875 0.5 1 0.56249982
		 0.6875 0.56249982 0.3125 0.59184146 0.28265893 0.57127124 0.25434649 0.59685045 0.22876735
		 0.59184152 0.71734101 0.4658308 0.048434265 0.46509102 0.048811205 0.45171607 0.0076473504
		 0.44999993 0.3125 0.44999993 0.6875 0.4517161 0.9923526 0.54999983 0.6875 0.54999983
		 0.3125 0.54828387 0.3048526 0.5374366 0.2714681 0.53825665 0.27133819 0.57092488
		 0.25469297 0.54828393 0.69514734 0.43359917 0.06485711 0.40815851 0.029841051 0.46249992
		 0.3125 0.46249992 0.6875 0.40815854 0.97015893 0.53749985 0.6875 0.53749985 0.3125
		 0.5 0.3125 0.5 0.27675003 0.50204372 0.27707374 0.5 0.68749994 0.43316263 0.06507954
		 0.40848312 0.089759082 0.37359107 0.064408526 0.4749999 0.3125 0.4749999 0.6875 0.37359107
		 0.93559146 0.52499986 0.6875 0.52499986 0.3125 0.4517161 0.3048526 0.46306369 0.26992828
		 0.4658308 0.27133819 0.45171607 0.69514734 0.40723705 0.091005154 0.39189106 0.12112328
		 0.3513974 0.1079661 0.48749989 0.3125 0.48749989 0.6875 0.3513974 0.89203393 0.51249987
		 0.6875 0.51249987 0.3125 0.40815854 0.28265893 0.43044877 0.25197905 0.43316263 0.25469297
		 0.40815851 0.71734107 0.39059177 0.12367333 0.38543218 0.15625 0.34374997 0.15625
		 0.49999988 0.3125 0.49999988 0.6875 0.34374997 0.84375 0.37359107 0.24809146 0.40533268
		 0.22502984 0.40723705 0.22876737 0.37359107 0.75190854 0.38485622 0.15988624 0.38994402
		 0.19200936 0.3513974 0.2045339 0.3513974 0.79546607 0.3905918 0.19609919 0.37641177
		 0.39823201 0.375 0.39823201 0.375 0.6875 0.38749999 0.6875 0.38749999 0.39823201
		 0.39999998 0.6875 0.39999998 0.39823201 0.38893005 0.39823201 0.6486026 0.89203393
		 0.5 0.84375 0.62640893 0.93559146 0.61375499 0.39823204 0.61249977 0.39823201 0.61249977
		 0.6875 0.62499976 0.6875 0.62499976 0.39823201 0.41249996 0.6875 0.41249996 0.39823201
		 0.40130848 0.39823201 0.59184146 0.97015893 0.65625 0.84375 0.60097551 0.39823198
		 0.59999979 0.39823201 0.59999979 0.6875 0.42499995 0.6875 0.42499995 0.39823201 0.41355872
		 0.39823201 0.54828387 0.9923526 0.64860266 0.79546607 0.58810061 0.39823198 0.5874998
		 0.39823201 0.5874998 0.6875 0.43749994 0.6875 0.43749997 0.39823201 0.4257054 0.39823198
		 0.5 1 0.62640899 0.75190848 0.57516682 0.39823201 0.57499981 0.39823201 0.57499981
		 0.6875 0.44999993 0.6875 0.44999993 0.39823201 0.44983289 0.39823201 0.437783 0.39823201
		 0.4517161 0.9923526 0.59184152 0.71734101 0.56249982 0.39823201 0.56249982 0.6875
		 0.46249992 0.6875 0.46249995 0.39823201 0.46189913 0.39823204 0.40815854 0.97015893
		 0.54828393 0.69514734 0.56221676 0.39823201 0.54999983 0.39823201 0.54999983 0.6875
		 0.4749999 0.6875 0.4749999 0.39823201 0.47402418 0.39823201 0.37359107 0.93559146
		 0.5 0.68749994 0.54929435 0.39823198 0.53749985 0.39823201 0.53749985 0.6875 0.48749989
		 0.6875 0.48749989 0.39823201 0.48624474 0.39823198 0.3513974 0.89203393 0.45171607
		 0.69514734 0.53644109 0.39823201 0.52499986 0.39823201 0.52499986 0.6875 0.49999988
		 0.6875 0.49999988 0.39823201 0.49858814 0.39823204 0.34374997 0.84375 0.40815851
		 0.71734107 0.5236913 0.39823201 0.51249987 0.39823201 0.51249987 0.6875 0.51106977
		 0.39823201 0.3513974 0.79546607 0.37359107 0.75190854;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  1.50118279 0.2457467 -4.53365517 1.44436693 0.35725406 -4.53365517
		 1.44436693 0.35725406 -4.033655167 1.50118279 0.2457467 -4.033655167 1.52075994 0.12213982 -4.53365517
		 1.52075994 0.12213982 -4.033655167 1.40649664 0.21498129 -4.53365517 1.36869717 0.28916669 -4.53365517
		 1.36110389 0.29675993 -4.53365517 1.35587418 0.44574681 -4.53365517 1.35587418 0.44574681 -4.033655167
		 1.12075996 0.12213982 -4.033655167 1.50118256 -0.0014669821 -4.53365517 1.50118256 -0.0014669821 -4.033655167
		 1.42451763 0.12213982 -4.53365517 1.41130912 0.20553617 -4.53365517 1.30232763 0.35553628 -4.53365517
		 1.29357326 0.35999689 -4.53365517 1.24436688 0.50256264 -4.53365517 1.24436688 0.50256264 -4.033655167
		 1.44436681 -0.11297431 -4.53365517 1.44436681 -0.11297431 -4.033655167 1.41245508 0.027362341 -4.53365517
		 1.42599201 0.11283101 -4.53365517 1.21869707 0.39814812 -4.53365517 1.21084464 0.39939183 -4.53365517
		 1.12075996 0.52214003 -4.53365517 1.12075996 0.52214003 -4.033655167 1.35587406 -0.20146701 -4.53365517
		 1.35587406 -0.20146701 -4.033655167 1.37074506 -0.059485018 -4.53365517 1.41130888 0.020125911 -4.53365517
		 1.12599194 0.41283119 -4.53365517 1.12075996 0.41200253 -4.53365517 0.9971531 0.50256264 -4.53365517
		 0.9971531 0.50256264 -4.033655167 1.24436677 -0.25828284 -4.53365517 1.24436677 -0.25828284 -4.033655167
		 1.30321443 -0.12898721 -4.53365517 1.36869705 -0.063504592 -4.53365517 1.03328681 0.39814812 -4.53365517
		 1.031392932 0.39718315 -4.53365517 0.88564575 0.44574675 -4.53365517 0.88564575 0.44574675 -4.033655167
		 1.12075996 -0.27786025 -4.53365517 1.12075996 -0.27786025 -4.033655167 1.21659768 -0.1728185 -4.53365517
		 1.21869707 -0.17248599 -4.53365517 1.30232751 -0.12987411 -4.53365517 0.95077384 0.35610563 -4.53365517
		 0.79715306 0.357254 -4.53365517 0.79715306 0.357254 -4.033655167 0.99715316 -0.25828287 -4.53365517
		 0.99715316 -0.25828287 -4.033655167 1.12075996 -0.18634036 -4.53365517 1.12599194 -0.18716903 -4.53365517
		 0.94965631 0.35553622 -4.53365517 0.8864767 0.29235658 -4.53365517 0.74033725 0.24574664 -4.53365517
		 0.74033725 0.24574664 -4.033655167 0.88564581 -0.20146704 -4.53365517 0.88564581 -0.20146704 -4.033655167
		 1.026203036 -0.16887662 -4.53365517 1.03328681 -0.17248599 -4.53365517 0.88328677 0.28916663 -4.53365517
		 0.84400111 0.21206422 -4.53365517 0.72075987 0.12213982 -4.53365517 0.72075987 0.12213982 -4.033655167
		 0.79715312 -0.11297432 -4.53365517 0.79715312 -0.11297432 -4.033655167 0.94270879 -0.12292661 -4.53365517
		 0.94965631 -0.12987414 -4.53365517 0.84067488 0.20553613 -4.53365517 0.82746625 0.12213982 -4.53365517
		 0.74033725 -0.0014670044 -4.53365517 0.74033725 -0.0014670044 -4.033655167 0.87841159 -0.053936567 -4.53365517
		 0.88328677 -0.063504606 -4.53365517 0.82599187 0.11283101 -4.53365517 0.83901662 0.030595858 -4.53365517
		 0.84067488 0.020125888 -4.53365517 1.41130912 0.20553617 -4.45651674 1.36869717 0.28916669 -4.45651674
		 1.30232763 0.35553628 -4.45651674 1.12599194 0.11283101 -4.45651674 1.42599201 0.11283101 -4.45651674
		 1.21869707 0.39814812 -4.45651674 1.41130888 0.020125911 -4.45651674 1.12599194 0.41283119 -4.45651674
		 1.36869705 -0.063504592 -4.45651674 1.03328681 0.39814812 -4.45651674 1.30232751 -0.12987411 -4.45651674
		 0.94965631 0.35553622 -4.45651674 1.21869707 -0.17248599 -4.45651674 0.88328677 0.28916663 -4.45651674
		 1.12599194 -0.18716903 -4.45651674 0.84067488 0.20553613 -4.45651674 1.03328681 -0.17248599 -4.45651674
		 0.82599187 0.11283101 -4.45651674 0.94965631 -0.12987414 -4.45651674 0.84067488 0.020125888 -4.45651674
		 0.88328677 -0.063504606 -4.45651674;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 3 0 3 0 1 3 5 0 5 4 1 4 0 0 1 9 0 9 10 1
		 10 2 0 5 13 0 13 12 1 12 4 0 9 18 0 18 19 1 19 10 0 13 21 0 21 20 1 20 12 0 18 26 0
		 26 27 1 27 19 0 21 29 0 29 28 1 28 20 0 26 34 0 34 35 1 35 27 0 29 37 0 37 36 1 36 28 0
		 34 42 0 42 43 1 43 35 0 37 45 0 45 44 1 44 36 0 34 41 1 41 49 0 49 42 1 42 50 0 50 51 1
		 51 43 0 45 53 0 53 52 1 52 44 0 50 58 0 58 59 1 59 51 0 53 61 0 61 60 1 60 52 0 58 66 0
		 66 67 1 67 59 0 61 69 0 69 68 1 68 60 0 66 74 0 74 75 1 75 67 0 69 75 0 74 68 0 47 93 1
		 93 91 0 91 48 1 48 47 0 0 6 1 6 7 0 7 8 0 8 1 1 4 14 1 14 15 0 15 6 0 8 16 0 16 17 0
		 17 9 1 12 22 1 22 23 0 23 14 0 17 24 0 24 25 0 25 18 1 20 30 1 30 31 0 31 22 0 25 32 0
		 32 33 0 33 26 1 28 38 1 38 39 0 39 30 0 33 40 0 40 41 0 44 54 1 54 55 0 55 46 0 46 36 1
		 49 56 0 56 57 0 57 50 1 52 62 1 62 63 0 63 54 0 57 64 0 64 65 0 65 58 1 60 70 1 70 71 0
		 71 62 0 65 72 0 72 73 0 73 66 1 68 76 1 76 77 0 77 70 0 73 78 0 78 79 0 79 74 1 79 80 0
		 80 76 0 15 81 1 81 82 0 82 7 1 82 83 0 83 16 1 23 85 1 85 81 0 83 86 0 86 24 1 31 87 1
		 87 85 0 86 88 0 88 32 1 39 89 1 89 87 0 88 90 0 90 40 1 38 48 0 91 89 0 56 92 1 92 94 0
		 94 64 1 55 95 1 95 93 0 47 46 0 94 96 0 96 72 1 63 97 1 97 95 0 96 98 0 98 78 1 71 99 1
		 99 97 0 98 100 0 100 80 1 77 101 1 101 99 0 100 101 0 2 11 1 11 3 1 11 5 1 10 11 1
		 11 13 1 19 11 1 11 21 1;
	setAttr ".ed[166:199]" 27 11 1 11 29 1 35 11 1 11 37 1 43 11 1 11 45 1 51 11 1
		 11 53 1 59 11 1 11 61 1 67 11 1 11 69 1 75 11 1 81 84 1 84 82 1 84 83 1 85 84 1 84 86 1
		 87 84 1 84 88 1 89 84 1 84 90 1 91 84 1 84 92 1 92 90 0 93 84 1 84 94 1 95 84 1 84 96 1
		 97 84 1 84 98 1 99 84 1 84 100 1 101 84 1;
	setAttr -s 202 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.30901712 0.95105648 0 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 -0.58778542 0.80901688 0 1e+20 1e+20 1e+20 0 0 -1 0
		 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1
		 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 1e+20 1e+20 1e+20 0 0 -1 -0.93963361 -0.34218228 0 -0.95105666
		 -0.30901653 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.80901688 -0.58778536 0 1e+20
		 1e+20 1e+20 -0.58778518 -0.80901706 0 -0.78762162 -0.61615926 0 -0.99951422 -0.031166211
		 0 -1 1.3050172e-06 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.30901679 -0.9510566 0
		 -0.56118393 -0.82769114 0 -0.95825803 0.28590471 0 -0.95105642 0.30901727 0 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 -7.543453e-09 -1 0 -0.28392145 -0.95884752 0 -0.81767702
		 0.57567722 0 -0.80901706 0.58778518 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.30901718
		 -0.95105648 0 0.017485552 -0.99984711 0 -0.59112334 0.8065812 0 0.58778554 -0.80901676
		 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.80901706 -0.58778518 0 0.80017781 -0.59976286
		 0 -0.302347 0.95319796 0 0 1 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.95105654 -0.30901688
		 0 0.94329751 -0.33194849 0 0.01748554 0.99984711 0 0.30901685 0.95105654 0 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1 -7.5434521e-09 0 0.99951416 -0.031167451 0 0.33389893
		 0.94260889 0 0.58778518 0.80901706 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.95105654
		 0.30901691 0 0.96130937 0.27547112 0 0.61376548 0.78948838 0 0.80901694 0.58778536
		 0 1e+20 1e+20 1e+20 0.82939059 0.55866915 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr ".n[166:201]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 0 0 -1 0 0 -1 0.58443773 -0.81143856 0 0.31567213 -0.94886833
		 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -4 4 5 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -2
		mu 0 4 1 13 14 2
		f 4 -6 10 11 12
		mu 0 4 7 6 18 19
		f 4 13 14 15 -9
		mu 0 4 13 27 28 14
		f 4 -12 16 17 18
		mu 0 4 19 18 30 31
		f 4 19 20 21 -15
		mu 0 4 27 39 40 28
		f 4 -18 22 23 24
		mu 0 4 31 30 42 43
		f 4 25 26 27 -21
		mu 0 4 39 51 52 40
		f 4 -24 28 29 30
		mu 0 4 43 42 54 55
		f 4 31 32 33 -27
		mu 0 4 51 63 64 52
		f 4 -30 34 35 36
		mu 0 4 55 54 66 67
		f 4 37 38 39 -32
		mu 0 4 62 61 73 74
		f 4 40 41 42 -33
		mu 0 4 63 75 76 64
		f 4 -36 43 44 45
		mu 0 4 67 66 78 79
		f 4 46 47 48 -42
		mu 0 4 75 87 88 76
		f 4 -45 49 50 51
		mu 0 4 79 78 90 91
		f 4 52 53 54 -48
		mu 0 4 87 99 100 88
		f 4 -51 55 56 57
		mu 0 4 91 90 102 103
		f 4 58 59 60 -54
		mu 0 4 99 111 112 100
		f 4 -57 61 -60 62
		mu 0 4 103 102 112 111
		f 4 63 64 65 66
		mu 0 4 169 170 162 161
		f 5 67 68 69 70 -1
		mu 0 5 8 9 10 11 12
		f 5 -7 71 72 73 -68
		mu 0 5 8 20 21 22 9
		f 5 -71 74 75 76 -8
		mu 0 5 12 11 24 25 26
		f 5 -13 77 78 79 -72
		mu 0 5 20 32 33 34 21
		f 5 -77 80 81 82 -14
		mu 0 5 26 25 36 37 38
		f 5 -19 83 84 85 -78
		mu 0 5 32 44 45 46 33
		f 5 -83 86 87 88 -20
		mu 0 5 38 37 48 49 50
		f 5 -25 89 90 91 -84
		mu 0 5 44 56 57 58 45
		f 5 -89 92 93 -38 -26
		mu 0 5 50 49 60 61 62
		f 5 -37 94 95 96 97
		mu 0 5 68 80 81 82 69
		f 5 -40 98 99 100 -41
		mu 0 5 74 73 84 85 86
		f 5 -46 101 102 103 -95
		mu 0 5 80 92 93 94 81
		f 5 -101 104 105 106 -47
		mu 0 5 86 85 96 97 98
		f 5 -52 107 108 109 -102
		mu 0 5 92 104 105 106 93
		f 5 -107 110 111 112 -53
		mu 0 5 98 97 108 109 110
		f 5 -58 113 114 115 -108
		mu 0 5 104 114 115 116 105
		f 5 -113 116 117 118 -59
		mu 0 5 110 109 118 119 120
		f 5 -63 -119 119 120 -114
		mu 0 5 114 120 119 122 115
		f 5 -74 121 122 123 -69
		mu 0 5 123 124 125 126 127
		f 5 -124 124 125 -75 -70
		mu 0 5 127 126 128 129 130
		f 5 -80 126 127 -122 -73
		mu 0 5 134 135 136 137 138
		f 5 -126 128 129 -81 -76
		mu 0 5 129 128 139 140 141
		f 5 -86 130 131 -127 -79
		mu 0 5 144 145 146 136 135
		f 5 -130 132 133 -87 -82
		mu 0 5 140 139 147 148 149
		f 5 -92 134 135 -131 -85
		mu 0 5 152 153 154 146 145
		f 5 -134 136 137 -93 -88
		mu 0 5 148 147 155 156 157
		f 5 138 -66 139 -135 -91
		mu 0 5 160 161 162 154 153
		f 5 140 141 142 -105 -100
		mu 0 5 164 163 171 172 173
		f 5 -97 143 144 -64 145
		mu 0 5 176 177 178 170 169
		f 5 -143 146 147 -111 -106
		mu 0 5 172 171 179 180 181
		f 5 -104 148 149 -144 -96
		mu 0 5 184 185 186 178 177
		f 5 -148 150 151 -117 -112
		mu 0 5 180 179 187 188 189
		f 5 -110 152 153 -149 -103
		mu 0 5 192 193 194 186 185
		f 5 -152 154 155 -120 -118
		mu 0 5 188 187 195 196 197
		f 5 -116 156 157 -153 -109
		mu 0 5 200 201 202 194 193
		f 5 -121 -156 158 -157 -115
		mu 0 5 203 196 195 202 201
		f 3 159 160 -3
		mu 0 3 15 16 17
		f 3 -161 161 -5
		mu 0 3 17 16 23
		f 3 -10 162 -160
		mu 0 3 15 29 16
		f 3 -162 163 -11
		mu 0 3 23 16 35
		f 3 -16 164 -163
		mu 0 3 29 41 16
		f 3 165 -17 -164
		mu 0 3 16 47 35
		f 3 -165 -22 166
		mu 0 3 16 41 53
		f 3 167 -23 -166
		mu 0 3 16 59 47
		f 3 -167 -28 168
		mu 0 3 16 53 65
		f 3 169 -29 -168
		mu 0 3 16 72 59
		f 3 -169 -34 170
		mu 0 3 16 65 77
		f 3 171 -35 -170
		mu 0 3 16 83 72
		f 3 -171 -43 172
		mu 0 3 16 77 89
		f 3 173 -44 -172
		mu 0 3 16 95 83
		f 3 -173 -49 174
		mu 0 3 16 89 101
		f 3 175 -50 -174
		mu 0 3 16 107 95
		f 3 -175 -55 176
		mu 0 3 16 101 113
		f 3 177 -56 -176
		mu 0 3 16 117 107
		f 3 -177 -61 178
		mu 0 3 16 113 121
		f 3 -179 -62 -178
		mu 0 3 16 121 117
		f 3 179 180 -123
		mu 0 3 131 132 133
		f 3 -181 181 -125
		mu 0 3 133 132 142
		f 3 -128 182 -180
		mu 0 3 131 143 132
		f 3 -182 183 -129
		mu 0 3 142 132 150
		f 3 -183 -132 184
		mu 0 3 132 143 151
		f 3 185 -133 -184
		mu 0 3 132 158 150
		f 3 -185 -136 186
		mu 0 3 132 151 159
		f 3 187 -137 -186
		mu 0 3 132 167 158
		f 3 -187 -140 188
		mu 0 3 132 159 168
		f 3 189 190 -188
		mu 0 3 132 174 167
		f 3 -189 -65 191
		mu 0 3 132 168 175
		f 3 192 -142 -190
		mu 0 3 132 182 174
		f 3 -192 -145 193
		mu 0 3 132 175 183
		f 3 194 -147 -193
		mu 0 3 132 190 182
		f 3 -194 -150 195
		mu 0 3 132 183 191
		f 3 196 -151 -195
		mu 0 3 132 198 190
		f 3 -196 -154 197
		mu 0 3 132 191 199
		f 3 198 -155 -197
		mu 0 3 132 204 198
		f 3 -198 -158 199
		mu 0 3 132 199 205
		f 3 -200 -159 -199
		mu 0 3 132 205 204
		f 6 -31 -98 -146 -67 -139 -90
		mu 0 6 56 68 69 70 71 57
		f 6 -138 -191 -141 -99 -39 -94
		mu 0 6 156 155 163 164 165 166;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "engineContainer2";
	rename -uid "752FBB01-4AC4-7099-4544-969709456351";
	setAttr ".t" -type "double3" -1.126626310488172 0.13570514845112036 -2.5977481208740865 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode mesh -n "engineContainerShape2" -p "engineContainer2";
	rename -uid "996DD5FA-477D-33D4-5C45-FDADBE6A3C1B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[50:74]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[75:99]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:24]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[125:149]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[100:124]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[25:49]";
	setAttr ".pv" -type "double2" 0.375 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0.375 0 0.42500001
		 0 0.47500002 0 0.52500004 0 0.57500005 0 0.62500006 0 0.375 0.050000001 0.42500001
		 0.050000001 0.47500002 0.050000001 0.52500004 0.050000001 0.57500005 0.050000001
		 0.62500006 0.050000001 0.375 0.1 0.42500001 0.1 0.47500002 0.1 0.52500004 0.1 0.57500005
		 0.1 0.62500006 0.1 0.375 0.15000001 0.42500001 0.15000001 0.47500002 0.15000001 0.52500004
		 0.15000001 0.57500005 0.15000001 0.62500006 0.15000001 0.375 0.2 0.42500001 0.2 0.47500002
		 0.2 0.52500004 0.2 0.57500005 0.2 0.62500006 0.2 0.375 0.25 0.42500001 0.25 0.47500002
		 0.25 0.52500004 0.25 0.57500005 0.25 0.62500006 0.25 0.375 0.30000001 0.42500001
		 0.30000001 0.47500002 0.30000001 0.52500004 0.30000001 0.57500005 0.30000001 0.62500006
		 0.30000001 0.375 0.35000002 0.42500001 0.35000002 0.47500002 0.35000002 0.52500004
		 0.35000002 0.57500005 0.35000002 0.62500006 0.35000002 0.375 0.40000004 0.42500001
		 0.40000004 0.47500002 0.40000004 0.52500004 0.40000004 0.57500005 0.40000004 0.62500006
		 0.40000004 0.375 0.45000005 0.42500001 0.45000005 0.47500002 0.45000005 0.52500004
		 0.45000005 0.57500005 0.45000005 0.62500006 0.45000005 0.375 0.50000006 0.42500001
		 0.50000006 0.47500002 0.50000006 0.52500004 0.50000006 0.57500005 0.50000006 0.62500006
		 0.50000006 0.375 0.55000007 0.42500001 0.55000007 0.47500002 0.55000007 0.52500004
		 0.55000007 0.57500005 0.55000007 0.62500006 0.55000007 0.375 0.60000008 0.42500001
		 0.60000008 0.47500002 0.60000008 0.52500004 0.60000008 0.57500005 0.60000008 0.62500006
		 0.60000008 0.375 0.6500001 0.42500001 0.6500001 0.47500002 0.6500001 0.52500004 0.6500001
		 0.57500005 0.6500001 0.62500006 0.6500001 0.375 0.70000011 0.42500001 0.70000011
		 0.47500002 0.70000011 0.52500004 0.70000011 0.57500005 0.70000011 0.62500006 0.70000011
		 0.375 0.75000012 0.42500001 0.75000012 0.47500002 0.75000012 0.52500004 0.75000012
		 0.57500005 0.75000012 0.62500006 0.75000012 0.375 0.80000013 0.42500001 0.80000013
		 0.47500002 0.80000013 0.52500004 0.80000013 0.57500005 0.80000013 0.62500006 0.80000013
		 0.375 0.85000014 0.42500001 0.85000014 0.47500002 0.85000014 0.52500004 0.85000014
		 0.57500005 0.85000014 0.62500006 0.85000014 0.375 0.90000015 0.42500001 0.90000015
		 0.47500002 0.90000015 0.52500004 0.90000015 0.57500005 0.90000015 0.62500006 0.90000015
		 0.375 0.95000017 0.42500001 0.95000017 0.47500002 0.95000017 0.52500004 0.95000017
		 0.57500005 0.95000017 0.62500006 0.95000017 0.375 1.000000119209 0.42500001 1.000000119209
		 0.47500002 1.000000119209 0.52500004 1.000000119209 0.57500005 1.000000119209 0.62500006
		 1.000000119209 0.875 0 0.82499999 0 0.77499998 0 0.72499996 0 0.67499995 0 0.875
		 0.050000001 0.82499999 0.050000001 0.77499998 0.050000001 0.72499996 0.050000001
		 0.67499995 0.050000001 0.875 0.1 0.82499999 0.1 0.77499998 0.1 0.72499996 0.1 0.67499995
		 0.1 0.875 0.15000001 0.82499999 0.15000001 0.77499998 0.15000001 0.72499996 0.15000001
		 0.67499995 0.15000001 0.875 0.2 0.82499999 0.2 0.77499998 0.2 0.72499996 0.2 0.67499995
		 0.2 0.875 0.25 0.82499999 0.25 0.77499998 0.25 0.72499996 0.25 0.67499995 0.25 0.125
		 0 0.175 0 0.22499999 0 0.27500001 0 0.32500002 0 0.125 0.050000001 0.175 0.050000001
		 0.22499999 0.050000001 0.27500001 0.050000001 0.32500002 0.050000001 0.125 0.1 0.175
		 0.1 0.22499999 0.1 0.27500001 0.1 0.32500002 0.1 0.125 0.15000001 0.175 0.15000001
		 0.22499999 0.15000001 0.27500001 0.15000001 0.32500002 0.15000001 0.125 0.2 0.175
		 0.2 0.22499999 0.2 0.27500001 0.2 0.32500002 0.2 0.125 0.25 0.175 0.25 0.22499999
		 0.25 0.27500001 0.25 0.32500002 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[2]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[5]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[16]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[18]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[19]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[20]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[21]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[22]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[24]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[25]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[26]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[27]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[28]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[30]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[32]" -type "float3" 0 0 0.54964572 ;
	setAttr ".pt[33]" -type "float3" 0 0 0.37666976 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.17683597 ;
	setAttr ".pt[35]" -type "float3" 0 0 -0.091985837 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[49]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[55]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[56]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[57]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[58]" -type "float3" 0 0.1294411 -0.28594869 ;
	setAttr ".pt[59]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[60]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[61]" -type "float3" 0 0.1294411 -0.7209354 ;
	setAttr ".pt[62]" -type "float3" 0 0.1294411 -0.7209354 ;
	setAttr ".pt[63]" -type "float3" 0 0.1294411 -0.72032154 ;
	setAttr ".pt[64]" -type "float3" 0 0.1294411 -0.72032154 ;
	setAttr ".pt[65]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[66]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[67]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[68]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[69]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[70]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[71]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[72]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[73]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[74]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[76]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[77]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[78]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[79]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[80]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[81]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[82]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[83]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[84]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[85]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[86]" -type "float3" 0 0 -0.37889332 ;
	setAttr ".pt[87]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[88]" -type "float3" 0 0 -0.37827942 ;
	setAttr ".pt[89]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[90]" -type "float3" 0 0 -0.60935318 ;
	setAttr ".pt[91]" -type "float3" 0 0 -0.74988067 ;
	setAttr ".pt[92]" -type "float3" 0 0 -0.74988067 ;
	setAttr ".pt[93]" -type "float3" 0 0 -0.74926674 ;
	setAttr ".pt[94]" -type "float3" 0 0 -0.74926674 ;
	setAttr ".pt[95]" -type "float3" 0 0 -0.65024078 ;
	setAttr ".pt[96]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[97]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[98]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[99]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[100]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[101]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[102]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[103]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[104]" -type "float3" 0 0 -0.13137339 ;
	setAttr ".pt[105]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[106]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[107]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[120]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[121]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[124]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[125]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[128]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[129]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[132]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[133]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[136]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[137]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[140]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[141]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[144]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[145]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[148]" -type "float3" 0 0 -0.28594869 ;
	setAttr ".pt[149]" -type "float3" 0 0 -0.28594869 ;
	setAttr -s 152 ".vt[0:151]"  -0.5 -0.625 0.25 -0.30000001 -0.625 0.25
		 -0.10000001 -0.625 0.25 0.099999994 -0.625 0.25 0.30000001 -0.625 0.25 0.5 -0.625 0.25
		 -0.5 -0.375 0.25 -0.30000001 -0.375 0.25 -0.10000001 -0.375 0.25 0.099999994 -0.375 0.25
		 0.30000001 -0.375 0.25 0.5 -0.375 0.25 -0.5 -0.125 0.25 -0.30000001 -0.125 0.25 -0.10000001 -0.125 0.25
		 0.099999994 -0.125 0.25 0.30000001 -0.125 0.25 0.5 -0.125 0.25 -0.5 0.125 0.25 -0.30000001 0.125 0.25
		 -0.10000001 0.125 0.25 0.099999994 0.125 0.25 0.30000001 0.125 0.25 0.5 0.125 0.25
		 -0.5 0.375 0.25 -0.30000001 0.375 0.25 -0.10000001 0.375 0.25 0.099999994 0.375 0.25
		 0.30000001 0.375 0.25 0.5 0.375 0.25 -0.5 0.625 0.25 -0.30000001 0.625 0.25 -0.10000001 0.625 0.25
		 0.099999994 0.625 0.25 0.30000001 0.625 0.25 0.5 0.625 0.25 -0.5 0.625 0.15000001
		 -0.30000001 0.625 0.15000001 -0.10000001 0.625 0.15000001 0.099999994 0.625 0.15000001
		 0.30000001 0.625 0.15000001 0.5 0.625 0.15000001 -0.5 0.625 0.050000004 -0.30000001 0.625 0.050000004
		 -0.10000001 0.625 0.050000004 0.099999994 0.625 0.050000004 0.30000001 0.625 0.050000004
		 0.5 0.625 0.050000004 -0.5 0.625 -0.049999997 -0.30000001 0.625 -0.049999997 -0.10000001 0.625 -0.049999997
		 0.099999994 0.625 -0.049999997 0.30000001 0.625 -0.049999997 0.5 0.625 -0.049999997
		 -0.5 0.625 -0.15000001 -0.30000001 0.625 -0.15000001 -0.10000001 0.625 -0.15000001
		 0.099999994 0.625 -0.15000001 0.30000001 0.625 -0.15000001 0.5 0.625 -0.15000001
		 -0.5 0.625 -0.25 -0.30000001 0.625 -0.25 -0.10000001 0.625 -0.25 0.099999994 0.625 -0.25
		 0.30000001 0.625 -0.25 0.5 0.625 -0.25 -0.5 0.375 -0.25 -0.30000001 0.375 -0.25 -0.10000001 0.375 -0.25
		 0.099999994 0.375 -0.25 0.30000001 0.375 -0.25 0.5 0.375 -0.25 -0.5 0.125 -0.25 -0.30000001 0.125 -0.25
		 -0.10000001 0.125 -0.25 0.099999994 0.125 -0.25 0.30000001 0.125 -0.25 0.5 0.125 -0.25
		 -0.5 -0.125 -0.25 -0.30000001 -0.125 -0.25 -0.10000001 -0.125 -0.25 0.099999994 -0.125 -0.25
		 0.30000001 -0.125 -0.25 0.5 -0.125 -0.25 -0.5 -0.375 -0.25 -0.30000001 -0.375 -0.25
		 -0.10000001 -0.375 -0.25 0.099999994 -0.375 -0.25 0.30000001 -0.375 -0.25 0.5 -0.375 -0.25
		 -0.5 -0.625 -0.25 -0.30000001 -0.625 -0.25 -0.10000001 -0.625 -0.25 0.099999994 -0.625 -0.25
		 0.30000001 -0.625 -0.25 0.5 -0.625 -0.25 -0.5 -0.625 -0.15000001 -0.30000001 -0.625 -0.15000001
		 -0.10000001 -0.625 -0.15000001 0.099999994 -0.625 -0.15000001 0.30000001 -0.625 -0.15000001
		 0.5 -0.625 -0.15000001 -0.5 -0.625 -0.050000004 -0.30000001 -0.625 -0.050000004 -0.10000001 -0.625 -0.050000004
		 0.099999994 -0.625 -0.050000004 0.30000001 -0.625 -0.050000004 0.5 -0.625 -0.050000004
		 -0.5 -0.625 0.049999997 -0.30000001 -0.625 0.049999997 -0.10000001 -0.625 0.049999997
		 0.099999994 -0.625 0.049999997 0.30000001 -0.625 0.049999997 0.5 -0.625 0.049999997
		 -0.5 -0.625 0.15000001 -0.30000001 -0.625 0.15000001 -0.10000001 -0.625 0.15000001
		 0.099999994 -0.625 0.15000001 0.30000001 -0.625 0.15000001 0.5 -0.625 0.15000001
		 0.5 -0.375 -0.15000001 0.5 -0.375 -0.050000004 0.5 -0.375 0.049999997 0.5 -0.375 0.15000001
		 0.5 -0.125 -0.15000001 0.5 -0.125 -0.050000004 0.5 -0.125 0.049999997 0.5 -0.125 0.15000001
		 0.5 0.125 -0.15000001 0.5 0.125 -0.050000004 0.5 0.125 0.049999997 0.5 0.125 0.15000001
		 0.5 0.375 -0.15000001 0.5 0.375 -0.050000004 0.5 0.375 0.049999997 0.5 0.375 0.15000001
		 -0.5 -0.375 -0.15000001 -0.5 -0.375 -0.050000004 -0.5 -0.375 0.049999997 -0.5 -0.375 0.15000001
		 -0.5 -0.125 -0.15000001 -0.5 -0.125 -0.050000004 -0.5 -0.125 0.049999997 -0.5 -0.125 0.15000001
		 -0.5 0.125 -0.15000001 -0.5 0.125 -0.050000004 -0.5 0.125 0.049999997 -0.5 0.125 0.15000001
		 -0.5 0.375 -0.15000001 -0.5 0.375 -0.050000004 -0.5 0.375 0.049999997 -0.5 0.375 0.15000001;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 1 7 8 1 8 9 1 9 10 1
		 10 11 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1
		 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 48 49 1 49 50 1
		 50 51 1 51 52 1 52 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 60 61 0 61 62 0 62 63 0
		 63 64 0 64 65 0 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 72 73 1 73 74 1 74 75 1 75 76 1
		 76 77 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1
		 90 91 0 91 92 0 92 93 0 93 94 0 94 95 0 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1
		 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 108 109 1 109 110 1 110 111 1 111 112 1
		 112 113 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 0 6 0 1 7 1 2 8 1 3 9 1
		 4 10 1 5 11 0 6 12 0 7 13 1 8 14 1 9 15 1 10 16 1 11 17 0 12 18 0 13 19 1 14 20 1
		 15 21 1 16 22 1 17 23 0 18 24 0 19 25 1 20 26 1 21 27 1 22 28 1 23 29 0 24 30 0 25 31 1
		 26 32 1 27 33 1 28 34 1 29 35 0 30 36 0 31 37 1 32 38 1 33 39 1 34 40 1 35 41 0 36 42 0
		 37 43 1 38 44 1 39 45 1 40 46 1 41 47 0 42 48 0 43 49 1 44 50 1 45 51 1 46 52 1 47 53 0
		 48 54 0 49 55 1 50 56 1 51 57 1 52 58 1 53 59 0 54 60 0 55 61 1 56 62 1 57 63 1 58 64 1
		 59 65 0 60 66 0 61 67 1 62 68 1 63 69 1 64 70 1 65 71 0;
	setAttr ".ed[166:299]" 66 72 0 67 73 1 68 74 1 69 75 1 70 76 1 71 77 0 72 78 0
		 73 79 1 74 80 1 75 81 1 76 82 1 77 83 0 78 84 0 79 85 1 80 86 1 81 87 1 82 88 1 83 89 0
		 84 90 0 85 91 1 86 92 1 87 93 1 88 94 1 89 95 0 90 96 0 91 97 1 92 98 1 93 99 1 94 100 1
		 95 101 0 96 102 0 97 103 1 98 104 1 99 105 1 100 106 1 101 107 0 102 108 0 103 109 1
		 104 110 1 105 111 1 106 112 1 107 113 0 108 114 0 109 115 1 110 116 1 111 117 1 112 118 1
		 113 119 0 114 0 0 115 1 1 116 2 1 117 3 1 118 4 1 119 5 0 89 120 1 120 121 1 121 122 1
		 122 123 1 123 11 1 83 124 1 124 125 1 125 126 1 126 127 1 127 17 1 77 128 1 128 129 1
		 129 130 1 130 131 1 131 23 1 71 132 1 132 133 1 133 134 1 134 135 1 135 29 1 101 120 1
		 107 121 1 113 122 1 119 123 1 120 124 1 121 125 1 122 126 1 123 127 1 124 128 1 125 129 1
		 126 130 1 127 131 1 128 132 1 129 133 1 130 134 1 131 135 1 132 59 1 133 53 1 134 47 1
		 135 41 1 84 136 1 136 137 1 137 138 1 138 139 1 139 6 1 78 140 1 140 141 1 141 142 1
		 142 143 1 143 12 1 72 144 1 144 145 1 145 146 1 146 147 1 147 18 1 66 148 1 148 149 1
		 149 150 1 150 151 1 151 24 1 96 136 1 102 137 1 108 138 1 114 139 1 136 140 1 137 141 1
		 138 142 1 139 143 1 140 144 1 141 145 1 142 146 1 143 147 1 144 148 1 145 149 1 146 150 1
		 147 151 1 148 54 1 149 48 1 150 42 1 151 36 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 0 101 -6 -101
		mu 0 4 0 1 7 6
		f 4 1 102 -7 -102
		mu 0 4 1 2 8 7
		f 4 2 103 -8 -103
		mu 0 4 2 3 9 8
		f 4 3 104 -9 -104
		mu 0 4 3 4 10 9
		f 4 4 105 -10 -105
		mu 0 4 4 5 11 10
		f 4 5 107 -11 -107
		mu 0 4 6 7 13 12
		f 4 6 108 -12 -108
		mu 0 4 7 8 14 13
		f 4 7 109 -13 -109
		mu 0 4 8 9 15 14
		f 4 8 110 -14 -110
		mu 0 4 9 10 16 15
		f 4 9 111 -15 -111
		mu 0 4 10 11 17 16
		f 4 10 113 -16 -113
		mu 0 4 12 13 19 18
		f 4 11 114 -17 -114
		mu 0 4 13 14 20 19
		f 4 12 115 -18 -115
		mu 0 4 14 15 21 20
		f 4 13 116 -19 -116
		mu 0 4 15 16 22 21
		f 4 14 117 -20 -117
		mu 0 4 16 17 23 22
		f 4 15 119 -21 -119
		mu 0 4 18 19 25 24
		f 4 16 120 -22 -120
		mu 0 4 19 20 26 25
		f 4 17 121 -23 -121
		mu 0 4 20 21 27 26
		f 4 18 122 -24 -122
		mu 0 4 21 22 28 27
		f 4 19 123 -25 -123
		mu 0 4 22 23 29 28
		f 4 20 125 -26 -125
		mu 0 4 24 25 31 30
		f 4 21 126 -27 -126
		mu 0 4 25 26 32 31
		f 4 22 127 -28 -127
		mu 0 4 26 27 33 32
		f 4 23 128 -29 -128
		mu 0 4 27 28 34 33
		f 4 24 129 -30 -129
		mu 0 4 28 29 35 34
		f 4 25 131 -31 -131
		mu 0 4 30 31 37 36
		f 4 26 132 -32 -132
		mu 0 4 31 32 38 37
		f 4 27 133 -33 -133
		mu 0 4 32 33 39 38
		f 4 28 134 -34 -134
		mu 0 4 33 34 40 39
		f 4 29 135 -35 -135
		mu 0 4 34 35 41 40
		f 4 30 137 -36 -137
		mu 0 4 36 37 43 42
		f 4 31 138 -37 -138
		mu 0 4 37 38 44 43
		f 4 32 139 -38 -139
		mu 0 4 38 39 45 44
		f 4 33 140 -39 -140
		mu 0 4 39 40 46 45
		f 4 34 141 -40 -141
		mu 0 4 40 41 47 46
		f 4 35 143 -41 -143
		mu 0 4 42 43 49 48
		f 4 36 144 -42 -144
		mu 0 4 43 44 50 49
		f 4 37 145 -43 -145
		mu 0 4 44 45 51 50
		f 4 38 146 -44 -146
		mu 0 4 45 46 52 51
		f 4 39 147 -45 -147
		mu 0 4 46 47 53 52
		f 4 40 149 -46 -149
		mu 0 4 48 49 55 54
		f 4 41 150 -47 -150
		mu 0 4 49 50 56 55
		f 4 42 151 -48 -151
		mu 0 4 50 51 57 56
		f 4 43 152 -49 -152
		mu 0 4 51 52 58 57
		f 4 44 153 -50 -153
		mu 0 4 52 53 59 58
		f 4 45 155 -51 -155
		mu 0 4 54 55 61 60
		f 4 46 156 -52 -156
		mu 0 4 55 56 62 61
		f 4 47 157 -53 -157
		mu 0 4 56 57 63 62
		f 4 48 158 -54 -158
		mu 0 4 57 58 64 63
		f 4 49 159 -55 -159
		mu 0 4 58 59 65 64
		f 4 50 161 -56 -161
		mu 0 4 60 61 67 66
		f 4 51 162 -57 -162
		mu 0 4 61 62 68 67
		f 4 52 163 -58 -163
		mu 0 4 62 63 69 68
		f 4 53 164 -59 -164
		mu 0 4 63 64 70 69
		f 4 54 165 -60 -165
		mu 0 4 64 65 71 70
		f 4 55 167 -61 -167
		mu 0 4 66 67 73 72
		f 4 56 168 -62 -168
		mu 0 4 67 68 74 73
		f 4 57 169 -63 -169
		mu 0 4 68 69 75 74
		f 4 58 170 -64 -170
		mu 0 4 69 70 76 75
		f 4 59 171 -65 -171
		mu 0 4 70 71 77 76
		f 4 60 173 -66 -173
		mu 0 4 72 73 79 78
		f 4 61 174 -67 -174
		mu 0 4 73 74 80 79
		f 4 62 175 -68 -175
		mu 0 4 74 75 81 80
		f 4 63 176 -69 -176
		mu 0 4 75 76 82 81
		f 4 64 177 -70 -177
		mu 0 4 76 77 83 82
		f 4 65 179 -71 -179
		mu 0 4 78 79 85 84
		f 4 66 180 -72 -180
		mu 0 4 79 80 86 85
		f 4 67 181 -73 -181
		mu 0 4 80 81 87 86
		f 4 68 182 -74 -182
		mu 0 4 81 82 88 87
		f 4 69 183 -75 -183
		mu 0 4 82 83 89 88
		f 4 70 185 -76 -185
		mu 0 4 84 85 91 90
		f 4 71 186 -77 -186
		mu 0 4 85 86 92 91
		f 4 72 187 -78 -187
		mu 0 4 86 87 93 92
		f 4 73 188 -79 -188
		mu 0 4 87 88 94 93
		f 4 74 189 -80 -189
		mu 0 4 88 89 95 94
		f 4 75 191 -81 -191
		mu 0 4 90 91 97 96
		f 4 76 192 -82 -192
		mu 0 4 91 92 98 97
		f 4 77 193 -83 -193
		mu 0 4 92 93 99 98
		f 4 78 194 -84 -194
		mu 0 4 93 94 100 99
		f 4 79 195 -85 -195
		mu 0 4 94 95 101 100
		f 4 80 197 -86 -197
		mu 0 4 96 97 103 102
		f 4 81 198 -87 -198
		mu 0 4 97 98 104 103
		f 4 82 199 -88 -199
		mu 0 4 98 99 105 104
		f 4 83 200 -89 -200
		mu 0 4 99 100 106 105
		f 4 84 201 -90 -201
		mu 0 4 100 101 107 106
		f 4 85 203 -91 -203
		mu 0 4 102 103 109 108
		f 4 86 204 -92 -204
		mu 0 4 103 104 110 109
		f 4 87 205 -93 -205
		mu 0 4 104 105 111 110
		f 4 88 206 -94 -206
		mu 0 4 105 106 112 111
		f 4 89 207 -95 -207
		mu 0 4 106 107 113 112
		f 4 90 209 -96 -209
		mu 0 4 108 109 115 114
		f 4 91 210 -97 -210
		mu 0 4 109 110 116 115
		f 4 92 211 -98 -211
		mu 0 4 110 111 117 116
		f 4 93 212 -99 -212
		mu 0 4 111 112 118 117
		f 4 94 213 -100 -213
		mu 0 4 112 113 119 118
		f 4 95 215 -1 -215
		mu 0 4 114 115 121 120
		f 4 96 216 -2 -216
		mu 0 4 115 116 122 121
		f 4 97 217 -3 -217
		mu 0 4 116 117 123 122
		f 4 98 218 -4 -218
		mu 0 4 117 118 124 123
		f 4 99 219 -5 -219
		mu 0 4 118 119 125 124
		f 4 -196 -190 220 -241
		mu 0 4 127 126 131 132
		f 4 -202 240 221 -242
		mu 0 4 128 127 132 133
		f 4 -208 241 222 -243
		mu 0 4 129 128 133 134
		f 4 -214 242 223 -244
		mu 0 4 130 129 134 135
		f 4 -220 243 224 -106
		mu 0 4 5 130 135 11
		f 4 -221 -184 225 -245
		mu 0 4 132 131 136 137
		f 4 -222 244 226 -246
		mu 0 4 133 132 137 138
		f 4 -223 245 227 -247
		mu 0 4 134 133 138 139
		f 4 -224 246 228 -248
		mu 0 4 135 134 139 140
		f 4 -225 247 229 -112
		mu 0 4 11 135 140 17
		f 4 -226 -178 230 -249
		mu 0 4 137 136 141 142
		f 4 -227 248 231 -250
		mu 0 4 138 137 142 143
		f 4 -228 249 232 -251
		mu 0 4 139 138 143 144
		f 4 -229 250 233 -252
		mu 0 4 140 139 144 145
		f 4 -230 251 234 -118
		mu 0 4 17 140 145 23
		f 4 -231 -172 235 -253
		mu 0 4 142 141 146 147
		f 4 -232 252 236 -254
		mu 0 4 143 142 147 148
		f 4 -233 253 237 -255
		mu 0 4 144 143 148 149
		f 4 -234 254 238 -256
		mu 0 4 145 144 149 150
		f 4 -235 255 239 -124
		mu 0 4 23 145 150 29
		f 4 -236 -166 -160 -257
		mu 0 4 147 146 151 152
		f 4 -237 256 -154 -258
		mu 0 4 148 147 152 153
		f 4 -238 257 -148 -259
		mu 0 4 149 148 153 154
		f 4 -239 258 -142 -260
		mu 0 4 150 149 154 155
		f 4 -240 259 -136 -130
		mu 0 4 29 150 155 35
		f 4 190 280 -261 184
		mu 0 4 156 157 162 161
		f 4 196 281 -262 -281
		mu 0 4 157 158 163 162
		f 4 202 282 -263 -282
		mu 0 4 158 159 164 163
		f 4 208 283 -264 -283
		mu 0 4 159 160 165 164
		f 4 214 100 -265 -284
		mu 0 4 160 0 6 165
		f 4 260 284 -266 178
		mu 0 4 161 162 167 166
		f 4 261 285 -267 -285
		mu 0 4 162 163 168 167
		f 4 262 286 -268 -286
		mu 0 4 163 164 169 168
		f 4 263 287 -269 -287
		mu 0 4 164 165 170 169
		f 4 264 106 -270 -288
		mu 0 4 165 6 12 170
		f 4 265 288 -271 172
		mu 0 4 166 167 172 171
		f 4 266 289 -272 -289
		mu 0 4 167 168 173 172
		f 4 267 290 -273 -290
		mu 0 4 168 169 174 173
		f 4 268 291 -274 -291
		mu 0 4 169 170 175 174
		f 4 269 112 -275 -292
		mu 0 4 170 12 18 175
		f 4 270 292 -276 166
		mu 0 4 171 172 177 176
		f 4 271 293 -277 -293
		mu 0 4 172 173 178 177
		f 4 272 294 -278 -294
		mu 0 4 173 174 179 178
		f 4 273 295 -279 -295
		mu 0 4 174 175 180 179
		f 4 274 118 -280 -296
		mu 0 4 175 18 24 180
		f 4 275 296 154 160
		mu 0 4 176 177 182 181
		f 4 276 297 148 -297
		mu 0 4 177 178 183 182
		f 4 277 298 142 -298
		mu 0 4 178 179 184 183
		f 4 278 299 136 -299
		mu 0 4 179 180 185 184
		f 4 279 124 130 -300
		mu 0 4 180 24 30 185;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1";
	rename -uid "A33A1798-4563-64A0-E69C-A4B799D960D9";
	setAttr ".t" -type "double3" 0 -0.0068642382240031163 2.0248918705315773 ;
	setAttr ".s" -type "double3" 1 0.75 0.05 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "9AC759D0-4080-4F29-4DD1-F38F91F7C622";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "antenna2";
	rename -uid "828BECAC-4A0A-0AD1-11D6-BDB5BD8B8822";
	setAttr ".t" -type "double3" 0.35463590653190247 1.3774119756121566 -3.1957828039658907 ;
	setAttr ".s" -type "double3" 0.05 0.25 0.05 ;
createNode mesh -n "antennaShape2" -p "antenna2";
	rename -uid "98E6E031-4B75-4B99-D5B3-13ACE2488E87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "antennaWire1";
	rename -uid "A1E9C282-4A4E-E4C2-10AD-ECA13ED4BA95";
	setAttr ".t" -type "double3" 0.35468652312906385 1.6269502189934459 -3.1913183286090914 ;
	setAttr ".s" -type "double3" 0.02 1 0.02 ;
createNode mesh -n "antennaWire1Shape" -p "antennaWire1";
	rename -uid "3350E2EC-452F-5FCA-27F0-39A4B61E28F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "commandBlockMain";
	rename -uid "187420FD-4494-FBC3-F649-D3804C698923";
	setAttr ".rp" -type "double3" 0 0.25022885309221321 -2.4527327231666924 ;
	setAttr ".sp" -type "double3" 0 0.25022885309221321 -2.4527327231666924 ;
createNode mesh -n "commandBlockMainShape" -p "commandBlockMain";
	rename -uid "0C5726EC-4A4F-0F15-19D3-9C8F93B9312C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:158]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 15 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 11 "f[55]" "f[71]" "f[86]" "f[90]" "f[99]" "f[102]" "f[110]" "f[112]" "f[119]" "f[124]" "f[127:150]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 6 "e[309]" "e[312]" "e[314:319]" "e[321:326]" "e[329:338]" "e[340:343]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[2]" "f[7]" "f[14]" "f[33]" "f[46:47]" "f[61:62]" "f[76]" "f[151:158]";
	setAttr ".gtag[3].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[6].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[8].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "front";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 8 "f[0]" "f[3:4]" "f[8:10]" "f[16:18]" "f[25:27]" "f[37:39]" "f[52:53]" "f[68]";
	setAttr ".gtag[10].gtagnm" -type "string" "left";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 11 "f[1]" "f[5:6]" "f[11:13]" "f[19:22]" "f[28:32]" "f[40:45]" "f[56:60]" "f[72:75]" "f[87:89]" "f[100:101]" "f[111]";
	setAttr ".gtag[11].gtagnm" -type "string" "right";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 11 "f[15]" "f[23:24]" "f[34:36]" "f[48:51]" "f[63:67]" "f[77:82]" "f[91:95]" "f[103:106]" "f[113:115]" "f[120:121]" "f[125]";
	setAttr ".gtag[12].gtagnm" -type "string" "sides";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[13].gtagnm" -type "string" "top";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 8 "f[54]" "f[69:70]" "f[83:85]" "f[96:98]" "f[107:109]" "f[116:118]" "f[122:123]" "f[126]";
	setAttr ".gtag[14].gtagnm" -type "string" "topRing";
	setAttr ".gtag[14].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 334 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.45833334 0 0.45833334
		 0.041666668 0.375 0.041666668 0.33333331 0.041666668 0.33333331 0 0.375 1.000000119209
		 0.375 0.95833349 0.45833334 0.95833349 0.45833334 1.000000119209 0.54166669 0 0.54166669
		 0.041666668 0.45833334 0.083333336 0.375 0.083333336 0.29166666 0.041666668 0.29166666
		 0 0.33333331 0.083333336 0.375 0.91666681 0.45349607 0.91666681 0.45833337 0.91969013
		 0.45833334 1.000000119209 0.45833334 0.95833349 0.54166669 0.95833349 0.54166669
		 1.000000119209 0.625 0 0.625 0.041666668 0.45833334 0.041666668 0.54166669 0.041666668
		 0.54166669 0.083333336 0.45833334 0.083333336 0.45833334 0.083333336 0.45833334 0.125
		 0.375 0.125 0.375 0.083333336 0.25 0.041666668 0.25 0 0.29166666 0.083333336 0.375
		 0.125 0.33333331 0.125 0.45833337 0.91969013 0.46473289 0.92368984 0.48145899 0.92901635
		 0.5 0.9308517 0.5185411 0.92901635 0.53526717 0.92368984 0.54166669 0.91969013 0.375
		 0.87500012 0.44845042 0.87500012 0.4429366 0.88176352 0.44 0.89335167 0.4429366 0.90493983
		 0.45145899 0.91539365 0.54166669 1.000000119209 0.54166669 0.95833349 0.625 0.95833349
		 0.625 1.000000119209 0.66666657 0 0.66666657 0.041666668 0.625 0.083333336 0.54166669
		 0.083333336 0.45833334 0.083333336 0.54166669 0.083333336 0.54166669 0.125 0.45833334
		 0.125 0.45833334 0.16666667 0.375 0.16666667 0.20833334 0.041666668 0.20833334 0
		 0.25 0.083333336 0.29166666 0.125 0.375 0.16666667 0.33333331 0.16666667 0.54166669
		 0.91969013 0.5465039 0.91666681 0.625 0.91666681 0.375 0.83333343 0.45833334 0.83333343
		 0.45833334 0.86701322 0.45145899 0.8713097 0.70833325 0 0.70833325 0.041666668 0.66666657
		 0.083333336 0.54166669 0.083333336 0.625 0.083333336 0.625 0.125 0.54166669 0.125
		 0.54166669 0.16666667 0.45833334 0.16666667 0.45833334 0.16666667 0.45833334 0.20833334
		 0.375 0.20833334 0.16666667 0.041666668 0.16666667 0 0.20833334 0.083333336 0.25
		 0.125 0.29166666 0.16666667 0.33333331 0.20833334 0.54854107 0.91539365 0.5570634
		 0.90493977 0.56 0.89335167 0.55706346 0.88176352 0.55154961 0.87500012 0.625 0.87500012
		 0.375 0.79166675 0.45833334 0.79166675 0.45833334 0.83333343 0.54166669 0.83333343
		 0.54166669 0.86701322 0.53526717 0.86301351 0.51854104 0.857687 0.5 0.85585171 0.48145902
		 0.857687 0.46473289 0.86301351 0.45833334 0.86701322 0.74999994 0 0.74999994 0.041666668
		 0.70833325 0.083333336 0.66666657 0.083333336 0.66666657 0.125 0.625 0.16666667 0.54166669
		 0.16666667 0.45833334 0.16666667 0.54166669 0.16666667 0.54166669 0.20833334 0.45833334
		 0.20833334 0.45833334 0.25 0.375 0.25 0.125 0.041666668 0.125 0 0.16666667 0.083333336
		 0.20833334 0.125 0.25 0.16666667 0.29166666 0.20833334 0.33333331 0.25 0.54854107
		 0.87130976 0.54166669 0.86701322 0.54166669 0.83333343 0.625 0.83333343 0.375 0.75000006
		 0.45833334 0.75000006 0.45833334 0.79166675 0.54166669 0.79166675 0.74999994 0 0.79166663
		 0 0.79166663 0.041666668 0.74999994 0.041666668 0.74999994 0.083333336 0.70833325
		 0.125 0.66666657 0.125 0.66666657 0.16666667 0.54166669 0.16666667 0.625 0.16666667
		 0.625 0.20833334 0.54166669 0.20833334 0.45833334 0.20833334 0.54166669 0.20833334
		 0.54166669 0.25 0.45833334 0.25 0.45833334 0.29166666 0.375 0.29166666 0.375 0.70833337
		 0.45833334 0.70833337 0.125 0.083333336 0.16666667 0.125 0.20833334 0.16666667 0.25
		 0.20833334 0.29166666 0.25 0.54166669 0.79166675 0.625 0.79166675 0.54166669 0.75000006
		 0.83333331 0 0.83333331 0.041666668 0.79166663 0.083333336 0.74999994 0.083333336
		 0.74999994 0.125 0.70833325 0.125 0.70833325 0.16666667 0.625 0.16666667 0.66666657
		 0.16666667 0.66666657 0.20833334 0.625 0.20833334 0.54166669 0.20833334 0.625 0.25
		 0.54166669 0.25 0.45833334 0.25 0.54166669 0.29166666 0.45833334 0.29166666 0.45833334
		 0.33333331 0.375 0.33333331 0.375 0.66666669 0.45833334 0.66666669 0.125 0.125 0.16666667
		 0.16666667 0.25 0.16666667 0.25 0.20833334 0.20833334 0.20833334 0.20833334 0.16666667
		 0.25 0.25 0.625 0.75000006 0.83333331 0 0.875 0 0.875 0.041666668 0.83333331 0.041666668
		 0.83333331 0.083333336 0.79166663 0.125 0.74999994 0.125 0.74999994 0.125 0.74999994
		 0.16666667 0.70833325 0.16666667 0.70833325 0.20833334 0.66666657 0.25 0.625 0.29166666
		 0.54166669 0.29166666 0.54166669 0.33333331 0.45833334 0.37499997 0.375 0.37499997
		 0.375 0.625 0.45833334 0.625 0.125 0.16666667 0.16666667 0.20833334 0.16666667 0.16666667
		 0.20833334 0.25 0.20833334 0.20833334 0.54166669 0.70833337 0.625 0.70833337 0.875
		 0.083333336 0.83333331 0.083333336 0.83333331 0.125 0.74999994 0.125 0.79166663 0.125
		 0.79166663 0.16666667 0.74999994 0.16666667 0.74999994 0.20833334 0.70833325 0.20833334
		 0.70833325 0.25 0.625 0.29166666 0.625 0.33333331 0.54166669 0.37499997 0.45833334
		 0.41666663 0.375 0.41666663 0.375 0.58333331 0.45833334 0.58333331 0.125 0.20833334
		 0.125 0.16666667 0.16666667 0.25 0.16666667 0.20833334 0.54166669 0.66666669 0.625
		 0.66666669 0.875 0.125 0.83333331 0.125;
	setAttr ".uvst[0].uvsp[250:333]" 0.83333331 0.16666667 0.79166663 0.16666667
		 0.79166663 0.20833334 0.74999994 0.20833334 0.74999994 0.20833334 0.74999994 0.25
		 0.625 0.37499997 0.45833334 0.37499997 0.54166669 0.37499997 0.54166669 0.41666663
		 0.45833334 0.41666663 0.45833334 0.45833328 0.375 0.45833328 0.375 0.54166663 0.45833334
		 0.54166663 0.16666667 0.25 0.125 0.25 0.54166669 0.625 0.625 0.625 0.875 0.16666667
		 0.83333331 0.16666667 0.79166663 0.16666667 0.83333331 0.16666667 0.83333331 0.20833334
		 0.79166663 0.20833334 0.79166663 0.20833334 0.79166663 0.25 0.625 0.41666663 0.54166669
		 0.41666663 0.54166669 0.45833328 0.45833334 0.49999994 0.375 0.49999994 0.54166669
		 0.58333331 0.625 0.58333331 0.875 0.20833334 0.83333331 0.20833334 0.79166663 0.20833334
		 0.83333331 0.25 0.79166663 0.25 0.625 0.45833328 0.54166669 0.49999994 0.54166669
		 0.54166663 0.625 0.54166663 0.83333331 0.20833334 0.875 0.20833334 0.875 0.25 0.83333331
		 0.25 0.625 0.49999994 0.375 0.49999994 0.45833334 0.49999994 0.45833334 0.54166663
		 0.375 0.54166663 0.375 0.54166663 0.375 0.49999994 0.45833334 0.49999994 0.54166669
		 0.49999994 0.54166669 0.54166663 0.45833334 0.54166663 0.375 0.54166663 0.375 0.49999994
		 0.45833334 0.49999994 0.54166669 0.49999994 0.625 0.49999994 0.625 0.54166663 0.54166669
		 0.54166663 0.45833334 0.54166663 0.54166669 0.49999994 0.625 0.49999994 0.625 0.54166663
		 0.54166669 0.54166663 0.625 0.49999994 0.625 0.54166663 0.45833334 0.58333331 0.45833334
		 0.54166663 0.54166669 0.54166663 0.54166669 0.58333331 0.45833334 0.625 0.54166669
		 0.625 0.45833334 0.66666669 0.54166669 0.66666669 0.45833334 0.70833337 0.54166669
		 0.70833337 0.45833334 0.75000006 0.54166669 0.75000006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 186 ".vt";
	setAttr ".vt[0:165]"  -0.625 -0.49977115 -1.4527328 -0.20833334 -0.49977115 -1.4527328
		 -0.20833334 -0.24977112 -1.4527328 -0.625 -0.24977112 -1.4527328 -0.625 -0.49977115 -1.78606606
		 -0.625 -0.24977115 -1.78606606 -0.20833334 -0.49977115 -1.78606606 0.20833331 -0.49977115 -1.4527328
		 0.20833331 -0.24977115 -1.4527328 -0.20833334 0.00022885203 -1.4527328 -0.625 0.00022885203 -1.4527328
		 -0.625 -0.49977115 -2.11939931 -0.625 -0.24977115 -2.11939931 -0.625 0.00022885203 -1.78606606
		 -0.20833334 -0.49977115 -2.095212936 -0.23251969 -0.49977115 -2.11939931 0.20833331 -0.49977115 -1.78606606
		 0.625 -0.49977115 -1.4527328 0.625 -0.24977115 -1.4527328 0.20833331 0.00022885203 -1.4527328
		 -0.20833334 0.25022885 -1.4527328 -0.625 0.25022885 -1.4527328 -0.625 -0.49977115 -2.4527328
		 -0.625 -0.24977115 -2.4527328 -0.625 0.00022885203 -2.11939931 -0.625 0.25022885 -1.78606606
		 0.20833331 -0.49977115 -2.095212936 -0.17633562 -0.49977115 -2.063215256 -0.092705123 -0.49977115 -2.020603418
		 -8.9406971e-09 -0.49977115 -2.0059204102 0.092705093 -0.49977115 -2.020603418 0.17633557 -0.49977115 -2.063215256
		 -0.25774795 -0.49977115 -2.4527328 -0.28531703 -0.49977115 -2.39862537 -0.30000007 -0.49977115 -2.30592036
		 -0.28531703 -0.49977115 -2.21321535 -0.24270517 -0.49977115 -2.12958479 0.625 -0.49977115 -1.78606606
		 0.625 -0.24977115 -1.78606606 0.625 0.00022885203 -1.4527328 0.20833331 0.25022885 -1.4527328
		 -0.20833334 0.50022888 -1.4527328 -0.625 0.50022888 -1.4527328 -0.625 -0.49977115 -2.78606606
		 -0.625 -0.24977115 -2.78606606 -0.625 0.00022885203 -2.4527328 -0.625 0.25022885 -2.11939931
		 -0.625 0.50022888 -1.78606606 0.23251963 -0.49977115 -2.11939931 0.625 -0.49977115 -2.11939931
		 -0.20833334 -0.49977115 -2.78606606 -0.20833334 -0.49977115 -2.51662779 -0.24270518 -0.49977115 -2.48225594
		 0.625 -0.24977115 -2.11939931 0.625 0.00022885203 -1.78606606 0.625 0.25022885 -1.4527328
		 0.20833331 0.50022888 -1.4527328 -0.20833334 0.51741767 -1.4527328 -0.625 0.51741767 -1.4527328
		 -0.625 -0.49977115 -3.11939955 -0.625 -0.24977115 -3.11939955 -0.625 0.00022885203 -2.78606606
		 -0.625 0.25022885 -2.4527328 -0.625 0.50022888 -2.11939931 -0.625 0.75022888 -1.78606606
		 0.2577481 -0.49977115 -2.4527328 0.625 -0.49977115 -2.4527328 0.24270511 -0.49977115 -2.12958479
		 0.28531697 -0.49977115 -2.21321535 0.30000001 -0.49977115 -2.30592036 0.28531715 -0.49977115 -2.39862561
		 -0.20833334 -0.49977115 -3.11939955 0.20833331 -0.49977115 -2.78606606 0.20833331 -0.49977115 -2.51662803
		 0.17633569 -0.49977115 -2.54862571 0.092705145 -0.49977115 -2.59123755 0 -0.49977115 -2.60592055
		 -0.092705145 -0.49977115 -2.59123755 -0.17633565 -0.49977115 -2.54862547 0.625 -0.24977115 -2.4527328
		 0.625 0.00022885203 -2.11939931 0.625 0.25022885 -1.78606606 0.625 0.50022888 -1.4527328
		 0.20833331 0.51741767 -1.4527328 -0.20833334 0.76741767 -1.4527328 -0.625 0.76741767 -1.4527328
		 -0.625 -0.49977115 -3.45273304 -0.625 -0.24977115 -3.45273304 -0.625 0.00022885203 -3.11939955
		 -0.625 0.25022885 -2.78606606 -0.625 0.50022888 -2.4527328 -0.625 0.75022888 -2.11939931
		 -0.625 1.00022888184 -1.78606606 0.625 -0.49977115 -2.78606606 0.24270527 -0.49977115 -2.48225594
		 -0.20833334 -0.49977115 -3.45273304 0.20833331 -0.49977115 -3.11939955 0.625 -0.24977115 -2.78606606
		 0.625 0.00022885203 -2.4527328 0.625 0.25022885 -2.11939931 0.625 0.50022888 -1.78606606
		 0.625 0.51741767 -1.4527328 0.20833331 0.76741767 -1.4527328 -0.20833334 1.00022888184 -1.78606606
		 -0.20833334 -0.24977115 -3.45273304 -0.625 0.00022885203 -3.45273304 -0.625 0.25022885 -3.11939955
		 -0.625 0.50022888 -2.78606606 -0.625 0.75022888 -2.4527328 -0.625 1.00022888184 -2.11939955
		 0.625 -0.49977115 -3.11939955 0.20833331 -0.49977115 -3.45273304 0.625 -0.24977115 -3.11939955
		 0.625 0.00022885203 -2.78606606 0.625 0.25022885 -2.4527328 0.625 0.50022888 -2.11939931
		 0.625 0.75022888 -1.78606606 0.625 0.76741767 -1.4527328 0.20833331 1.00022888184 -1.78606606
		 -0.20833334 1.00022888184 -2.11939955 -0.20833334 0.00022885203 -3.45273304 -0.625 0.25022885 -3.45273304
		 -0.625 0.50022888 -3.11939955 -0.625 0.75022888 -2.78606606 -0.625 1.00022888184 -2.4527328
		 0.625 -0.49977115 -3.45273304 0.625 -0.24977115 -3.45273304 0.625 0.00022885203 -3.11939955
		 0.625 0.25022885 -2.78606606 0.625 0.50022888 -2.4527328 0.625 0.75022888 -2.11939931
		 0.625 1.00022888184 -1.78606606 0.20833331 1.00022888184 -2.11939955 -0.20833334 1.00022888184 -2.4527328
		 -0.20833334 0.25022885 -3.45273304 -0.625 0.50022888 -3.45273304 -0.625 0.75022888 -3.11939955
		 -0.625 1.00022888184 -2.78606629 0.20833331 -0.24977115 -3.45273304 0.625 0.00022885203 -3.45273304
		 0.625 0.25022885 -3.11939955 0.625 0.50022888 -2.78606606 0.625 0.75022888 -2.4527328
		 0.625 1.00022888184 -2.11939955 0.20833331 1.00022888184 -2.4527328 -0.20833334 1.00022888184 -2.78606629
		 -0.20833334 0.50022888 -3.45273304 -0.625 0.75022888 -3.45273304 -0.625 1.00022888184 -3.11939955
		 0.20833331 0.00022885203 -3.45273304 0.625 0.25022885 -3.45273304 0.625 0.50022888 -3.11939955
		 0.625 0.75022888 -2.78606606 0.625 1.00022888184 -2.4527328 0.20833331 1.00022888184 -2.78606629
		 -0.20833334 1.00022888184 -3.11939955 -0.20833334 0.75022888 -3.45273304 -0.625 1.00022888184 -3.45273304
		 0.20833331 0.25022885 -3.45273304 0.625 0.50022888 -3.45273304 0.625 0.75022888 -3.11939955
		 0.625 1.00022888184 -2.78606629 0.20833331 1.00022888184 -3.11939955 -0.20833334 1.00022888184 -3.45273304
		 0.20833331 0.50022888 -3.45273304 0.625 0.75022888 -3.45273304;
	setAttr ".vt[166:185]" 0.625 1.00022888184 -3.11939955 0.20833331 1.00022888184 -3.45273304
		 0.20833331 0.75022888 -3.45273304 0.625 1.00022888184 -3.45273304 -0.54828107 1.08853054 -3.88517714
		 -0.20833334 1.08853054 -3.88517714 -0.20833334 0.9822973 -3.88517714 -0.54828107 0.9822973 -3.88517714
		 -0.625 0.98191547 -3.61799145 -0.625 1.08853054 -3.61799145 -0.20833334 1.08853054 -3.61799145
		 0.20833331 1.08853054 -3.88517714 0.20833331 0.9822973 -3.88517714 -0.20833334 0.98191547 -3.61799145
		 0.20833331 1.08853054 -3.61799145 0.52217716 1.08853054 -3.88517714 0.52217716 0.9822973 -3.88517714
		 0.20833331 0.98191547 -3.61799145 0.625 1.08853054 -3.61799145 0.625 0.98191547 -3.61799145;
	setAttr -s 344 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 3 1 3 0 0 3 5 1 5 4 1 4 0 0 4 6 1 6 1 0
		 1 7 0 7 8 1 8 2 0 2 9 0 9 10 0 10 3 0 5 12 1 12 11 1 11 4 0 10 13 1 13 5 1 6 16 1
		 16 7 0 7 17 0 17 18 0 18 8 1 8 19 0 19 9 0 9 20 0 20 21 1 21 10 0 12 23 1 23 22 1
		 22 11 0 13 24 1 24 12 1 21 25 1 25 13 1 16 37 1 37 17 0 37 38 1 38 18 1 18 39 0 39 19 0
		 19 40 0 40 20 1 20 41 0 41 42 0 42 21 0 23 44 1 44 43 1 43 22 0 24 45 1 45 23 1 25 46 1
		 46 24 1 42 47 1 47 25 1 37 49 0 49 53 1 53 38 1 38 54 1 54 39 0 39 55 0 55 40 1 40 56 0
		 56 41 0 41 57 0 57 58 1 58 42 0 44 60 1 60 59 1 59 43 0 45 61 1 61 44 1 46 62 1 62 45 1
		 47 63 1 63 46 1 58 64 1 64 47 1 59 71 1 71 50 0 50 43 1 49 66 0 66 79 0 79 53 1 53 80 1
		 80 54 1 54 81 0 81 55 1 55 82 0 82 56 0 56 83 0 83 57 0 57 84 0 84 85 0 85 58 0 60 87 1
		 87 86 0 86 59 0 61 88 1 88 60 1 62 89 1 89 61 1 63 90 1 90 62 1 64 91 1 91 63 1 85 92 0
		 92 64 1 86 95 0 95 71 1 71 96 0 96 72 0 72 50 1 66 93 0 93 97 1 97 79 1 79 98 0 98 80 1
		 80 99 1 99 81 0 81 100 1 100 82 0 82 101 0 101 83 0 83 102 0 102 84 0 84 103 0 103 92 1
		 87 104 1 104 95 0 88 105 1 105 87 0 89 106 1 106 88 1 90 107 0 107 89 1 91 108 1
		 108 90 0 92 109 0 109 91 1 96 110 1 110 93 0 93 72 1 95 111 0 111 96 1 110 112 0
		 112 97 1 97 113 1 113 98 1 98 114 0 114 99 0 99 115 1 115 100 0 100 116 1 116 101 1
		 101 117 0 117 102 0 102 118 1 118 103 0 103 119 1 119 109 1 105 120 1 120 104 0 106 121 1;
	setAttr ".ed[166:331]" 121 105 0 107 122 0 122 106 1 108 123 0 123 107 1 109 124 0
		 124 108 1 111 125 0 125 110 0 125 126 0 126 112 1 112 127 0 127 113 1 113 128 1 128 114 0
		 114 129 0 129 115 1 115 130 0 130 116 1 116 131 1 131 117 0 131 118 0 118 132 1 132 119 1
		 119 133 1 133 124 1 121 134 1 134 120 0 122 135 0 135 121 0 123 136 0 136 122 1 124 137 0
		 137 123 1 111 138 0 138 126 1 126 139 0 139 127 1 127 140 0 140 128 1 128 141 0 141 129 1
		 129 142 0 142 130 0 130 143 1 143 131 0 143 132 1 132 144 1 144 133 0 133 145 0 145 137 1
		 135 146 1 146 134 0 136 147 1 147 135 0 137 148 0 148 136 0 138 149 0 149 139 1 139 150 0
		 150 140 1 140 151 0 151 141 0 141 152 0 152 142 0 142 153 1 153 143 0 153 144 1 144 154 0
		 154 145 0 145 155 1 155 148 1 147 156 0 156 146 0 148 157 0 157 147 0 149 158 0 158 150 1
		 150 159 0 159 151 1 151 160 0 160 152 0 152 161 0 161 153 0 161 154 1 154 162 1 162 155 1
		 155 163 1 163 157 0 158 164 0 164 159 1 159 165 0 165 160 0 160 166 0 166 161 0 166 162 1
		 162 167 1 167 163 0 164 168 0 168 165 0 165 169 0 169 166 0 169 167 0 170 171 0 171 172 1
		 172 173 0 173 170 0 173 174 0 174 175 1 175 170 0 175 176 1 176 171 1 171 177 0 177 178 1
		 178 172 0 172 179 1 179 174 1 157 175 0 174 147 0 163 176 1 176 180 1 180 177 1 177 181 0
		 181 182 0 182 178 0 178 183 1 183 179 1 179 156 1 167 180 1 180 184 1 184 181 0 184 185 1
		 185 182 0 185 183 1 183 168 1 168 156 0 169 184 0 165 185 0 164 146 1 158 134 1 149 120 1
		 138 104 1 11 15 0 15 14 0 14 6 0 16 26 0 26 48 0 48 49 0 14 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 26 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 51 0 51 50 0
		 22 32 0 32 33 0 33 34 0 34 35 0;
	setAttr ".ed[332:343]" 35 36 0 36 15 0 48 67 0 67 68 0 68 69 0 69 70 0 70 65 0
		 65 66 0 51 52 0 52 32 0 65 94 0 94 73 0;
	setAttr -s 384 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[332:383]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 1e+20 1e+20 1e+20 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0;
	setAttr -s 159 -ch 660 ".fc[0:158]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -4 4 5 6
		mu 0 4 0 3 4 5
		f 4 -7 7 8 -1
		mu 0 4 6 7 8 9
		f 4 9 10 11 -2
		mu 0 4 1 10 11 2
		f 4 12 13 14 -3
		mu 0 4 2 12 13 3
		f 4 -6 15 16 17
		mu 0 4 5 4 14 15
		f 4 -15 18 19 -5
		mu 0 4 3 13 16 4
		f 4 -9 20 21 -10
		mu 0 4 20 21 22 23
		f 4 22 23 24 -11
		mu 0 4 10 24 25 11
		f 4 -12 25 26 -13
		mu 0 4 26 27 28 29
		f 4 27 28 29 -14
		mu 0 4 30 31 32 33
		f 4 -17 30 31 32
		mu 0 4 15 14 34 35
		f 4 -20 33 34 -16
		mu 0 4 4 16 36 14
		f 4 -30 35 36 -19
		mu 0 4 13 37 38 16
		f 4 -22 37 38 -23
		mu 0 4 52 53 54 55
		f 4 -39 39 40 -24
		mu 0 4 24 56 57 25
		f 4 -25 41 42 -26
		mu 0 4 11 25 58 59
		f 4 -27 43 44 -28
		mu 0 4 60 61 62 63
		f 4 45 46 47 -29
		mu 0 4 31 64 65 32
		f 4 -32 48 49 50
		mu 0 4 35 34 66 67
		f 4 -35 51 52 -31
		mu 0 4 14 36 68 34
		f 4 -37 53 54 -34
		mu 0 4 16 38 69 36
		f 4 -48 55 56 -36
		mu 0 4 37 70 71 38
		f 4 57 58 59 -40
		mu 0 4 56 79 80 57
		f 4 -41 60 61 -42
		mu 0 4 25 57 81 58
		f 4 -43 62 63 -44
		mu 0 4 82 83 84 85
		f 4 -45 64 65 -46
		mu 0 4 63 62 86 87
		f 4 66 67 68 -47
		mu 0 4 88 89 90 70
		f 4 -50 69 70 71
		mu 0 4 67 66 91 92
		f 4 -53 72 73 -49
		mu 0 4 34 68 93 66
		f 4 -55 74 75 -52
		mu 0 4 36 69 94 68
		f 4 -57 76 77 -54
		mu 0 4 38 71 95 69
		f 4 -69 78 79 -56
		mu 0 4 70 90 96 71
		f 4 -72 80 81 82
		mu 0 4 75 103 104 76
		f 4 83 84 85 -59
		mu 0 4 79 114 115 80
		f 4 -60 86 87 -61
		mu 0 4 57 80 116 81
		f 4 -62 88 89 -63
		mu 0 4 83 117 118 84
		f 4 -64 90 91 -65
		mu 0 4 85 84 119 120
		f 4 -66 92 93 -67
		mu 0 4 121 122 123 124
		f 4 94 95 96 -68
		mu 0 4 89 125 126 90
		f 4 -71 97 98 99
		mu 0 4 92 91 127 128
		f 4 -74 100 101 -70
		mu 0 4 66 93 129 91
		f 4 -76 102 103 -73
		mu 0 4 68 94 130 93
		f 4 -78 104 105 -75
		mu 0 4 69 95 131 94
		f 4 -80 106 107 -77
		mu 0 4 71 96 132 95
		f 4 -97 108 109 -79
		mu 0 4 90 126 133 96
		f 4 -100 110 111 -81
		mu 0 4 103 138 139 104
		f 4 -82 112 113 114
		mu 0 4 105 140 141 106
		f 4 115 116 117 -85
		mu 0 4 142 143 144 145
		f 4 -86 118 119 -87
		mu 0 4 80 115 146 116
		f 4 -88 120 121 -89
		mu 0 4 81 116 147 148
		f 4 -90 122 123 -91
		mu 0 4 84 118 149 119
		f 4 -92 124 125 -93
		mu 0 4 150 151 152 153
		f 4 -94 126 127 -95
		mu 0 4 154 155 156 157
		f 4 128 129 -109 -96
		mu 0 4 125 158 159 126
		f 4 -99 130 131 -111
		mu 0 4 138 160 161 139
		f 4 -102 132 133 -98
		mu 0 4 91 129 162 127
		f 4 -104 134 135 -101
		mu 0 4 93 130 163 129
		f 4 -106 136 137 -103
		mu 0 4 94 131 164 130
		f 4 -108 138 139 -105
		mu 0 4 95 132 165 131
		f 4 -110 140 141 -107
		mu 0 4 96 133 166 132
		f 4 -114 142 143 144
		mu 0 4 136 167 168 137
		f 4 -112 145 146 -113
		mu 0 4 104 139 169 167
		f 4 -144 147 148 -117
		mu 0 4 143 170 171 144
		f 4 -118 149 150 -119
		mu 0 4 145 144 172 173
		f 4 -120 151 152 -121
		mu 0 4 116 146 174 147
		f 4 -122 153 154 -123
		mu 0 4 118 175 176 149
		f 4 -124 155 156 -125
		mu 0 4 177 178 179 180
		f 4 -126 157 158 -127
		mu 0 4 181 180 182 183
		f 4 -128 159 160 -129
		mu 0 4 184 183 185 186
		f 4 -130 161 162 -141
		mu 0 4 159 158 187 188
		f 4 -134 163 164 -131
		mu 0 4 160 189 190 161
		f 4 -136 165 166 -133
		mu 0 4 129 163 191 162
		f 4 -138 167 168 -135
		mu 0 4 130 164 192 163
		f 4 -140 169 170 -137
		mu 0 4 193 194 195 196
		f 4 -142 171 172 -139
		mu 0 4 132 166 197 165
		f 4 -147 173 174 -143
		mu 0 4 167 169 198 168
		f 4 -175 175 176 -148
		mu 0 4 199 200 201 202
		f 4 -149 177 178 -150
		mu 0 4 144 171 203 172
		f 4 -151 179 180 -152
		mu 0 4 173 172 204 205
		f 4 -153 181 182 -154
		mu 0 4 175 206 207 176
		f 4 -155 183 184 -156
		mu 0 4 178 208 209 179
		f 4 -157 185 186 -158
		mu 0 4 180 179 210 182
		f 4 -159 -187 187 -160
		mu 0 4 183 182 211 185
		f 4 -161 188 189 -162
		mu 0 4 158 212 213 187
		f 4 -163 190 191 -172
		mu 0 4 188 187 214 215
		f 4 -167 192 193 -164
		mu 0 4 189 216 217 190
		f 4 -169 194 195 -166
		mu 0 4 163 192 218 191
		f 4 -171 196 197 -168
		mu 0 4 196 195 219 220
		f 4 -173 198 199 -170
		mu 0 4 165 197 221 222
		f 4 200 201 -176 -174
		mu 0 4 169 223 224 198
		f 4 -177 202 203 -178
		mu 0 4 202 201 225 226
		f 4 -179 204 205 -180
		mu 0 4 172 203 227 204
		f 4 -181 206 207 -182
		mu 0 4 228 229 230 231
		f 4 -183 208 209 -184
		mu 0 4 176 207 232 233
		f 4 -185 210 211 -186
		mu 0 4 179 209 234 210
		f 4 -188 -212 212 -189
		mu 0 4 212 235 236 213
		f 4 -190 213 214 -191
		mu 0 4 187 213 237 214
		f 4 -192 215 216 -199
		mu 0 4 215 214 238 239
		f 4 -196 217 218 -193
		mu 0 4 216 240 241 217
		f 4 -198 219 220 -195
		mu 0 4 220 219 242 243
		f 4 -200 221 222 -197
		mu 0 4 222 221 244 245
		f 4 -202 223 224 -203
		mu 0 4 224 223 246 247
		f 4 -204 225 226 -205
		mu 0 4 226 225 248 249
		f 4 -206 227 228 -207
		mu 0 4 204 227 250 251
		f 4 -208 229 230 -209
		mu 0 4 231 230 252 253
		f 4 -210 231 232 -211
		mu 0 4 209 254 255 234
		f 4 -213 -233 233 -214
		mu 0 4 213 236 256 237
		f 4 -215 234 235 -216
		mu 0 4 257 258 259 260
		f 4 -217 236 237 -222
		mu 0 4 239 238 261 262
		f 4 -221 238 239 -218
		mu 0 4 240 263 264 241
		f 4 -223 240 241 -220
		mu 0 4 219 265 266 242
		f 4 -225 242 243 -226
		mu 0 4 247 246 267 268
		f 4 -227 244 245 -228
		mu 0 4 249 248 269 270
		f 4 -229 246 247 -230
		mu 0 4 271 272 273 274
		f 4 -231 248 249 -232
		mu 0 4 254 275 276 255
		f 4 -234 -250 250 -235
		mu 0 4 237 256 277 278
		f 4 -236 251 252 -237
		mu 0 4 238 278 279 261
		f 4 -238 253 254 -241
		mu 0 4 262 261 280 281
		f 4 -244 255 256 -245
		mu 0 4 268 267 282 283
		f 4 -246 257 258 -247
		mu 0 4 270 269 284 285
		f 4 -248 259 260 -249
		mu 0 4 286 285 287 288
		f 4 -251 -261 261 -252
		mu 0 4 278 277 289 279
		f 4 -253 262 263 -254
		mu 0 4 261 279 290 280
		f 4 -257 264 265 -258
		mu 0 4 283 282 291 292
		f 4 -259 266 267 -260
		mu 0 4 293 294 295 296
		f 4 -262 -268 268 -263
		mu 0 4 279 289 297 290
		f 4 269 270 271 272
		mu 0 4 298 299 300 301
		f 4 -273 273 274 275
		mu 0 4 298 301 302 303
		f 4 -276 276 277 -270
		mu 0 4 298 303 304 299
		f 4 278 279 280 -271
		mu 0 4 299 305 306 300
		f 4 281 282 -274 -272
		mu 0 4 300 307 302 301
		f 4 -242 283 -275 284
		mu 0 4 308 309 303 302
		f 4 -255 285 -277 -284
		mu 0 4 309 310 304 303
		f 4 -278 286 287 -279
		mu 0 4 299 304 311 305
		f 4 288 289 290 -280
		mu 0 4 305 312 313 306
		f 4 -281 291 292 -282
		mu 0 4 300 306 314 307
		f 4 -285 -283 293 -239
		mu 0 4 308 302 307 315
		f 4 -264 294 -287 -286
		mu 0 4 310 316 311 304
		f 4 -288 295 296 -289
		mu 0 4 305 311 317 312
		f 4 -297 297 298 -290
		mu 0 4 312 317 318 313
		f 4 -291 -299 299 -292
		mu 0 4 306 313 318 314
		f 4 -294 -293 300 301
		mu 0 4 315 307 314 319
		f 4 -269 302 -296 -295
		mu 0 4 316 320 317 311
		f 4 303 -298 -303 -267
		mu 0 4 321 318 317 320
		f 4 -266 -301 -300 -304
		mu 0 4 321 319 314 318
		f 4 -240 -302 -265 304
		mu 0 4 322 323 324 325
		f 4 -219 -305 -256 305
		mu 0 4 326 322 325 327
		f 4 -194 -306 -243 306
		mu 0 4 328 326 327 329
		f 4 -165 -307 -224 307
		mu 0 4 330 328 329 331
		f 4 -132 -308 -201 -146
		mu 0 4 332 330 331 333
		f 5 -18 308 309 310 -8
		mu 0 5 7 17 18 19 8
		f 5 311 312 313 -58 -38
		mu 0 5 53 72 73 74 54
		f 9 -311 314 315 316 317 318 319 -312 -21
		mu 0 9 21 39 40 41 42 43 44 45 22
		f 9 -115 320 321 322 323 324 325 326 327
		mu 0 9 105 106 107 108 109 110 111 112 113
		f 8 -33 328 329 330 331 332 333 -309
		mu 0 8 17 46 47 48 49 50 51 18
		f 8 334 335 336 337 338 339 -84 -314
		mu 0 8 73 97 98 99 100 101 102 74
		f 6 -51 -83 -328 340 341 -329
		mu 0 6 46 75 76 77 78 47
		f 6 342 343 -321 -145 -116 -340
		mu 0 6 101 134 135 136 137 102;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hoverCircle";
	rename -uid "26DADFE6-4038-AB09-24DC-6AB79C421B26";
	setAttr ".t" -type "double3" 0 -0.36339763237488498 -2.3267776069157735 ;
	setAttr ".s" -type "double3" 0.35 0.1 0.35 ;
createNode mesh -n "hoverCircleShape" -p "hoverCircle";
	rename -uid "C71E4575-46B7-E819-BE4A-87A9C51CE4C9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "110A381D-40AE-8690-C9E2-52B9F1DAE3BA";
	setAttr -s 60 ".lnk";
	setAttr -s 60 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "90313B9E-4678-9812-DA56-68A073ECB68E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "67FC6E46-4524-622B-B0CE-0D963915A96A";
createNode displayLayerManager -n "layerManager";
	rename -uid "E8201D4D-4D11-6C13-24B9-9488989F503B";
createNode displayLayer -n "defaultLayer";
	rename -uid "0A31E9B1-423C-F1BE-CF31-60AA4717A19C";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "344DDC0A-411A-933E-4385-0583CD04424A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "01160572-458E-7940-6D9D-158C4F421FE4";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F70146C7-4A18-F213-41B7-139002F98225";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 563\n            -height 402\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 563\\n    -height 402\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 563\\n    -height 402\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C03E25B1-46E1-EE9D-69B5-559BCA8EF00D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId5";
	rename -uid "D16BED5B-439F-D586-3F05-04B2C175D6C3";
	setAttr ".ihi" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "BAD4600F-4ABD-8861-8A0B-35B477292B24";
	setAttr ".version" -type "string" "5.4.5";
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "DCE95888-4B81-CF73-8C6D-BCB2DCEC8618";
createNode groupId -n "spaceship:groupId6";
	rename -uid "929717DA-4FB3-C1BA-4652-048066CF434B";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship:groupId8";
	rename -uid "59584C5C-40F1-7C4C-318C-DCA7AA89EFCB";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship:groupId9";
	rename -uid "918DE727-4B2B-5108-14DE-409607B0D178";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship:groupId10";
	rename -uid "FF4DFBCB-4CBD-2896-DED7-B99E97838AE8";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship:groupId12";
	rename -uid "877E42EB-42BB-44D0-0479-488210783B77";
	setAttr ".ihi" 0;
createNode shadingEngine -n "spaceship:standardSurface2SG";
	rename -uid "4A05C36F-419B-2E06-7DCD-7BABCFA1BA17";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo1";
	rename -uid "1C7B625E-4BA9-424D-12BD-B78ECFF45EBD";
createNode shadingEngine -n "spaceship:standardSurface3SG";
	rename -uid "DAF2845C-4879-0B6C-46F8-0CAE8AFFE3DE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo2";
	rename -uid "FD77E81D-44D8-FB1D-75AB-94A4DD796F71";
createNode shadingEngine -n "spaceship:Standard_Surface1SG";
	rename -uid "244FE25B-4DA6-51D4-9111-FDA0B4A49455";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo3";
	rename -uid "2784C894-4781-A29A-A573-B7A1056A2C07";
createNode shadingEngine -n "spaceship:Standard_Surface2SG";
	rename -uid "EB9CE9E5-4C98-498C-B742-23B9A92C5122";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo4";
	rename -uid "64F424E6-4F24-A4D7-D715-A3A227D10FB1";
createNode shadingEngine -n "spaceship:lambert2SG";
	rename -uid "3240A220-42AF-9AD4-051B-12BE6A1652FD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo5";
	rename -uid "AFF60542-401D-17E7-57C7-589B1B6AC8F8";
createNode shadingEngine -n "spaceship:standardSurface4SG";
	rename -uid "83E3ED25-41FB-2F09-D8A4-74925D4B78F9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo6";
	rename -uid "6DCED78C-446C-7A80-63AF-5ABFDEB26BCA";
createNode shadingEngine -n "spaceship:standardSurface5SG";
	rename -uid "0D494011-4AC3-54BB-1BB5-1280C298040E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo7";
	rename -uid "83825794-4EC9-778C-5232-94ABF0A1E6D7";
createNode shadingEngine -n "spaceship:standardSurface6SG";
	rename -uid "5BA9D5F0-48E8-3941-5F21-4BA83DD2B4C7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo8";
	rename -uid "0822F1C2-4F75-D32A-CE13-658C841DB97F";
createNode shadingEngine -n "spaceship:standardSurface7SG";
	rename -uid "52B06BD0-4B26-1356-289C-DFB924864F5C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo9";
	rename -uid "C9C1E654-4CE3-CB58-F146-9780D5E40F8E";
createNode shadingEngine -n "spaceship:standardSurface8SG";
	rename -uid "C7A175F4-4113-FF4A-C33C-8A871A36F470";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo10";
	rename -uid "BE49483E-44A4-2140-2528-269E8B0433A2";
createNode shadingEngine -n "spaceship:standardSurface9SG";
	rename -uid "AAFA755A-4BEE-62D4-27AF-4E8094186A7D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo11";
	rename -uid "14EF9BA7-4DD5-EF43-4070-42BFB952E1D4";
createNode shadingEngine -n "spaceship:standardSurface10SG";
	rename -uid "E727D0FA-475D-850C-C43C-42A5A28D8A35";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo12";
	rename -uid "E3966C42-460F-7519-22E4-DFA18237C3CE";
createNode shadingEngine -n "spaceship:standardSurface11SG";
	rename -uid "1EC1D1EE-4D15-5FD1-24C4-6484A5B086DF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo13";
	rename -uid "2352D7ED-4DB9-C9DB-81F3-F6919B30D158";
createNode shadingEngine -n "spaceship:lambert3SG";
	rename -uid "31CDCA38-4FC5-E18C-8DC1-88B8396A48A2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo14";
	rename -uid "D17EE69B-4C19-68C5-BD5B-9FB116255A6E";
createNode shadingEngine -n "spaceship:lambert4SG";
	rename -uid "75921E6A-4531-43E2-1F91-4A91B336ACC3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo15";
	rename -uid "1103F8CA-4834-98FE-E03C-0F89A049EBB6";
createNode shadingEngine -n "spaceship:lambert5SG";
	rename -uid "D26DC6C7-42F0-FA5E-1E69-61954B1F22E9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo16";
	rename -uid "069F0BB0-435A-976A-86BE-24AAC8D5C5E8";
createNode shadingEngine -n "spaceship:lambert6SG";
	rename -uid "291E6F17-4376-BC4A-7353-C5AE239CFF73";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo17";
	rename -uid "65BF5A85-445A-188A-EF76-E2BBEC125B7A";
createNode shadingEngine -n "spaceship:lambert7SG";
	rename -uid "32153746-4F01-8D83-666E-93B82071A402";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo18";
	rename -uid "3691C565-4798-D826-B22B-A7AFE63F9238";
createNode shadingEngine -n "spaceship:lambert8SG";
	rename -uid "89BE1316-4A83-2918-2DAC-DE9F088DC4DA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo19";
	rename -uid "0AF09DB2-4CB4-C2E4-6F00-DABC7DAB3D8B";
createNode shadingEngine -n "spaceship:lambert9SG";
	rename -uid "E32A8DFB-491E-7E00-E637-E2813C6E497D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo20";
	rename -uid "EC2F47AA-44C2-2577-6B76-B89E1F7D9C5D";
createNode shadingEngine -n "spaceship:lambert10SG";
	rename -uid "E0F2DE07-402F-717C-BA41-08B328FB29AB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo21";
	rename -uid "785DFF02-48DF-F478-150A-81A672AD9373";
createNode shadingEngine -n "spaceship:lambert11SG";
	rename -uid "C5507D5F-4C00-FA4A-F419-20B8A0F9A3A8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo22";
	rename -uid "38FB7CCA-4EDF-4293-10B4-CFA06AE66FD1";
createNode shadingEngine -n "spaceship:lambert12SG";
	rename -uid "2007C502-48A6-F084-D19B-D685BF86B615";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo23";
	rename -uid "5413F2A6-48B1-C3D6-7E19-84913FA22044";
createNode nodeGraphEditorInfo -n "spaceship:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "AB85D01C-48C8-215A-65D8-61A2632685CA";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -111.3095193864809 -563.69045379143006 ;
	setAttr ".tgi[0].vh" -type "double2" 449.40474404702184 -88.690472666233447 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 185.71427917480469;
	setAttr ".tgi[0].ni[0].y" -145.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -78.571426391601562;
	setAttr ".tgi[0].ni[1].y" -187.14285278320312;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 228.57142639160156;
	setAttr ".tgi[0].ni[2].y" -187.14285278320312;
	setAttr ".tgi[0].ni[2].nvs" 1923;
createNode shadingEngine -n "spaceship:lambert13SG";
	rename -uid "FA369FE4-49EF-3CCC-7401-CDB6749E4384";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship:materialInfo24";
	rename -uid "07D6BCA9-4268-62B0-8BFF-7BAF84F9DB02";
createNode groupId -n "groupId8";
	rename -uid "1CFD311E-4148-F569-6E2C-25B3883F9493";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship1:groupId6";
	rename -uid "E12F735C-424D-A5DB-036B-02A1B1E77F63";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship1:groupId8";
	rename -uid "A3F87D2B-410F-008C-8BEA-A0A71F423C78";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship1:groupId9";
	rename -uid "47DE3B2B-4765-0A36-0AEA-64A6DE0A591F";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship1:groupId10";
	rename -uid "0016C35F-4414-EE90-7DA5-9BA68EC7CCC8";
	setAttr ".ihi" 0;
createNode groupId -n "spaceship1:groupId12";
	rename -uid "0E3AC15F-4A6C-6F8C-B7E4-50A2E263BA25";
	setAttr ".ihi" 0;
createNode shadingEngine -n "spaceship1:standardSurface2SG";
	rename -uid "022621D5-4970-C0FD-1CB9-AAB08D4B16F2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo1";
	rename -uid "1AF78A6B-4FA6-784C-F693-B0B7C3C78C61";
createNode shadingEngine -n "spaceship1:standardSurface3SG";
	rename -uid "9E11EC19-4047-06E6-50CC-48AA04182E01";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo2";
	rename -uid "97D3EDDB-42F3-722A-3465-83BF42FF5784";
createNode shadingEngine -n "spaceship1:Standard_Surface1SG";
	rename -uid "DF5E71C8-4958-E191-157F-38AC6C68AC56";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo3";
	rename -uid "4A02AB0D-4BCE-35E4-0553-0395A5080860";
createNode shadingEngine -n "spaceship1:Standard_Surface2SG";
	rename -uid "093DA161-46C3-7A24-3E19-26A4B195E303";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo4";
	rename -uid "07B4A341-46B6-FF38-5049-BA869B7119DB";
createNode shadingEngine -n "spaceship1:lambert2SG";
	rename -uid "B7C07DB9-4F04-5DA3-8876-5EA711B126D8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo5";
	rename -uid "B52A1B11-439C-50A1-94ED-AA9E71C7796B";
createNode shadingEngine -n "spaceship1:standardSurface4SG";
	rename -uid "0E80748A-40F6-25E0-0789-F8895B9923AF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo6";
	rename -uid "EBE3DEF2-4703-8431-DD55-8F80A15F79C1";
createNode shadingEngine -n "spaceship1:standardSurface5SG";
	rename -uid "BDC7D3E1-4E15-23E2-F4B9-B1A9AC61761E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo7";
	rename -uid "443E313B-4088-075F-99AD-1698B77D36EE";
createNode shadingEngine -n "spaceship1:standardSurface6SG";
	rename -uid "9EEAB461-4F82-7C2C-7F5A-3A928EAB9832";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo8";
	rename -uid "3A03A09C-4DA1-4C1D-7E4F-A1A2C01536DB";
createNode shadingEngine -n "spaceship1:standardSurface7SG";
	rename -uid "C1704125-45EE-7537-6C14-688A5BA04E66";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo9";
	rename -uid "DA180ACC-4DA7-D5B0-5E69-F698F66D79E5";
createNode shadingEngine -n "spaceship1:standardSurface8SG";
	rename -uid "2A2ED2CE-406D-F6D0-F44C-FC8165D25596";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo10";
	rename -uid "5367BF27-4D6B-97E7-5494-4D9BE6A99602";
createNode shadingEngine -n "spaceship1:standardSurface9SG";
	rename -uid "34F932A0-43AF-F803-BBE9-4FAD529A083E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo11";
	rename -uid "42FBEA81-4CE5-3A79-29CF-D581E41B4746";
createNode shadingEngine -n "spaceship1:standardSurface10SG";
	rename -uid "1CA80601-41DB-4D7D-7595-3AA171E369A1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo12";
	rename -uid "D781B503-43A8-277E-AE8E-D6A12DE34FB2";
createNode shadingEngine -n "spaceship1:standardSurface11SG";
	rename -uid "DBAF8A53-4189-BAF7-0355-0CA086821DFF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo13";
	rename -uid "3940FE6C-4F08-900A-185C-22A5E6D47369";
createNode shadingEngine -n "spaceship1:lambert3SG";
	rename -uid "8F21F6E7-4F5E-62F2-0AAD-809CB7BD8E89";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo14";
	rename -uid "50961172-4BE0-72E3-D224-E2A4F988D357";
createNode shadingEngine -n "spaceship1:lambert4SG";
	rename -uid "513DDB1F-45B7-31D6-45B8-959F039A3FE9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo15";
	rename -uid "33E68D48-42F0-FD8D-6F61-88A3063D3136";
createNode shadingEngine -n "spaceship1:lambert5SG";
	rename -uid "7E7486FA-4550-EECD-17B9-4DB7C11DDF7E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo16";
	rename -uid "E83A0ABB-48A2-4E52-5F1D-6A83C7D61764";
createNode shadingEngine -n "spaceship1:lambert6SG";
	rename -uid "E649CBB0-4BB3-DE70-090D-C4BF6E77B5E9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo17";
	rename -uid "55C538F2-4EB5-8A03-A60B-6C885E515FDF";
createNode shadingEngine -n "spaceship1:lambert7SG";
	rename -uid "4D7333C0-4051-88D7-8A76-6EBFCDE07564";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo18";
	rename -uid "4A5F66F9-45B0-BBF8-F3A1-33936FD930D8";
createNode shadingEngine -n "spaceship1:lambert8SG";
	rename -uid "CCC8E3B9-44DA-11DB-0AD0-BFBEC167C48E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo19";
	rename -uid "7E59938B-48F7-CEA4-C9DB-CF810B7DE939";
createNode shadingEngine -n "spaceship1:lambert9SG";
	rename -uid "6F8CE2C1-4928-2FC8-7364-63B3EFF8FDD1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo20";
	rename -uid "9C482400-4AF4-752B-5165-A485D31AD721";
createNode shadingEngine -n "spaceship1:lambert10SG";
	rename -uid "7AAB275F-412A-30B0-AD15-D99CEA06727B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo21";
	rename -uid "E1E8501D-44BC-E85B-97BC-A398B17FFA86";
createNode shadingEngine -n "spaceship1:lambert11SG";
	rename -uid "910A4CDC-43FB-2FCB-170D-6ABD075B6BCC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo22";
	rename -uid "71EE9889-402F-B477-E231-E4AF041F9160";
createNode shadingEngine -n "spaceship1:lambert12SG";
	rename -uid "171EC658-48F4-0BAE-28A9-D1A7AB45E2DD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo23";
	rename -uid "5D1FBCB5-4E6D-28AA-7151-6CA80078594B";
createNode nodeGraphEditorInfo -n "spaceship1:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "279F751E-4614-8A72-693D-94955205D18A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -111.3095193864809 -563.69045379143006 ;
	setAttr ".tgi[0].vh" -type "double2" 449.40474404702184 -88.690472666233447 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 185.71427917480469;
	setAttr ".tgi[0].ni[0].y" -145.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -78.571426391601562;
	setAttr ".tgi[0].ni[1].y" -187.14285278320312;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 228.57142639160156;
	setAttr ".tgi[0].ni[2].y" -187.14285278320312;
	setAttr ".tgi[0].ni[2].nvs" 1923;
createNode shadingEngine -n "spaceship1:lambert13SG";
	rename -uid "91D55E49-4B48-5D27-FD7D-D5B8FD0C12D0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "spaceship1:materialInfo24";
	rename -uid "BFBE2F45-441C-CAA9-F815-EFBC2BDF6F6E";
createNode lambert -n "lambert2";
	rename -uid "69C63D90-4DA1-D579-41B6-D5A40EED7B65";
	setAttr ".c" -type "float3" 0.18000001 0.22 0.27000001 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "AE76AF23-4DFC-2883-E699-D5AA77C87789";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "39426A56-4097-F602-78F1-C3A9957F9954";
createNode lambert -n "lambert3";
	rename -uid "81ED3F21-41D8-4D42-44B7-AE9887A73802";
	setAttr ".c" -type "float3" 0.12 0.16 0.22 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "72B5CEAD-4D8D-11FB-6ABC-A18A9477B75A";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "E04048E7-40E8-E224-5658-EFBD3F009860";
createNode lambert -n "lambert4";
	rename -uid "CFC382B1-44E3-A3F3-EC9F-11B65698F24F";
	setAttr ".c" -type "float3" 0.059 0.064999998 0.072999999 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "FF86967D-48E6-517C-D450-56A17527139E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "855C3EE7-4E1D-6F7B-027B-20B026AD240E";
createNode lambert -n "lambert5";
	rename -uid "0E4A9F42-49B3-D975-81A9-64B101D29ABD";
	setAttr ".c" -type "float3" 0.13 0.15000001 0.18000001 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "67E26FAD-4EAE-35BE-B61A-53AF67DFCB4C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "56946346-40A1-D6AF-1D42-178138292486";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4C0E0F62-4D71-B03D-5F2E-C48EE3445097";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -430.95236382787266 ;
	setAttr ".tgi[0].vh" -type "double2" 516.66664613617877 44.047617297323995 ;
createNode lambert -n "lambert6";
	rename -uid "DC43E9BE-4606-EEC2-9E05-75B6150B4B0C";
	setAttr ".c" -type "float3" 0.0469 0.056000002 0.061999999 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "AB4295B9-465C-C5B7-6248-428FF9624BD3";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "ABBF428D-4182-1962-EEF0-7EAE7D01F7C1";
createNode lambert -n "lambert7";
	rename -uid "6839E3A9-4A79-E5AC-0003-F3BD17C9A53A";
	setAttr ".c" -type "float3" 0.12800001 0.178 0.214 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "B77600CC-4ADF-2FE3-C026-6495ACA325D1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "353BBE75-40A2-ED73-0DAD-63A491310FFD";
createNode lambert -n "lambert8";
	rename -uid "BA317DBD-419E-70A3-D60B-77A640713E77";
	setAttr ".c" -type "float3" 0.071900003 0.093000002 0.12 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "1A3DFAFF-4A02-3841-A093-368BDB35399C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "45181A55-4166-3943-E3D4-699073B190B9";
createNode lambert -n "lambert9";
	rename -uid "E843AE8B-4215-E217-6D1E-6892AD187C49";
	setAttr ".c" -type "float3" 0.114 0.146 0.18700001 ;
createNode shadingEngine -n "lambert9SG";
	rename -uid "69BCFFEB-4DA1-15AA-D9D0-5D99AC6E5943";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "3828E6F0-4A89-A909-A098-60B7E67405F2";
createNode lambert -n "lambert10";
	rename -uid "E79D8C21-48EF-1872-C1C4-3C998A0739BE";
	setAttr ".c" -type "float3" 0.20100001 0.215 0.234 ;
createNode shadingEngine -n "lambert10SG";
	rename -uid "6B94BB6D-4A49-9810-E3F0-B79180FB1FDC";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "84FF1AEC-4EBC-AE15-20F3-D18C44804DCD";
createNode lambert -n "lambert11";
	rename -uid "B60FB8C1-40B4-F9EA-CE8F-78923C47456D";
	setAttr ".c" -type "float3" 0.059999999 0.063000001 0.068000004 ;
createNode shadingEngine -n "lambert11SG";
	rename -uid "38A7C4BE-4604-1966-4010-6180686068AA";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "83C3C03F-4C35-FA0D-4C28-75A325644D6D";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "0B9F3393-4B01-E912-BEAA-21BC96C6B7BF";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube9";
	rename -uid "0E5CF53E-4BF2-6AD1-2B41-BBBE6E42B6A5";
	setAttr ".h" 1.25;
	setAttr ".d" 0.5;
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	rename -uid "5E571E57-4609-2E2D-9062-069DED7B2708";
	setAttr ".w" 0.5;
	setAttr ".h" 0.125;
	setAttr ".sw" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "E0E9B29C-43E4-54DC-B6D4-5088D94CAD8E";
	setAttr ".w" 0.25;
	setAttr ".d" 5;
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	rename -uid "ABEF45B2-420B-E47F-0571-05A10A6FEAEE";
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "29928C31-480B-33CD-BCB7-91AEA44A83C1";
	setAttr ".uopa" yes;
	setAttr -s 54 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.25760847 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.25760847 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.25760847 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.25760847 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.25760847 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.25760847 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.20158149 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.20158149 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.20158149 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.20158149 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.20158149 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.20158149 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.14465933 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.14465933 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.14465933 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.14465933 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.14465933 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.14465933 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.088005334 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.088005334 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.088005334 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.088005334 ;
	setAttr ".tk[22]" -type "float3" 0 0 0.088005334 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.088005334 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.036402315 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.036402315 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.036402315 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.036402315 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.036402315 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.036402315 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.012300646 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.012300646 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.012300646 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.012300646 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.012300646 ;
	setAttr ".tk[35]" -type "float3" 0 0 -0.012300646 ;
	setAttr ".tk[37]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[97]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[98]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[99]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[100]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[103]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[104]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[105]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[106]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[109]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[110]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[111]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[112]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[115]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[116]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[117]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[118]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[127]" -type "float3" 0 0 0.0012811678 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "D50D1F46-4207-BA7B-7183-2D9C057331C4";
	setAttr ".ics" -type "componentList" 6 "f[31:33]" "f[36:38]" "f[41:43]" "f[81:83]" "f[86:88]" "f[91:93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.25 0 0 0 0 1 0 0 1.1255109083614327 -3.6759831547739279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1255109 -3.6759832 ;
	setAttr ".rs" 36629;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30000001192092896 1.0005109158120133 -3.9759831666948569 ;
	setAttr ".cbx" -type "double3" 0.30000001192092896 1.2505109083614327 -3.3759831428529989 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "43DB80AC-43CA-FDC0-4E74-A49896817F06";
	setAttr ".ics" -type "componentList" 2 "f[36:38]" "f[86:88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.25 0 0 0 0 1 0 0 1.1255109083614327 -3.6759831547739279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1255109 -3.6759832 ;
	setAttr ".rs" 37850;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30000001192092896 1.0005109083614327 -3.7759830594064963 ;
	setAttr ".cbx" -type "double3" 0.30000001192092896 1.2505109083614327 -3.5759832501413595 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "41E78C43-4EE0-3886-6BB5-DB9FACA8066B";
	setAttr ".ics" -type "componentList" 14 "f[35:39]" "f[81:82]" "f[86:89]" "f[102]" "f[107]" "f[112]" "f[117]" "f[155:156]" "f[168]" "f[176]" "f[180]" "f[182]" "f[185]" "f[188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.25 0 0 0 0 1 0 0 1.1255109083614327 -3.6759831547739279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1255109 -3.7759831 ;
	setAttr ".rs" 57266;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 1.0005109083614327 -3.9759831070902121 ;
	setAttr ".cbx" -type "double3" 0.5 1.2505109083614327 -3.5759832501413595 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "67993AA9-4638-B2B6-84C9-A38E550166B3";
	setAttr ".ics" -type "componentList" 22 "f[35:39]" "f[85:89]" "f[102]" "f[107]" "f[112]" "f[117]" "f[122]" "f[127]" "f[132]" "f[137]" "f[142]" "f[147]" "f[155:156]" "f[167:168]" "f[176]" "f[180]" "f[184]" "f[188]" "f[192]" "f[200]" "f[215]" "f[228]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.25 0 0 0 0 1 0 0 1.1255109083614327 -3.6759831547739279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1255109 -3.6759832 ;
	setAttr ".rs" 33223;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 1.0005109083614327 -3.7759830594064963 ;
	setAttr ".cbx" -type "double3" 0.5 1.2505109083614327 -3.5759832501413595 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "2A938F20-4A6E-0638-A954-42B28CC39B17";
	setAttr ".ics" -type "componentList" 10 "f[36:38]" "f[81:83]" "f[87:88]" "f[185]" "f[187]" "f[213]" "f[217]" "f[233]" "f[250]" "f[252]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.25 0 0 0 0 1 0 0 1.1255109083614327 -3.6759831547739279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1255109 -3.7759831 ;
	setAttr ".rs" 56883;
	setAttr ".lt" -type "double3" 0 0 0.1364108065898697 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30000001192092896 1.0005109083614327 -3.9759831070902121 ;
	setAttr ".cbx" -type "double3" 0.30000001192092896 1.2505109083614327 -3.5759832501413595 ;
createNode polyCube -n "polyCube5";
	rename -uid "B3EA9ACD-4F67-6FD3-4146-62B12319DC80";
	setAttr ".w" 0.3;
	setAttr ".sh" 5;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube8";
	rename -uid "1A61F0ED-4F1C-D736-612E-88AFC26DAD04";
	setAttr ".w" 0.1;
	setAttr ".h" 0.5;
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "frontBody";
	rename -uid "B9AF2AE8-45DF-4240-75AE-49A127379428";
	setAttr ".w" 1.5;
	setAttr ".d" 2.5;
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube12";
	rename -uid "B8E1F39A-4E3E-5D02-A0E4-449AA8A6295E";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube10";
	rename -uid "BF0399F9-4631-FEB8-5BA7-27B3E87DD65A";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube11";
	rename -uid "9B355D16-4AA1-DA28-88C5-3F93511EFCCF";
	setAttr ".cuv" 4;
createNode groupId -n "groupId13";
	rename -uid "40D219D8-4A3A-A2C0-4654-9D9981641645";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "670E3872-4EEB-BFFD-0877-1286E71FC7FE";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "38F6F18F-4AA4-D21C-1402-14B870E744E1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
select -ne :time1;
	setAttr ".o" 87;
	setAttr ".unw" 87;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 60 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 15 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "frontBody.out" "frontBodyCubeShape.i";
connectAttr "polyCube2.out" "wingCubeShape1.i";
connectAttr "polyCube4.out" "wingDetailCubeShape.i";
connectAttr "polyCube5.out" "middleBodyCubeShape.i";
connectAttr "polyExtrudeFace5.out" "commandBlockShape.i";
connectAttr "polyCube8.out" "connectorRectShape.i";
connectAttr "polyCube9.out" "engineContainerShape1.i";
connectAttr "polyCylinder1.out" "insideEngineShape1.i";
connectAttr "polyCube10.out" "antennaShape1.i";
connectAttr "polyCube11.out" "antennaWireShape.i";
connectAttr "polyCube12.out" "pCubeShape1.i";
connectAttr "groupId14.id" "commandBlockMainShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "commandBlockMainShape.iog.og[1].gco";
connectAttr "groupId13.id" "commandBlockMainShape.ciog.cog[0].cgid";
connectAttr "polyCylinder2.out" "hoverCircleShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:Standard_Surface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:Standard_Surface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:standardSurface11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship:lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:Standard_Surface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:Standard_Surface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:standardSurface11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spaceship1:lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:Standard_Surface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:Standard_Surface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:standardSurface11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship:lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:Standard_Surface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:Standard_Surface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:standardSurface11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "spaceship1:lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr "spaceship:standardSurface2SG.msg" "spaceship:materialInfo1.sg";
connectAttr "spaceship:standardSurface3SG.msg" "spaceship:materialInfo2.sg";
connectAttr "spaceship:Standard_Surface1SG.msg" "spaceship:materialInfo3.sg";
connectAttr "spaceship:Standard_Surface2SG.msg" "spaceship:materialInfo4.sg";
connectAttr "spaceship:lambert2SG.msg" "spaceship:materialInfo5.sg";
connectAttr "spaceship:standardSurface4SG.msg" "spaceship:materialInfo6.sg";
connectAttr "spaceship:standardSurface5SG.msg" "spaceship:materialInfo7.sg";
connectAttr "spaceship:standardSurface6SG.msg" "spaceship:materialInfo8.sg";
connectAttr "spaceship:standardSurface7SG.msg" "spaceship:materialInfo9.sg";
connectAttr "spaceship:standardSurface8SG.msg" "spaceship:materialInfo10.sg";
connectAttr "spaceship:standardSurface9SG.msg" "spaceship:materialInfo11.sg";
connectAttr "spaceship:standardSurface10SG.msg" "spaceship:materialInfo12.sg";
connectAttr "spaceship:standardSurface11SG.msg" "spaceship:materialInfo13.sg";
connectAttr "spaceship:lambert3SG.msg" "spaceship:materialInfo14.sg";
connectAttr "spaceship:lambert4SG.msg" "spaceship:materialInfo15.sg";
connectAttr "spaceship:lambert5SG.msg" "spaceship:materialInfo16.sg";
connectAttr "spaceship:lambert6SG.msg" "spaceship:materialInfo17.sg";
connectAttr "spaceship:lambert7SG.msg" "spaceship:materialInfo18.sg";
connectAttr "spaceship:lambert8SG.msg" "spaceship:materialInfo19.sg";
connectAttr "spaceship:lambert9SG.msg" "spaceship:materialInfo20.sg";
connectAttr "spaceship:lambert10SG.msg" "spaceship:materialInfo21.sg";
connectAttr "spaceship:lambert11SG.msg" "spaceship:materialInfo22.sg";
connectAttr "spaceship:lambert12SG.msg" "spaceship:materialInfo23.sg";
connectAttr "spaceship:lambert12SG.msg" "spaceship:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "spaceship:lambert13SG.msg" "spaceship:materialInfo24.sg";
connectAttr "spaceship1:standardSurface2SG.msg" "spaceship1:materialInfo1.sg";
connectAttr "spaceship1:standardSurface3SG.msg" "spaceship1:materialInfo2.sg";
connectAttr "spaceship1:Standard_Surface1SG.msg" "spaceship1:materialInfo3.sg";
connectAttr "spaceship1:Standard_Surface2SG.msg" "spaceship1:materialInfo4.sg";
connectAttr "spaceship1:lambert2SG.msg" "spaceship1:materialInfo5.sg";
connectAttr "spaceship1:standardSurface4SG.msg" "spaceship1:materialInfo6.sg";
connectAttr "spaceship1:standardSurface5SG.msg" "spaceship1:materialInfo7.sg";
connectAttr "spaceship1:standardSurface6SG.msg" "spaceship1:materialInfo8.sg";
connectAttr "spaceship1:standardSurface7SG.msg" "spaceship1:materialInfo9.sg";
connectAttr "spaceship1:standardSurface8SG.msg" "spaceship1:materialInfo10.sg";
connectAttr "spaceship1:standardSurface9SG.msg" "spaceship1:materialInfo11.sg";
connectAttr "spaceship1:standardSurface10SG.msg" "spaceship1:materialInfo12.sg";
connectAttr "spaceship1:standardSurface11SG.msg" "spaceship1:materialInfo13.sg";
connectAttr "spaceship1:lambert3SG.msg" "spaceship1:materialInfo14.sg";
connectAttr "spaceship1:lambert4SG.msg" "spaceship1:materialInfo15.sg";
connectAttr "spaceship1:lambert5SG.msg" "spaceship1:materialInfo16.sg";
connectAttr "spaceship1:lambert6SG.msg" "spaceship1:materialInfo17.sg";
connectAttr "spaceship1:lambert7SG.msg" "spaceship1:materialInfo18.sg";
connectAttr "spaceship1:lambert8SG.msg" "spaceship1:materialInfo19.sg";
connectAttr "spaceship1:lambert9SG.msg" "spaceship1:materialInfo20.sg";
connectAttr "spaceship1:lambert10SG.msg" "spaceship1:materialInfo21.sg";
connectAttr "spaceship1:lambert11SG.msg" "spaceship1:materialInfo22.sg";
connectAttr "spaceship1:lambert12SG.msg" "spaceship1:materialInfo23.sg";
connectAttr "spaceship1:lambert12SG.msg" "spaceship1:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "spaceship1:lambert13SG.msg" "spaceship1:materialInfo24.sg";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "wingCubeShape1.iog" "lambert2SG.dsm" -na;
connectAttr "wingCubeShape2.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "frontBodyCubeShape.iog" "lambert3SG.dsm" -na;
connectAttr "middleBodyCubeShape.iog" "lambert3SG.dsm" -na;
connectAttr "commandBlockMainShape.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "commandBlockMainShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "groupId14.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "pCubeShape1.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "wingDetailCube1Shape.iog" "lambert5SG.dsm" -na;
connectAttr "wingDetailCubeShape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "connectorRect1Shape.iog" "lambert6SG.dsm" -na;
connectAttr "connectorRectShape.iog" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "lambert6.msg" "materialInfo5.m";
connectAttr "lambert7.oc" "lambert7SG.ss";
connectAttr "engineContainerShape2.iog" "lambert7SG.dsm" -na;
connectAttr "engineContainerShape1.iog" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "lambert7.msg" "materialInfo6.m";
connectAttr "lambert8.oc" "lambert8SG.ss";
connectAttr "commandBlockShape.iog" "lambert8SG.dsm" -na;
connectAttr "lambert8SG.msg" "materialInfo7.sg";
connectAttr "lambert8.msg" "materialInfo7.m";
connectAttr "lambert9.oc" "lambert9SG.ss";
connectAttr "engineShape1.iog" "lambert9SG.dsm" -na;
connectAttr "engineShape2.iog" "lambert9SG.dsm" -na;
connectAttr "lambert9SG.msg" "materialInfo8.sg";
connectAttr "lambert9.msg" "materialInfo8.m";
connectAttr "lambert10.oc" "lambert10SG.ss";
connectAttr "insideEngineShape1.iog" "lambert10SG.dsm" -na;
connectAttr "insideEngineShape2.iog" "lambert10SG.dsm" -na;
connectAttr "hoverCircleShape.iog" "lambert10SG.dsm" -na;
connectAttr "lambert10SG.msg" "materialInfo9.sg";
connectAttr "lambert10.msg" "materialInfo9.m";
connectAttr "lambert11.oc" "lambert11SG.ss";
connectAttr "antennaWireShape.iog" "lambert11SG.dsm" -na;
connectAttr "antennaShape1.iog" "lambert11SG.dsm" -na;
connectAttr "antennaShape2.iog" "lambert11SG.dsm" -na;
connectAttr "antennaWire1Shape.iog" "lambert11SG.dsm" -na;
connectAttr "lambert11SG.msg" "materialInfo10.sg";
connectAttr "lambert11.msg" "materialInfo10.m";
connectAttr "polyCube7.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "commandBlockShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "commandBlockShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "commandBlockShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "commandBlockShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "commandBlockShape.wm" "polyExtrudeFace5.mp";
connectAttr "spaceship:standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:Standard_Surface1SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:Standard_Surface2SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface5SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface7SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface8SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface9SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface10SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:standardSurface11SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship:lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:Standard_Surface1SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:Standard_Surface2SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface5SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface7SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface8SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface9SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface10SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:standardSurface11SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "spaceship1:lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert10.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "spaceship:groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship:groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship:groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship:groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship:groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship1:groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship1:groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship1:groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship1:groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "spaceship1:groupId12.msg" ":initialShadingGroup.gn" -na;
// End of spaceship2.ma
