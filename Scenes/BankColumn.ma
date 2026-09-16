//Maya ASCII 2024 scene
//Name: BankColumn.ma
//Last modified: Tue, Sep 15, 2026 10:45:19 PM
//Codeset: UTF-8
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Mac OS X 14.4";
fileInfo "UUID" "B5EE621A-084F-997A-B52F-958E1EFF814C";
createNode transform -s -n "persp";
	rename -uid "A1FECC86-8044-7AA7-0333-F9A9444DBC72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6701619887136987 1.7824879670511531 5.9992583352350257 ;
	setAttr ".r" -type "double3" 5.061647118618013 1124.1999999993388 -5.5455914717376553e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "21A0754F-6B4B-8F5D-1C3E-E291657B7F19";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.406539415965581;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7705CC23-864A-8566-4D50-488FC4969FF5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.001000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EBE3A9B2-E240-A0D8-2D71-10B40E8BC8E3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3292B0BB-EF4C-20EB-FEB3-569AC0391CE5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 10.001000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "244E2664-1044-B46E-2520-51A97E43DB4E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "464232A9-1E4F-67BB-BB12-808F25074653";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C3EE5098-AF4A-85AC-9C54-D6B2B85C7BD9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Column";
	rename -uid "2F2104C3-8A4F-FD8B-4E9D-298054A59FB3";
	setAttr ".t" -type "double3" -1.7527618780221701 3.7260634440022882 0.49075791436113381 ;
createNode mesh -n "ColumnShape" -p "Column";
	rename -uid "C9EB989A-D14F-EBC2-A323-4DA03BEDC64B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45692265033721924 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3AF9DB8A-CF47-7A5A-C942-02A25C9EBA3A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7598F047-F34F-3607-5CB5-7E8EEDB10355";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D3013F24-F74D-4F09-C446-C487E7A47370";
createNode displayLayerManager -n "layerManager";
	rename -uid "C798329C-FE4D-C980-3E10-31B53EAB1D93";
createNode displayLayer -n "defaultLayer";
	rename -uid "30DFCEB3-164D-7247-2AB0-74B069056E87";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "752FA392-E145-3372-67EE-64B86FFB9C1E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "454D685B-6742-1B2E-AB88-9B8A0D0E7333";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "86DDC202-4747-EA18-3E8F-6096C261A0D7";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "4537B4F5-6E4C-3D00-AC44-BABCFBF0C2DC";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A7CE79E4-5040-63AE-A42A-26AF6107BE2D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "F7FFAAAF-954A-DB5F-E7B6-F8B344C47D90";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "0B249DD8-114F-2DA6-B393-D2919FA30218";
	setAttr ".r" 0.60370975374311686;
	setAttr ".h" 7.4521268880045763;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "7AFE45DB-ED40-EB50-CFF1-0F9ED5211D04";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".wt" 0.043251391500234604;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "7A2015BF-4944-396C-FDB0-2BAB8F18475C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".wt" 0.64510583877563477;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "58E35C56-2344-D398-B09A-5D89444C42E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[100:101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".wt" 0.03129538893699646;
	setAttr ".re" 100;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "FF2584E0-8F43-E4A1-AA3B-3892EF66BB72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".wt" 0.042961202561855316;
	setAttr ".re" 180;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "257DF666-294D-E0D9-A2E5-E686264F77D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".wt" 0.96876311302185059;
	setAttr ".dr" no;
	setAttr ".re" 220;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "862DA61B-B04A-4DC5-E26F-F8887823FE26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".wt" 0.96867150068283081;
	setAttr ".dr" no;
	setAttr ".re" 220;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "4B8F3DE4-5B4C-B5B9-2DAC-DF8684E08C7A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".wt" 0.96361547708511353;
	setAttr ".dr" no;
	setAttr ".re" 220;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeVertex -n "polyExtrudeVertex1";
	rename -uid "13E53834-4346-DBEF-EC8F-409096FC15F2";
	setAttr ".ics" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".l" 1;
	setAttr ".w" 0.5;
createNode polyTweak -n "polyTweak1";
	rename -uid "F5D62023-444E-C2BA-08D9-6984DA9EFB48";
	setAttr ".uopa" yes;
	setAttr -s 182 ".tk";
	setAttr ".tk[0:165]" -type "float3"  26.6547451 -3.15609837 -8.66064835 22.67389107
		 -3.15609837 -16.47351837 16.47354317 -3.15609837 -22.67387199 8.66065216 -3.15609837
		 -26.65473747 3.5418464e-06 -3.15609837 -28.026439667 -8.66064835 -3.15609837 -26.65473747
		 -16.47351456 -3.15609837 -22.67387199 -22.67387199 -3.15609837 -16.47351646 -26.65473747
		 -3.15609837 -8.66064644 -28.026435852 -3.15609837 5.3127683e-06 -26.65473747 -3.15609837
		 8.66065216 -22.67387199 -3.15609837 16.47353172 -16.47351456 -3.15609837 22.67387199
		 -8.66064644 -3.15609837 26.65473747 2.7065944e-06 -3.15609837 28.026443481 8.66065025
		 -3.15609837 26.65473747 16.47351456 -3.15609837 22.6738739 22.67387199 -3.15609837
		 16.47352028 26.65473747 -3.15609837 8.66065216 28.026435852 -3.15609837 5.3127683e-06
		 27.9173336 -2.73348856 -9.070888519 23.74793434 -2.73348856 -17.25387383 17.25387383
		 -2.73348856 -23.74788666 9.070899963 -2.73348856 -27.91732597 3.7096183e-06 -2.73348856
		 -29.35400009 -9.070888519 -2.73348856 -27.91732788 -17.25385857 -2.73348856 -23.74787712
		 -23.74788666 -2.73348856 -17.25385284 -27.91732407 -2.73348856 -9.070875168 -29.35399628
		 -2.73348856 5.5644255e-06 -27.91732407 -2.73348856 9.070892334 -23.74788475 -2.73348856
		 17.25387383 -17.25385284 -2.73348856 23.74789238 -9.070877075 -2.73348856 27.91732407
		 2.8347993e-06 -2.73348856 29.35399628 9.070888519 -2.73348856 27.91732407 17.25385857
		 -2.73348856 23.74788284 23.74788666 -2.73348856 17.25387192 27.91732407 -2.73348856
		 9.07089138 29.35399628 -2.73348856 5.5644255e-06 3.5418464e-06 -3.15609837 5.3127683e-06
		 3.7096183e-06 -2.73348856 5.5644255e-06 6.9906275e-07 -1.33770597 13.83024883 -2.23687744
		 -1.33770597 13.15334415 -4.25479603 -1.33770597 11.18889809 -5.85622501 -1.33770597
		 8.12921333 -6.884408 -1.33770597 4.27378225 -7.23868752 -1.33770597 2.6216981e-06
		 -6.884408 -1.33770597 -4.27377605 -5.85622263 -1.33770597 -8.12921524 -4.2547884
		 -1.33770597 -11.18889809 -2.23687792 -1.33770597 -13.1533432 9.1479058e-07 -1.33770597
		 -13.83024883 2.23687959 -1.33770597 -13.15334415 4.25479507 -1.33770597 -11.18890667
		 5.85623264 -1.33770597 -8.12921429 6.88440609 -1.33770597 -4.27377558 7.23868752
		 -1.33770597 2.6216981e-06 6.88440418 -1.33770597 4.2737813 5.85622263 -1.33770597
		 8.12921333 4.2547884 -1.33770597 11.18889809 2.23687911 -1.33770597 13.1533432 3.615007e-06
		 3.15609837 -26.54973793 8.20432091 3.15609837 -25.25030899 15.60554504 3.15609837
		 -21.47919083 21.47919464 3.15609837 -15.60553741 25.25032616 3.15609837 -8.20431709
		 26.54973602 3.15609837 5.0328385e-06 25.25030899 3.15609837 8.204319 21.47918892
		 3.15609837 15.60554028 15.60553741 3.15609837 21.47919273 8.204319 3.15609837 25.25031281
		 2.8237607e-06 3.15609837 26.54973984 -8.20431614 3.15609837 25.25031281 -15.60553741
		 3.15609837 21.47919273 -21.47918892 3.15609837 15.60554218 -25.25030899 3.15609837
		 8.20431995 -26.54973602 3.15609837 5.0328385e-06 -25.25030899 3.15609837 -8.20431328
		 -21.47918892 3.15609837 -15.60553551 -15.60553741 3.15609837 -21.47919083 -8.20431709
		 3.15609837 -25.25030899 6.9906247e-07 1.33770573 13.83023834 -2.23687673 1.33770573
		 13.15334415 -4.25479603 1.33770573 11.18889809 -5.85622501 1.33770573 8.12921333
		 -6.884408 1.33770573 4.2737813 -7.23868608 1.33770573 2.6216981e-06 -6.884408 1.33770573
		 -4.27377796 -5.85622263 1.33770573 -8.12921524 -4.2547884 1.33770573 -11.18889809
		 -2.23687911 1.33770573 -13.1533432 9.1479058e-07 1.33770573 -13.83024883 2.23687911
		 1.33770573 -13.15334415 4.25479507 1.33770573 -11.18890667 5.85623264 1.33770573
		 -8.12921429 6.88440418 1.33770573 -4.27377653 7.23868608 1.33770573 2.6216981e-06
		 6.88440418 1.33770573 4.27378035 5.85622263 1.33770573 8.12921333 4.2547884 1.33770573
		 11.18889809 2.23687935 1.33770573 13.1533432 -7.883994e-07 0 -8.16377831 2.52274466
		 0 -7.76421642 4.79854774 0 -6.60463619 6.60463428 0 -4.79855013 7.76421356 0 -2.52274752
		 8.1637764 0 -2.0633977e-06 7.76421356 0 2.5227437 6.60463428 0 4.79854679 4.79854822
		 0 6.60463428 2.52274561 0 7.76421404 -1.0316988e-06 0 8.16377831 -2.52274752 0 7.76421452
		 -4.79855108 0 6.60463619 -6.60463953 0 4.79854822 -7.76421785 0 2.52274466 -8.1637764
		 0 -2.0633977e-06 -7.76421404 0 -2.52274752 -6.60463428 0 -4.79855013 -4.79854822
		 0 -6.60463619 -2.52274609 0 -7.76421547 1.0784973e-06 -0.05422942 11.16770363 -3.4510076
		 -0.05422942 10.62112617 -6.56422234 -0.05422942 9.034866333 -9.034865379 -0.05422942
		 6.56422424 -10.62112522 -0.05422942 3.45101643 -11.16770363 -0.05422942 2.1169826e-06
		 -10.62112522 -0.05422942 -3.45100713 -9.034866333 -0.05422942 -6.56422043 -6.56422424
		 -0.05422942 -9.034863472 -3.45101357 -0.05422942 -10.62112617 1.4113216e-06 -0.05422942
		 -11.16770935 3.45101643 -0.05422942 -10.62112617 6.56422424 -0.05422942 -9.034866333
		 9.034878731 -0.05422942 -6.56422424 10.62113094 -0.05422942 -3.45101285 11.16770458
		 -0.05422942 2.1169826e-06 10.62112522 -0.05422942 3.45101643 9.034866333 -0.05422942
		 6.56422424 6.56422424 -0.05422942 9.034861565 3.45101333 -0.05422942 10.62112617
		 1.0784973e-06 -3.76523614 11.16770363 -3.4510076 -3.76523614 10.62112617 -6.56422234
		 -3.76523614 9.034866333 -9.034865379 -3.76523614 6.56422424 -10.62112522 -3.76523614
		 3.45101643 -11.16770363 -3.76523614 2.1169826e-06 -10.62112522 -3.76523614 -3.45100713
		 -9.034866333 -3.76523614 -6.56422043 -6.56422424 -3.76523614 -9.034863472 -3.45101357
		 -3.76523614 -10.62112617 1.4113216e-06 -3.76523614 -11.16770935 3.45101643 -3.76523614
		 -10.62112617 6.56422424 -3.76523614 -9.034866333 9.034878731 -3.76523614 -6.56422424
		 10.62113094 -3.76523614 -3.45101285 11.16770458 -3.76523614 2.1169826e-06 10.62112522
		 -3.76523614 3.45101643 9.034866333 -3.76523614 6.56422424 6.56422424 -3.76523614
		 9.034861565 3.45101333 -3.76523614 10.62112617 -7.3513337e-07 0 -7.61221552 2.35230303
		 0 -7.23964787 4.47434664 0 -6.15841246 6.15841055 0 -4.47434855;
	setAttr ".tk[166:181]" 7.23964691 0 -2.35230541 7.61221361 0 -1.4429925e-06
		 7.23964691 0 2.35230184 6.15841055 0 4.47434664 4.47434759 0 6.15841103 2.3523035
		 0 7.23964739 -9.6199506e-07 0 7.61221552 -2.35230541 0 7.23964787 -4.47435045 0 6.15841246
		 -6.15841484 0 4.47434807 -7.23965073 0 2.35230327 -7.61221361 0 -1.4429925e-06 -7.23964691
		 0 -2.35230517 -6.15841055 0 -4.47434855 -4.47434759 0 -6.15841246 -2.35230446 0 -7.23964739;
createNode polyExtrudeVertex -n "polyExtrudeVertex2";
	rename -uid "4E5ACE39-3843-97BB-1005-DB9F5F8FC4F1";
	setAttr ".ics" -type "componentList" 3 "vtx[0:19]" "vtx[40]" "vtx[62:81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".l" 1;
	setAttr ".w" 0.5;
createNode polyTweak -n "polyTweak2";
	rename -uid "624A2EB8-D749-42E8-0D3B-A29791840242";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[182:221]" -type "float3"  -9.88243484 0 5.035351276
		 -9.88243484 0 5.035351276 -7.8427434 0 7.84274244 -7.8427434 0 7.84274244 -5.03535223
		 0 9.88243389 -5.03535223 0 9.88243389 -1.73506355 0 10.95476532 -1.73506355 0 10.95476532
		 1.73506415 0 10.95476532 1.73506415 0 10.95476532 5.035351276 0 9.88243103 5.035351276
		 0 9.88243103 7.84274387 0 7.84274054 7.84274387 0 7.84274054 9.88243389 0 5.035348415
		 9.88243389 0 5.035348415 10.95476627 0 1.73506117 10.95476627 0 1.73506117 10.95476627
		 0 -1.73506641 10.95476627 0 -1.73506641 9.88243389 0 -5.035352707 9.88243389 0 -5.035352707
		 7.84274149 0 -7.84274387 7.84274149 0 -7.84274387 5.035351276 0 -9.88243294 5.035351276
		 0 -9.88243294 1.73506308 0 -10.95476532 1.73506331 0 -10.95476532 -1.73506248 0 -10.95476532
		 -1.73506248 0 -10.95476532 -5.035349846 0 -9.88243294 -5.035349846 0 -9.88243294
		 -7.84274054 0 -7.84274149 -7.84274054 0 -7.84274149 -9.88243103 0 -5.035351276 -9.88243103
		 0 -5.035351276 -10.95476055 0 -1.73506629 -10.95476055 0 -1.73506629 -10.95476627
		 0 1.73506236 -10.95476627 0 1.73506236;
createNode polyExtrudeVertex -n "polyExtrudeVertex3";
	rename -uid "82AC7B93-E24C-9729-7ABB-CBAB2281AFC8";
	setAttr ".ics" -type "componentList" 1 "vtx[82:101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".l" 1;
	setAttr ".w" 0.5;
createNode polyTweak -n "polyTweak3";
	rename -uid "805A47BF-0049-CF51-D901-A2B9DE8D8D0E";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk";
	setAttr ".tk[0]" -type "float3" 7.8345065 0 -2.5455835 ;
	setAttr ".tk[1]" -type "float3" 6.6644297 0 -4.8419862 ;
	setAttr ".tk[2]" -type "float3" 4.8419895 0 -6.6644278 ;
	setAttr ".tk[3]" -type "float3" 2.5455856 0 -7.8345051 ;
	setAttr ".tk[4]" -type "float3" 1.0366405e-06 0 -8.2376804 ;
	setAttr ".tk[5]" -type "float3" -2.545583 0 -7.8345051 ;
	setAttr ".tk[6]" -type "float3" -4.8419857 0 -6.6644273 ;
	setAttr ".tk[7]" -type "float3" -6.6644263 0 -4.8419857 ;
	setAttr ".tk[8]" -type "float3" -7.8345046 0 -2.5455828 ;
	setAttr ".tk[9]" -type "float3" -8.2376785 0 1.2512884e-06 ;
	setAttr ".tk[10]" -type "float3" -7.8345046 0 2.5455844 ;
	setAttr ".tk[11]" -type "float3" -6.6644263 0 4.8419867 ;
	setAttr ".tk[12]" -type "float3" -4.8419852 0 6.6644273 ;
	setAttr ".tk[13]" -type "float3" -2.5455828 0 7.8345046 ;
	setAttr ".tk[14]" -type "float3" 7.8304868e-07 0 8.2376804 ;
	setAttr ".tk[15]" -type "float3" 2.5455842 0 7.8345046 ;
	setAttr ".tk[16]" -type "float3" 4.8419857 0 6.6644273 ;
	setAttr ".tk[17]" -type "float3" 6.6644263 0 4.8419862 ;
	setAttr ".tk[18]" -type "float3" 7.8345046 0 2.5455844 ;
	setAttr ".tk[19]" -type "float3" 8.2376785 0 1.2618068e-06 ;
	setAttr ".tk[404]" -type "float3" -1.3571906 0 8.5689678 ;
	setAttr ".tk[405]" -type "float3" -1.3571906 0 8.5689678 ;
	setAttr ".tk[407]" -type "float3" -3.9387205 0 7.7301741 ;
	setAttr ".tk[408]" -type "float3" -3.9387205 0 7.7301741 ;
	setAttr ".tk[410]" -type "float3" -6.1347022 0 6.1346993 ;
	setAttr ".tk[411]" -type "float3" -6.1347022 0 6.1346993 ;
	setAttr ".tk[413]" -type "float3" -7.7301788 0 3.93872 ;
	setAttr ".tk[414]" -type "float3" -7.7301788 0 3.93872 ;
	setAttr ".tk[416]" -type "float3" -8.5689678 0 1.3571895 ;
	setAttr ".tk[417]" -type "float3" -8.5689678 0 1.3571895 ;
	setAttr ".tk[419]" -type "float3" -8.5689602 0 -1.3571918 ;
	setAttr ".tk[420]" -type "float3" -8.5689602 0 -1.357192 ;
	setAttr ".tk[422]" -type "float3" -7.7301717 0 -3.9387205 ;
	setAttr ".tk[423]" -type "float3" -7.7301717 0 -3.9387205 ;
	setAttr ".tk[425]" -type "float3" -6.1346989 0 -6.1347003 ;
	setAttr ".tk[426]" -type "float3" -6.1346989 0 -6.1347003 ;
	setAttr ".tk[428]" -type "float3" -3.9387197 0 -7.7301741 ;
	setAttr ".tk[429]" -type "float3" -3.9387197 0 -7.7301741 ;
	setAttr ".tk[431]" -type "float3" -1.3571898 0 -8.5689678 ;
	setAttr ".tk[432]" -type "float3" -1.3571898 0 -8.5689678 ;
	setAttr ".tk[434]" -type "float3" 1.3571906 0 -8.5689678 ;
	setAttr ".tk[435]" -type "float3" 1.3571906 0 -8.5689678 ;
	setAttr ".tk[437]" -type "float3" 3.93872 0 -7.7301741 ;
	setAttr ".tk[438]" -type "float3" 3.93872 0 -7.7301741 ;
	setAttr ".tk[440]" -type "float3" 6.1346993 0 -6.1347003 ;
	setAttr ".tk[441]" -type "float3" 6.1346993 0 -6.1347003 ;
	setAttr ".tk[443]" -type "float3" 7.7301741 0 -3.9387207 ;
	setAttr ".tk[444]" -type "float3" 7.7301741 0 -3.9387207 ;
	setAttr ".tk[446]" -type "float3" 8.5689678 0 -1.3571923 ;
	setAttr ".tk[447]" -type "float3" 8.5689678 0 -1.3571923 ;
	setAttr ".tk[449]" -type "float3" 8.5689678 0 1.3571889 ;
	setAttr ".tk[450]" -type "float3" 8.5689678 0 1.3571888 ;
	setAttr ".tk[452]" -type "float3" 7.7301741 0 3.938719 ;
	setAttr ".tk[453]" -type "float3" 7.7301741 0 3.938719 ;
	setAttr ".tk[455]" -type "float3" 6.1347003 0 6.1346989 ;
	setAttr ".tk[456]" -type "float3" 6.1347003 0 6.1346989 ;
	setAttr ".tk[458]" -type "float3" 3.9387205 0 7.7301741 ;
	setAttr ".tk[459]" -type "float3" 3.9387205 0 7.7301741 ;
	setAttr ".tk[460]" -type "float3" 1.3571906 0 8.5689678 ;
	setAttr ".tk[461]" -type "float3" 1.3571906 0 8.5689678 ;
createNode polyExtrudeVertex -n "polyExtrudeVertex4";
	rename -uid "E6DF3A3C-0143-54A9-BBCB-5A89D4A00038";
	setAttr ".ics" -type "componentList" 1 "vtx[142:161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".l" 1;
	setAttr ".w" 0.5;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "06D84ECB-4E45-2A75-21CB-A0BFE59C7343";
	setAttr ".ics" -type "componentList" 1 "f[139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6712451 3.8307583 1.0028118 ;
	setAttr ".rs" 1051842062;
	setAttr ".ls" -type "double3" 0.51189047494280504 0.98105140600017604 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7527619038981153 0.84216451822103811 0.98727791863359471 ;
	setAttr ".cbx" -type "double3" -1.5897283544625997 6.8193523233968198 1.0183455761042979 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "2EBE05C6-7844-9F0E-85B0-A0BD8DC5267A";
	setAttr ".ics" -type "componentList" 1 "f[138]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5170434 3.8307583 0.95282334 ;
	setAttr ".rs" 323174706;
	setAttr ".ls" -type "double3" 0.58777871309654739 0.97930309519136227 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5914328374948263 0.84216451822103811 0.91312302666582124 ;
	setAttr ".cbx" -type "double3" -1.442653693207717 6.8193523233968198 0.99252358513750094 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "CE7FFF9D-384D-73C5-0B50-07AEF9CE3D09";
	setAttr ".ics" -type "componentList" 1 "f[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.385915 3.8307583 0.85760474 ;
	setAttr ".rs" 365511698;
	setAttr ".ls" -type "double3" 0.58707166539218569 0.98173338779617059 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4458957281198264 0.84216451822103811 0.79762414055742281 ;
	setAttr ".cbx" -type "double3" -1.3259344854440451 6.8193523233968198 0.91758530693925877 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "B6913DD7-7A43-F08D-9DE0-7C95A2B93143";
	setAttr ".ics" -type "componentList" 1 "f[136]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2906966 3.8307583 0.72647661 ;
	setAttr ".rs" 900833595;
	setAttr ".ls" -type "double3" 0.57367037612850347 0.97782032523337459 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3303967657174827 0.84216451822103811 0.65208703118242284 ;
	setAttr ".cbx" -type "double3" -1.2509962835397483 6.8193523233968198 0.8008661754695322 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "1291E490-CD4D-12BE-802F-209A36ACC344";
	setAttr ".ics" -type "componentList" 1 "f[135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2407081 3.8307583 0.57227468 ;
	setAttr ".rs" 192034838;
	setAttr ".ls" -type "double3" 0.57453826121766605 0.97283993899063703 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2562418737497092 0.84216451822103811 0.49075787621416112 ;
	setAttr ".cbx" -type "double3" -1.2251742925729514 6.8193523233968198 0.65379143792070404 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "571CD37C-8143-2194-C369-9B993A26AC01";
	setAttr ".ics" -type "componentList" 1 "f[134]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2407079 3.8307583 0.40924108 ;
	setAttr ".rs" 538604113;
	setAttr ".ls" -type "double3" 0.56942313155037394 0.98542852544622683 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2562416448678733 0.84216451822103811 0.32772423821367286 ;
	setAttr ".cbx" -type "double3" -1.2251742925729514 6.8193523233968198 0.49075791436113381 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "790AC0E0-F24B-3FAE-765E-7E9282BD5B03";
	setAttr ".ics" -type "componentList" 1 "f[133]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2906963 3.8307583 0.2550391 ;
	setAttr ".rs" 909074093;
	setAttr ".ls" -type "double3" 0.5896308273829125 0.98422804581463896 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3303964605417014 0.84216451822103811 0.18064948159135838 ;
	setAttr ".cbx" -type "double3" -1.250995978363967 6.8193523233968198 0.32942872124589939 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "D6AE5B6F-8F4B-F9B2-8817-64A0977DD151";
	setAttr ".ics" -type "componentList" 1 "f[132]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3859148 3.8307583 0.12391088 ;
	setAttr ".rs" 1530594503;
	setAttr ".ls" -type "double3" 0.5820067171817751 0.9868955225676368 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4458954229440451 0.84216451822103811 0.06393029290117283 ;
	setAttr ".cbx" -type "double3" -1.3259341802682638 6.8193523233968198 0.18389147835649511 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "02A3D37A-4843-68BD-FBC6-1A97F718A20F";
	setAttr ".ics" -type "componentList" 1 "f[131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5170431 3.8307583 0.028692255 ;
	setAttr ".rs" 505848504;
	setAttr ".ls" -type "double3" 0.58302787217612351 0.97873896692726436 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5914326849069358 0.84216451822103811 -0.01100802344404201 ;
	setAttr ".cbx" -type "double3" -1.4426535406198264 6.8193523233968198 0.068392535027637674 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "23FBD38A-FA43-799E-4C29-CA9212D03138";
	setAttr ".ics" -type "componentList" 1 "f[130]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6712451 3.8307583 -0.021296168 ;
	setAttr ".rs" 2041929159;
	setAttr ".ls" -type "double3" 0.64125958504402492 0.98294270262609973 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7527618780221701 0.84216451822103811 -0.036829976263866228 ;
	setAttr ".cbx" -type "double3" -1.5897282781686546 6.8193523233968198 -0.0057623569401357598 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "29CF45CF-0843-89FF-E10B-1EB2FAAFB6DE";
	setAttr ".ics" -type "componentList" 1 "f[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.8342787 3.8307583 -0.021296149 ;
	setAttr ".rs" 590052698;
	setAttr ".ls" -type "double3" 0.60172231495469486 0.97638814035302579 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9157954778756858 0.84216451822103811 -0.036829976263866228 ;
	setAttr ".cbx" -type "double3" -1.7527618780221701 6.8193523233968198 -0.0057623187931631036 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "E61D8692-104D-EBAC-6063-D1BE48E0EAF4";
	setAttr ".ics" -type "componentList" 1 "f[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9884807 3.8307583 0.028692313 ;
	setAttr ".rs" 2123409004;
	setAttr ".ls" -type "double3" 0.59941148362244556 0.98100915659551968 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.062870215424514 0.84216451822103811 -0.011007985297069353 ;
	setAttr ".cbx" -type "double3" -1.9140910711374044 6.8193523233968198 0.068392611321582988 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "B85ACE2F-1340-60E9-D51E-339E446B6A98";
	setAttr ".ics" -type "componentList" 1 "f[127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1196089 3.8307583 0.12391097 ;
	setAttr ".rs" 1748264154;
	setAttr ".ls" -type "double3" 0.56214930450204414 0.9733857487819878 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1795894231881858 0.84216451822103811 0.063930369195118145 ;
	setAttr ".cbx" -type "double3" -2.0596281805124046 6.8193523233968198 0.18389157372392675 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "CBC58B25-8347-C911-0A8A-7C86A2A90855";
	setAttr ".ics" -type "componentList" 1 "f[126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2148275 3.8307583 0.25503919 ;
	setAttr ".rs" 2063616779;
	setAttr ".ls" -type "double3" 0.55979227285645949 0.99019251497330285 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2545276250924826 0.84216451822103811 0.18064957695879003 ;
	setAttr ".cbx" -type "double3" -2.1751271429147483 6.8193523233968198 0.32942875939287208 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "BE50147A-9D4F-CDB1-40D8-388439D652C0";
	setAttr ".ics" -type "componentList" 1 "f[125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2648158 3.8307583 0.40924111 ;
	setAttr ".rs" 214027211;
	setAttr ".ls" -type "double3" 0.57434269469875676 0.98183609052877685 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2803496160592793 0.84216451822103811 0.32772431450761813 ;
	setAttr ".cbx" -type "double3" -2.2492819585885764 6.8193523233968198 0.49075791436113381 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "E8F20EFC-AC49-8582-37DC-54BFFD09EB74";
	setAttr ".ics" -type "componentList" 1 "f[124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2648158 3.8307583 0.57227468 ;
	setAttr ".rs" 933123576;
	setAttr ".ls" -type "double3" 0.56635366213693972 0.97309305753943776 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2803496160592793 0.84216451822103811 0.49075787621416112 ;
	setAttr ".cbx" -type "double3" -2.2492819585885764 6.8193523233968198 0.65379151421464943 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "404968AF-624E-118E-E1C5-BC895E9394B5";
	setAttr ".ics" -type "componentList" 1 "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2148275 3.8307583 0.72647661 ;
	setAttr ".rs" 1813936413;
	setAttr ".ls" -type "double3" 0.54091171404191363 0.96224537702189894 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2545276250924826 0.84216451822103811 0.65208703118242284 ;
	setAttr ".cbx" -type "double3" -2.1751271429147483 6.8193523233968198 0.8008661754695322 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "F67D854C-9C43-2229-725B-6C9DBED2CDA9";
	setAttr ".ics" -type "componentList" 1 "f[122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1196089 3.8307583 0.85760474 ;
	setAttr ".rs" 1007545537;
	setAttr ".ls" -type "double3" 0.56384975184442554 0.97619637828612449 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1795892706002951 0.84216451822103811 0.7976242168513682 ;
	setAttr ".cbx" -type "double3" -2.0596281805124046 6.8193523233968198 0.91758530693925877 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "E75B1F6A-D24B-8EF4-6352-5C9901977806";
	setAttr ".ics" -type "componentList" 1 "f[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9884807 3.8307583 0.95282334 ;
	setAttr ".rs" 1248609603;
	setAttr ".ls" -type "double3" 0.63641645029257754 0.98133485848118118 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.062870215424514 0.84216451822103811 0.91312302666582124 ;
	setAttr ".cbx" -type "double3" -1.9140910711374044 6.8193523233968198 0.99252366143144632 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "B1673B2F-9844-BAE6-E62A-F997E2365661";
	setAttr ".ics" -type "componentList" 1 "f[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.8342787 3.8307583 1.0028118 ;
	setAttr ".rs" 1112243007;
	setAttr ".ls" -type "double3" 0.56453243770890094 0.9808151051205567 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9157954778756858 0.84216451822103811 0.98727799492754009 ;
	setAttr ".cbx" -type "double3" -1.7527618780221701 6.8193523233968198 1.0183455761042979 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "5669C0B6-0B40-5F02-C96F-B6BAF3133A76";
	setAttr ".ics" -type "componentList" 1 "f[133]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2907765 3.830765 0.25519711 ;
	setAttr ".rs" 858884094;
	setAttr ".lt" -type "double3" 1.1546319456101628e-16 3.5500682254996364e-16 -0.028253194004923498 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3141849126901388 0.88925314126791311 0.20896697121538182 ;
	setAttr ".cbx" -type "double3" -1.2673680486764669 6.7722771280843199 0.30142724114336034 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "A399ACD4-5E40-6DEC-8BAE-9090593E0CF5";
	setAttr ".ics" -type "componentList" 1 "f[132]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3860421 3.8307638 0.12403848 ;
	setAttr ".rs" 1495770091;
	setAttr ".lt" -type "double3" -1.2989609388114331e-16 -2.8789904488180086e-16 -0.018986623940996445 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4209512701120139 0.88130483804525683 0.087569666680469713 ;
	setAttr ".cbx" -type "double3" -1.3511331548776389 6.7802226847249454 0.16050728875078221 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "AEF31964-3146-95E5-396E-469ABD143808";
	setAttr ".ics" -type "componentList" 1 "f[131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5172033 3.8307676 0.028773947 ;
	setAttr ".rs" 1061141759;
	setAttr ".lt" -type "double3" 2.9642954757491679e-16 9.9560117094998913e-16 -0.022915691826717169 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5605745306100607 0.90569936929525685 0.0044178493586923655 ;
	setAttr ".cbx" -type "double3" -1.4738321294870138 6.7558354776936946 0.05313004570879002 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "C379488B-C448-29D9-0AAE-DD9141A66243";
	setAttr ".ics" -type "componentList" 1 "f[130]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6713978 3.830766 -0.021271963 ;
	setAttr ".rs" 2141344555;
	setAttr ".lt" -type "double3" 3.6748382115092682e-16 4.8089136839291063e-16 -0.015921058601080992 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7236713018502952 0.89314504800619432 -0.032175473395213885 ;
	setAttr ".cbx" -type "double3" -1.6191244878854514 6.7683867472249446 -0.010368451300487323 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "62BAF66A-C948-102A-3ED0-78901EE3EB30";
	setAttr ".ics" -type "componentList" 1 "f[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.8341091 3.8307683 -0.021269273 ;
	setAttr ".rs" 123657929;
	setAttr ".lt" -type "double3" -9.7977181923170072e-17 1.2378878304353247e-15 -0.013727689355891042 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8831593694772482 0.91273641763510061 -0.031649579230174821 ;
	setAttr ".cbx" -type "double3" -1.7850586309518577 6.74880056558432 -0.010888966742381854 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "245C270B-5245-CEAE-5190-5C97F5C2AE7E";
	setAttr ".ics" -type "componentList" 1 "f[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9883269 3.8307667 0.028770799 ;
	setAttr ".rs" 485331535;
	setAttr ".lt" -type "double3" 4.707345624410664e-16 -3.4247127703168625e-16 -0.01719201560308398 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.032916907319045 0.89891409097494435 0.0038074215022470526 ;
	setAttr ".cbx" -type "double3" -1.9437367620553732 6.7626189249593196 0.053734179314747055 ;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	rename -uid "7D836A7B-7943-B69F-24BD-A4BD328C1079";
	setAttr ".ics" -type "componentList" 1 "f[127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1194754 3.8307695 0.12404466 ;
	setAttr ".rs" 768421197;
	setAttr ".lt" -type "double3" 1.7430501486614958e-16 -1.3714723801072637e-16 -0.012014814681055409 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1531935491647483 0.92168539224447554 0.088742419060840808 ;
	setAttr ".cbx" -type "double3" -2.0857573309030295 6.7398540323811948 0.15934689598955173 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	rename -uid "7FEA7CBA-B141-889F-348E-D78DF1BB018C";
	setAttr ".ics" -type "componentList" 2 "f[120:126]" "f[134:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7527604 3.8307629 0.61184168 ;
	setAttr ".rs" 1358424725;
	setAttr ".lt" -type "double3" -4.3409720262843622e-16 1.2964889578581662e-16 -0.02954104184862804 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2737089910592796 0.8714204996663506 0.2109835537043955 ;
	setAttr ".cbx" -type "double3" -1.2318118658151389 6.7901054972249453 1.0126998241511729 ;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "079CB09E-F54A-8132-32B6-AAB65BBE11DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 64 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[1263:1267]" "e[1271:1275]" "e[1279:1283]" "e[1287:1291]" "e[1295:1299]" "e[1304]" "e[1307]" "e[1311:1315]" "e[1320]" "e[1323]" "e[1327:1331]" "e[1335:1339]" "e[1343:1347]" "e[1351:1355]" "e[1359:1363]" "e[1368]" "e[1371]" "e[1375:1379]" "e[1383:1387]" "e[1391:1395]" "e[1399:1403]" "e[1407:1411]" "e[1415:1419]" "e[1423:1427]" "e[1432]" "e[1435]" "e[1439:1443]" "e[1447:1451]" "e[1455:1459]" "e[1463:1467]" "e[1471:1475]" "e[1479:1483]" "e[1487:1491]" "e[1495:1499]" "e[1503:1507]" "e[1511:1515]" "e[1519:1523]" "e[1528]" "e[1531]" "e[1536:1539]" "e[1543:1547]" "e[1551:1555]" "e[1559:1563]" "e[1567:1571]" "e[1575:1579]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak4";
	rename -uid "C6758AF7-874B-2213-B336-C888DB093853";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[42]" -type "float3" -1.6668064e-06 0 -16.210875 ;
	setAttr ".tk[43]" -type "float3" 4.5644255 0 -15.417461 ;
	setAttr ".tk[44]" -type "float3" 8.6820593 0 -13.114866 ;
	setAttr ".tk[45]" -type "float3" 11.949828 0 -9.528511 ;
	setAttr ".tk[46]" -type "float3" 14.047873 0 -5.0094371 ;
	setAttr ".tk[47]" -type "float3" 14.770801 0 -3.3336128e-06 ;
	setAttr ".tk[48]" -type "float3" 14.047873 0 5.0094304 ;
	setAttr ".tk[49]" -type "float3" 11.949828 0 9.5285091 ;
	setAttr ".tk[50]" -type "float3" 8.6820593 0 13.114866 ;
	setAttr ".tk[51]" -type "float3" 4.5644269 0 15.41746 ;
	setAttr ".tk[52]" -type "float3" -1.6668064e-06 0 16.210875 ;
	setAttr ".tk[53]" -type "float3" -4.5644326 0 15.417461 ;
	setAttr ".tk[54]" -type "float3" -8.6820641 0 13.114878 ;
	setAttr ".tk[55]" -type "float3" -11.949835 0 9.528511 ;
	setAttr ".tk[56]" -type "float3" -14.047874 0 5.0094323 ;
	setAttr ".tk[57]" -type "float3" -14.770801 0 -3.3336128e-06 ;
	setAttr ".tk[58]" -type "float3" -14.047873 0 -5.0094371 ;
	setAttr ".tk[59]" -type "float3" -11.949828 0 -9.528511 ;
	setAttr ".tk[60]" -type "float3" -8.6820593 0 -13.114866 ;
	setAttr ".tk[61]" -type "float3" -4.5644269 0 -15.41746 ;
	setAttr ".tk[122]" -type "float3" -2.5457734e-06 0 -15.914004 ;
	setAttr ".tk[123]" -type "float3" 4.917695 0 -15.135117 ;
	setAttr ".tk[124]" -type "float3" 9.3540154 0 -12.874702 ;
	setAttr ".tk[125]" -type "float3" 12.874697 0 -9.354023 ;
	setAttr ".tk[126]" -type "float3" 15.135116 0 -4.9177012 ;
	setAttr ".tk[127]" -type "float3" 15.913998 0 -3.3943631e-06 ;
	setAttr ".tk[128]" -type "float3" 15.135116 0 4.9176946 ;
	setAttr ".tk[129]" -type "float3" 12.874697 0 9.3540154 ;
	setAttr ".tk[130]" -type "float3" 9.3540154 0 12.874697 ;
	setAttr ".tk[131]" -type "float3" 4.917695 0 15.135117 ;
	setAttr ".tk[132]" -type "float3" -2.5457734e-06 0 15.914004 ;
	setAttr ".tk[133]" -type "float3" -4.9177027 0 15.135117 ;
	setAttr ".tk[134]" -type "float3" -9.3540239 0 12.874701 ;
	setAttr ".tk[135]" -type "float3" -12.874706 0 9.3540163 ;
	setAttr ".tk[136]" -type "float3" -15.135119 0 4.9176989 ;
	setAttr ".tk[137]" -type "float3" -15.913998 0 -3.3943631e-06 ;
	setAttr ".tk[138]" -type "float3" -15.135117 0 -4.9177012 ;
	setAttr ".tk[139]" -type "float3" -12.874697 0 -9.3540163 ;
	setAttr ".tk[140]" -type "float3" -9.3540163 0 -12.874697 ;
	setAttr ".tk[141]" -type "float3" -4.9177012 0 -15.135117 ;
	setAttr ".tk[646]" -type "float3" -1.1920929e-07 0 3.5762787e-07 ;
	setAttr ".tk[647]" -type "float3" -1.1920929e-07 0 3.5762787e-07 ;
	setAttr ".tk[648]" -type "float3" -1.1920929e-07 0 3.5762787e-07 ;
	setAttr ".tk[649]" -type "float3" -1.1920929e-07 0 3.5762787e-07 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C314C285-AC44-1E22-9D4F-FD922CDC6EBC";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1134\n            -height 745\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 745\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 745\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "416EA38C-8145-485F-6062-FB9ADADF276D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "90573A0D-ED4F-4208-C6BE-B19BABE2EDBC";
	setAttr ".uopa" yes;
	setAttr -s 1894 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 1.33091497 -3.51113367 1.13214397 -3.90124345
		 0.82255089 -4.21083689 0.43244052 -4.40960836 0 -4.47809982 -0.43244052 -4.40960789
		 -0.82255065 -4.21083689 -1.1321435 -3.90124345 -1.3309145 -3.51113343 -1.39940631
		 -3.078692913 -1.3309145 -2.64625263 -1.1321435 -2.25614262 -0.82255036 -1.94654953
		 -0.43244025 -1.74777853 0 -1.67928696 0.43243998 -1.74777853 0.8225503 -1.94654953
		 1.1321435 -2.25614262 1.3309145 -2.64625263 1.39940596 -3.078692913 -1.11952484 -1.67928696
		 -1.0075724125 -1.67928696 -0.89562011 -1.67928696 -0.78366768 -1.67928696 -0.67171532
		 -1.67928696 -0.55976295 -1.67928696 -0.44781056 -1.67928696 -0.3358582 -1.67928696
		 -0.2239058 -1.67928696 -0.11195344 -1.67928696 -1.0728836e-06 -1.67928696 0.11195129
		 -1.67928696 0.22390366 -1.67928696 0.33585602 -1.67928696 0.44780844 -1.67928696
		 0.55976069 -1.67928696 0.67171311 -1.67928696 0.78366566 -1.67928696 0.89561796 -1.67928696
		 1.0075701475 -1.67928696 1.11952269 -1.67928696 -1.11952484 1.67928743 -1.0075724125
		 1.67928743 -0.89562011 1.67928743 -0.78366768 1.67928743 -0.67171532 1.67928743 -0.55976295
		 1.67928743 -0.44781056 1.67928743 -0.3358582 1.67928743 -0.2239058 1.67928743 -0.11195344
		 1.67928743 -1.0728836e-06 1.67928743 0.11195129 1.67928743 0.22390366 1.67928743
		 0.33585602 1.67928743 0.44780844 1.67928743 0.55976069 1.67928743 0.67171311 1.67928743
		 0.78366566 1.67928743 0.89561796 1.67928743 1.0075701475 1.67928743 1.11952269 1.67928743
		 1.33091497 2.64625311 1.13214397 2.25614262 0.82255089 1.94654965 0.43244052 1.74777865
		 0 1.67928696 -0.43244052 1.74777865 -0.82255065 1.94654989 -1.1321435 2.25614333
		 -1.3309145 2.64625311 -1.39940631 3.078693628 -1.3309145 3.51113367 -1.1321435 3.90124416
		 -0.82255036 4.21083689 -0.43244025 4.40960836 0 4.47809935 0.43243998 4.40960836
		 0.8225503 4.21083689 1.1321435 3.90124416 1.3309145 3.51113367 1.39940596 3.078693628
		 0 -3.078692913 0 3.078693628 0.44780844 -1.534024 0.33585602 -1.534024 0.22390366
		 -1.534024 0.11195129 -1.534024 -1.0728836e-06 -1.534024 -0.11195344 -1.534024 -0.2239058
		 -1.534024 -0.3358582 -1.534024 -0.44781056 -1.534024 -0.55976295 -1.534024 -0.67171532
		 -1.534024 -0.78366768 -1.534024 -0.89562011 -1.534024 -1.0075724125 -1.534024 1.11952269
		 -1.534024 -1.11952484 -1.534024 1.0075701475 -1.534024 0.89561796 -1.534024 0.78366566
		 -1.534024 0.67171311 -1.534024 0.55976069 -1.534024 -0.67171532 -1.58557713 -0.78366768
		 -1.58557713 -0.89562011 -1.58557713 -1.0075724125 -1.58557713 1.11952269 -1.58557713
		 -1.11952484 -1.58557713 1.0075701475 -1.58557713 0.89561796 -1.58557713 0.78366566
		 -1.58557713 0.67171311 -1.58557713 0.55976069 -1.58557713 0.44780844 -1.58557713
		 0.33585602 -1.58557713 0.22390366 -1.58557713 0.11195129 -1.58557713 -1.0728836e-06
		 -1.58557713 -0.11195344 -1.58557713 -0.2239058 -1.58557713 -0.3358582 -1.58557713
		 -0.44781056 -1.58557713 -0.55976295 -1.58557713 0.44780844 -1.43346238 0.33585602
		 -1.43346238 0.22390366 -1.43346238 0.11195129 -1.43346238 -1.3411045e-06 -1.43346238
		 -0.11195371 -1.43346238 -0.2239058 -1.43346238 -0.3358582 -1.43346238 -0.44781083
		 -1.43346238 -0.55976319 -1.43346238 -0.67171532 -1.43346238 -0.78366768 -1.43346238
		 -0.89562011 -1.43346238 -1.0075726509 -1.43346238 1.11952269 -1.43346238 -1.11952507
		 -1.43346238 1.0075701475 -1.43346238 0.89561796 -1.43346238 0.78366506 -1.43346238
		 0.67171264 -1.43346238 0.55976033 -1.43346238 0.44780844 1.58623219 0.33585602 1.58623219
		 0.22390366 1.58623219 0.11195129 1.58623219 -1.0728836e-06 1.58623219 -0.11195344
		 1.58623219 -0.2239058 1.58623219 -0.3358582 1.58623219 -0.44781056 1.58623219 -0.55976295
		 1.58623219 -0.67171532 1.58623219 -0.78366768 1.58623219 -0.89562011 1.58623219 -1.0075724125
		 1.58623219 1.11952269 1.58623219 -1.11952484 1.58623219 1.0075701475 1.58623219 0.89561796
		 1.58623219 0.78366566 1.58623219 0.67171311 1.58623219 0.55976069 1.58623219 0.44780844
		 1.49581957 0.33585602 1.49581957 0.22390366 1.49581957 0.11195129 1.49581957 -1.0728836e-06
		 1.49581957 -0.11195344 1.49581957 -0.2239058 1.49581957 -0.3358582 1.49581957 -0.44781056
		 1.49581957 -0.55976295 1.49581957 -0.67171532 1.49581957 -0.78366768 1.49581957 -0.89562011
		 1.49581957 -1.0075724125 1.49581957 1.11952269 1.49581957 -1.11952484 1.49581957
		 1.0075701475 1.49581957 0.89561796 1.49581957 0.78366566 1.49581957 0.67171311 1.49581957
		 0.55976069 1.49581957 1.2646575 3.6411705 -1.082207441 1.67928743 1.1984005 3.77120733
		 -1.044889927 1.67928743 1.028945446 4.0044412613 -0.97025526 1.67928743 0.92574847
		 4.10763931 -0.93293756 1.67928743 0.69251347 4.27709341 -0.85830283 1.67928743 0.56247699
		 4.34335089 -0.82098514 1.67928743 0.28829336 4.4324379 -0.74635053 1.67928743 0.14414668
		 4.45526886 -0.70903277 1.67928743 -0.14414692 4.45526886 -0.6343981 1.67928743 -0.2882936
		 4.43243837 -0.59708041 1.67928743 -0.56247723 4.34335041 -0.5224458 1.67928743 -0.69251394
		 4.27709436 -0.48512805 1.67928743 -0.92574847 4.10763931 -0.41049337 1.67928743 -1.028945923
		 4.004442215 -0.37317565 1.67928743 -1.1984005 3.77120733 -0.29854101 1.67928743 -1.2646575
		 3.64117098 -0.26122329 1.67928743 -1.35374534 3.36698675 -0.18658862 1.67928743 -1.37657571
		 3.22284031 -0.14927089 1.67928743 -1.37657571 2.93454647 -0.074636251 1.67928743
		 -1.3537451 2.79040051 -0.037318528 1.67928743 -1.2646575 2.51621628 0.037315845 1.67928743
		 -1.1984005 2.38618016 0.074633837 1.67928743 -1.028945923 2.15294504 0.14926875 1.67928743
		 -0.92574811 2.049747705 0.1865862 1.67928743 -0.69251394 1.88029265 0.26122057 1.67928743
		 -0.56247693 1.81403565 0.29853857 1.67928743 -0.28829384 1.72494841 0.37317353 1.67928743
		 -0.14414668 1.70211744 0.41049099 1.67928743 0.14414668 1.70211744 0.48512542 1.67928743
		 0.28829336 1.72494841 0.52244329 1.67928743 0.56247699 1.81403565;
	setAttr ".uvtk[250:499]" 0.5970782 1.67928743 0.69251394 1.88029265 0.6343956
		 1.67928743 0.92574847 2.04974699 0.70903015 1.67928743 1.028946519 2.15294504 0.74634802
		 1.67928743 1.1984005 2.38617897 0.82098305 1.67928743 1.26465797 2.51621628 0.85830045
		 1.67928743 1.35374534 2.79039979 0.93293488 1.67928743 1.37657571 2.93454647 0.97025287
		 1.67928743 1.37657499 3.22283936 1.044887781 1.67928743 1.35374498 3.36698675 1.082205296
		 1.67928743 0.88727629 3.36698675 0.44363815 3.22284031 0.75476241 3.62705994 0.37738121
		 3.35287666 0.54836667 3.83345556 0.27418363 3.45607471 0.28829336 3.96596956 0.14414668
		 3.52233171 0 4.011630535 0 3.54516172 -0.28829384 3.96596956 -0.14414668 3.52233171
		 -0.54836726 3.83345556 -0.27418363 3.45607471 -0.75476235 3.62705994 -0.37738118
		 3.35287666 -0.88727629 3.36698675 -0.44363815 3.22284031 -0.93293756 3.078692913
		 -0.46646878 3.078693628 -0.88727629 2.79039979 -0.44363815 2.93454647 -0.75476235
		 2.53032637 -0.37738118 2.80451012 -0.54836726 2.32393122 -0.27418363 2.70131254 -0.28829384
		 2.19141674 -0.14414668 2.63505554 0 2.14575553 0 2.61222458 0.28829336 2.19141674
		 0.14414668 2.63505554 0.54836726 2.32393074 0.27418363 2.70131254 0.75476241 2.53032589
		 0.37738121 2.8045094 0.88727629 2.79039979 0.44363815 2.93454647 0.93293703 3.078692913
		 0.46646851 3.078693628 0.44780844 1.63276005 0.33585602 1.63276005 0.22390366 1.63276005
		 0.11195129 1.63276005 -1.0728836e-06 1.63276005 -0.11195344 1.63276005 -0.2239058
		 1.63276005 -0.3358582 1.63276005 -0.44781056 1.63276005 -0.55976295 1.63276005 -0.67171532
		 1.63276005 -0.78366768 1.63276005 -0.89562011 1.63276005 -1.0075724125 1.63276005
		 1.11952269 1.63276005 -1.11952484 1.63276005 1.0075701475 1.63276005 0.89561796 1.63276005
		 0.78366566 1.63276005 0.67171311 1.63276005 0.55976069 1.63276005 -1.082207441 -1.67928696
		 1.2646575 -3.64117026 -1.044889927 -1.67928696 1.19840097 -3.77120709 -0.97025526
		 -1.67928696 1.028946042 -4.0044412613 -0.93293756 -1.67928696 0.92574847 -4.10763931
		 -0.85830283 -1.67928696 0.69251394 -4.27709436 -0.82098514 -1.67928696 0.56247747
		 -4.34335089 -0.74635053 -1.67928696 0.28829336 -4.43243885 -0.70903277 -1.67928696
		 0.14414668 -4.45526934 -0.6343981 -1.67928696 -0.14414692 -4.45526886 -0.59708041
		 -1.67928696 -0.2882936 -4.43243837 -0.5224458 -1.67928696 -0.56247723 -4.34335089
		 -0.48512805 -1.67928696 -0.69251394 -4.27709389 -0.41049337 -1.67928696 -0.92574847
		 -4.10763931 -0.37317565 -1.67928696 -1.028945923 -4.0044412613 -0.29854101 -1.67928696
		 -1.1984005 -3.77120662 -0.26122329 -1.67928696 -1.2646575 -3.64116979 -0.18658862
		 -1.67928696 -1.35374534 -3.36698651 -0.14927089 -1.67928696 -1.37657571 -3.22283959
		 -0.074636251 -1.67928696 -1.37657571 -2.93454647 -0.037318528 -1.67928696 -1.3537451
		 -2.79039955 0.037315845 -1.67928696 -1.2646575 -2.51621628 0.074633837 -1.67928696
		 -1.1984005 -2.38617921 0.14926875 -1.67928696 -1.028945923 -2.15294504 0.1865862
		 -1.67928696 -0.92574811 -2.049747467 0.26122057 -1.67928696 -0.69251394 -1.88029253
		 0.29853857 -1.67928696 -0.56247693 -1.81403553 0.37317353 -1.67928696 -0.28829384
		 -1.72494817 0.41049099 -1.67928696 -0.14414668 -1.7021172 0.48512542 -1.67928696
		 0.14414668 -1.70211756 0.52244329 -1.67928696 0.28829336 -1.72494817 0.5970782 -1.67928696
		 0.5624764 -1.81403553 0.6343956 -1.67928696 0.69251347 -1.88029253 0.70903015 -1.67928696
		 0.92574799 -2.049747467 0.74634802 -1.67928696 1.028946042 -2.15294504 0.82098305
		 -1.67928696 1.1984005 -2.38617921 0.85830045 -1.67928696 1.2646575 -2.51621604 0.93293488
		 -1.67928696 1.35374498 -2.79039955 0.97025287 -1.67928696 1.37657499 -2.93454647
		 1.044887781 -1.67928696 1.37657499 -3.22283983 1.082205296 -1.67928696 1.35374534
		 -3.36698651 1.11952269 -1.64805043 -1.11952484 -1.64805043 1.11952269 -1.61681378
		 -1.11952484 -1.61681378 -1.0075726509 -1.64805043 -1.0075724125 -1.61681378 -0.89562035
		 -1.64805043 -0.89562011 -1.61681378 -0.78366792 -1.64805043 -0.78366768 -1.61681378
		 -0.67171562 -1.64805043 -0.67171532 -1.61681378 -0.55976319 -1.64805043 -0.55976295
		 -1.61681378 -0.44781083 -1.64805043 -0.44781056 -1.61681378 -0.33585846 -1.64805043
		 -0.3358582 -1.61681378 -0.22390607 -1.64805043 -0.2239058 -1.61681378 -0.11195371
		 -1.64805043 -0.11195344 -1.61681378 -1.3411045e-06 -1.64805043 -1.0728836e-06 -1.61681378
		 0.11195076 -1.64805043 0.11195129 -1.61681378 0.22390366 -1.64805043 0.22390366 -1.61681378
		 0.33585554 -1.64805043 0.33585602 -1.61681378 0.44780844 -1.64805043 0.44780844 -1.61681378
		 0.55976033 -1.64805043 0.55976069 -1.61681378 0.67171311 -1.64805043 0.67171311 -1.61681378
		 0.78366506 -1.64805043 0.78366566 -1.61681378 0.89561796 -1.64805043 0.89561796 -1.61681378
		 1.0075697899 -1.64805043 1.0075701475 -1.61681378 0.44363815 -3.22283983 0.88727629
		 -3.36698651 0.37738121 -3.35287666 0.75476241 -3.62706017 0.27418363 -3.45607448
		 0.54836726 -3.8334558 0.14414668 -3.52233124 0.28829336 -3.9659698 0 -3.5451622 0
		 -4.011631012 -0.14414692 -3.52233124 -0.2882936 -3.9659698 -0.27418363 -3.45607448
		 -0.54836702 -3.8334558 -0.37738118 -3.35287666 -0.75476235 -3.62706017 -0.44363815
		 -3.22283983 -0.88727629 -3.36698651 -0.46646905 -3.078692913 -0.93293756 -3.078692913
		 -0.44363815 -2.93454647 -0.88727629 -2.79039955 -0.37738118 -2.80450964 -0.75476235
		 -2.53032589 -0.27418363 -2.70131159 -0.54836702 -2.32393074 -0.14414692 -2.63505507
		 -0.2882936 -2.19141674 0 -2.6122241 0 -2.14575553 0.14414668 -2.63505507 0.28829336
		 -2.19141674 0.27418309 -2.70131159 0.54836726 -2.32393074 0.37738121 -2.80450964
		 0.75476241 -2.53032589 0.44363815 -2.93454647 0.88727629 -2.79039955 0.46646851 -3.078692913
		 0.93293703 -3.078692913 -0.67171532 -1.55980062 -0.78366768 -1.55980062 -0.70903301
		 -1.58557713 -0.74635023 -1.58557713 -0.89562011 -1.55980062 -0.82098544 -1.58557713
		 -0.85830265 -1.58557713 -1.0075724125 -1.55980062;
	setAttr ".uvtk[500:749]" -0.93293774 -1.58557713 -0.97025502 -1.58557713 1.11952269
		 -1.55980062 -1.11952484 -1.55980062 -1.044890165 -1.58557713 -1.082207441 -1.58557713
		 1.0075701475 -1.55980062 1.0822047 -1.58557713 1.044887781 -1.58557713 0.89561796
		 -1.55980062 0.97025287 -1.58557713 0.93293548 -1.58557713 0.78366566 -1.55980062
		 0.85829997 -1.58557713 0.82098305 -1.58557713 0.67171311 -1.55980062 0.74634802 -1.58557713
		 0.70903051 -1.58557713 0.55976069 -1.55980062 0.63439524 -1.58557713 0.5970782 -1.58557713
		 0.44780844 -1.55980062 0.52244329 -1.58557713 0.48512584 -1.58557713 0.33585602 -1.55980062
		 0.41049045 -1.58557713 0.37317353 -1.58557713 0.22390366 -1.55980062 0.29853857 -1.58557713
		 0.26122111 -1.58557713 0.11195129 -1.55980062 0.18658566 -1.58557713 0.14926875 -1.58557713
		 -1.0728836e-06 -1.55980062 0.074633837 -1.58557713 0.037316382 -1.58557713 -0.11195344
		 -1.55980062 -0.037318796 -1.58557713 -0.074635983 -1.58557713 -0.2239058 -1.55980062
		 -0.14927116 -1.58557713 -0.18658835 -1.58557713 -0.3358582 -1.55980062 -0.26122355
		 -1.58557713 -0.29854074 -1.58557713 -0.44781056 -1.55980062 -0.37317592 -1.58557713
		 -0.41049311 -1.58557713 -0.55976295 -1.55980062 -0.48512831 -1.58557713 -0.5224455
		 -1.58557713 -0.59708071 -1.58557713 -0.63439786 -1.58557713 0.44780844 -1.48374295
		 0.33585602 -1.48374295 0.22390366 -1.48374295 0.11195129 -1.48374295 -1.0728836e-06
		 -1.48374295 -0.11195344 -1.48374295 -0.2239058 -1.48374295 -0.3358582 -1.48374295
		 -0.44781056 -1.48374295 -0.55976295 -1.48374295 -0.67171532 -1.48374295 -0.78366768
		 -1.48374295 -0.89562011 -1.48374295 -1.0075724125 -1.48374295 1.11952269 -1.48374295
		 -1.11952484 -1.48374295 1.0075701475 -1.48374295 0.89561796 -1.48374295 0.78366506
		 -1.48374295 0.67171311 -1.48374295 0.55976033 -1.48374295 0.44780844 -1.36659861
		 0.33585602 -1.36659861 0.38561231 -1.43346238 0.22390366 -1.36659861 0.27366048 -1.43346238
		 0.11195129 -1.36659861 0.16170758 -1.43346238 -1.3411045e-06 -1.36659861 0.049755752
		 -1.43346238 -0.11195371 -1.36659861 -0.06219694 -1.43346238 -0.2239058 -1.36659861
		 -0.16792989 -1.43346238 -0.3358582 -1.36659861 -0.28610167 -1.43346238 -0.44781083
		 -1.36659861 -0.39805433 -1.43346238 -0.55976319 -1.36659861 -0.51000643 -1.43346238
		 -0.67171532 -1.36659861 -0.62195885 -1.43346238 -0.78366768 -1.36659861 -0.73391116
		 -1.43346238 -0.89562011 -1.36659861 -0.84586382 -1.43346238 -1.0075726509 -1.36659861
		 -0.957816 -1.43346238 1.11952269 -1.36659861 -1.11952507 -1.36659861 -1.069768548
		 -1.43346238 1.0075701475 -1.36659861 1.057326555 -1.43346238 0.89561796 -1.36659861
		 0.94537485 -1.43346238 0.78366506 -1.36659861 0.83342183 -1.43346238 0.67171264 -1.36659861
		 0.72146881 -1.43346238 0.55976033 -1.36659861 0.60951722 -1.43346238 0.50378382 -1.43346238
		 0.44780844 1.54102588 0.33585602 1.54102588 0.39805168 1.49581885 0.22390366 1.54102588
		 0.28609985 1.49581885 0.11195129 1.54102588 0.17414689 1.49581885 -1.0728836e-06
		 1.54102588 0.062195063 1.49581885 -0.11195344 1.54102588 -0.049758136 1.49581885
		 -0.2239058 1.54102588 -0.16171023 1.49581885 -0.3358582 1.54102588 -0.27366287 1.49581885
		 -0.44781056 1.54102588 -0.38561499 1.49581885 -0.55976295 1.54102588 -0.49756762
		 1.49581885 -0.67171532 1.54102588 -0.60951972 1.49581885 -0.78366768 1.54102588 -0.72147238
		 1.49581885 -0.89562011 1.54102588 -0.83342451 1.49581885 -1.0075724125 1.54102588
		 -0.94537711 1.49581885 1.11952269 1.54102588 -1.11952484 1.54102588 -1.057329297
		 1.49581885 1.0075701475 1.54102588 1.069765806 1.49581885 0.89561796 1.54102588 0.95781398
		 1.49581885 0.78366566 1.54102588 0.8458612 1.49581885 0.67171311 1.54102588 0.73390937
		 1.49581885 0.55976069 1.54102588 0.62195647 1.49581885 0.51000458 1.49581885 0.11195129
		 1.44496179 -0.11195344 1.44496179 -0.55976295 1.44496179 -1.0075724125 1.44496179
		 1.11952269 1.44496179 0.67171311 1.44496179 0.26122111 -1.43346238 0.14926875 -1.43346238
		 0.037316382 -1.43346238 -0.29854074 -1.43346238 -0.3358582 1.44496179 -0.63439786
		 -1.43346238 -0.97025502 -1.43346238 -0.93293774 1.49581957 -1.11841691 -1.29973459
		 -1.11952507 -1.30039763 -1.11952484 1.44496179 1.1184262 1.39410424 1.11952269 1.39472294
		 1.0075701475 1.44496179 0.93293548 -1.43346238 0.70903015 -1.43346238 0.59707785
		 -1.43346238 1.11952269 1.39410424 -1.11952507 -1.29973459 0.44780844 -1.29973459
		 0.44780844 1.3929987 0.33585602 -1.29973459 0.33585602 1.39296985 0.22390366 -1.29973459
		 0.22390366 1.39292836 0.11195129 -1.29973459 0.11195129 1.39305854 -1.3411045e-06
		 -1.29973459 -1.0728836e-06 1.39290857 -0.11195371 -1.29973459 -0.11195344 1.39277339
		 -0.22390553 -1.29973459 -0.2239058 1.39251566 -0.33585793 -1.29973459 -0.33585793
		 1.39410424 -0.44781083 -1.29973459 -0.44781056 1.39273655 -0.55976319 -1.29973459
		 -0.55976295 1.39296246 -0.67171532 -1.29973459 -0.67171532 1.3927803 -0.78366745
		 -1.29973459 -0.78366768 1.39293361 -0.89562011 -1.29973459 -0.89562011 1.39258385
		 -1.0075726509 -1.29973459 -1.0075724125 1.39410424 -1.008926034 1.39410424 1.11952329
		 -1.29973459 -1.11952484 1.39289713 1.0075701475 -1.29973459 1.0075701475 1.39410424
		 0.89561796 -1.29973459 0.89561796 1.39259315 0.78366506 -1.29973459 0.78366566 1.39278746
		 0.67171264 -1.29973459 0.67171311 1.39293838 0.55976069 -1.29973459 0.55976069 1.39280927
		 0.55976069 -1.29973447 0.55976069 1.39306283 0.55976069 -1.29973459 0.45052028 1.39410496
		 0.44780844 -1.29973459 0.44780791 1.39284766 0.44780844 -1.29973447 0.67171264 -1.29973459
		 0.67171311 1.39304626 0.67171264 -1.29973459 0.56199384 1.39410424 0.55976069 -1.29973459
		 0.55976069 1.39261532 0.55976069 -1.29973459 0.78366506 -1.29973459 0.78366566 1.39305806
		 0.78366506 -1.29973459 0.67399323 1.39410424 0.67171264 -1.29973459 0.67171311 1.39271963
		 0.67171264 -1.29973459 0.89561796 -1.29973459 0.89561796 1.39304566 0.89561796 -1.29973459
		 0.78593063 1.39410424 0.78366506 -1.29973459 0.78366566 1.39253211 0.78366506 -1.29973459;
	setAttr ".uvtk[750:999]" 1.0075701475 -1.29973459 1.0075701475 1.39303553 1.0075701475
		 -1.29973459 1.006275177 1.39410496 0.89756596 1.39410424 0.89561796 -1.29973459 0.89561796
		 1.39137697 0.89561796 -1.29973459 1.11952329 -1.29973459 1.11952269 1.39410424 1.0075701475
		 -1.29973459 1.0075701475 1.39306128 -1.0075726509 -1.29973459 -1.0075724125 1.39306235
		 -1.0075726509 -1.29973459 -1.0099012852 1.39410424 -1.11810732 1.39410424 -1.11952507
		 -1.29973459 -1.11952484 1.39289999 -1.11952484 -1.29973447 -0.89562011 -1.29973459
		 -0.89562035 1.39410424 -1.0075726509 -1.29973459 -1.0075724125 1.39410424 -0.78366745
		 -1.29973459 -0.78366768 1.39304197 -0.78366745 -1.29973459 -0.89430422 1.39410424
		 -0.89562011 -1.29973459 -0.89561987 1.39263153 -0.89562011 -1.29973459 -0.67171562
		 -1.29973459 -0.67171532 1.3930527 -0.67171532 -1.29973459 -0.78233874 1.39410424
		 -0.78366745 -1.29973459 -0.78366768 1.39268708 -0.78366745 -1.29973459 -0.55976319
		 -1.29973459 -0.55976295 1.39302909 -0.55976319 -1.29973459 -0.66957331 1.39410424
		 -0.67171532 -1.29973459 -0.67171532 1.39245152 -0.67171532 -1.29973495 -0.44781083
		 -1.29973459 -0.44781056 1.3930521 -0.44781083 -1.29973459 -0.55755258 1.39410424
		 -0.55976319 -1.29973459 -0.55976295 1.39267087 -0.55976349 -1.29973459 -0.33585793
		 -1.29973459 -0.3358582 1.39302659 -0.33585793 -1.29973459 -0.33713514 1.39410377
		 -0.44576201 1.39410424 -0.44781083 -1.29973459 -0.44781056 1.39187503 -0.44781083
		 -1.29973459 -0.22390553 -1.29973459 -0.2239058 1.39410424 -0.33585793 -1.29973459
		 -0.3358582 1.39410424 -0.11195371 -1.29973459 -0.11195344 1.39306855 -0.11195371
		 -1.29973459 -0.22162768 1.39410424 -0.22390553 -1.29973459 -0.2239058 1.39257598
		 -0.22390553 -1.29973459 -1.3411045e-06 -1.29973459 -1.0728836e-06 1.39304352 -1.3411045e-06
		 -1.29973459 -0.11064529 1.39410424 -0.11195371 -1.29973459 -0.11195344 1.3925941
		 -0.11195397 -1.29973459 0.11195129 -1.29973459 0.11195129 1.39303303 0.11195129 -1.29973459
		 0.0011188984 1.39410424 -1.3411045e-06 -1.29973459 -1.3411045e-06 1.39142227 -1.3411045e-06
		 -1.29973459 0.22390366 -1.29973459 0.22390366 1.39303303 0.22390366 -1.29973459 0.11325705
		 1.39410424 0.11195129 -1.29973459 0.11195129 1.39257813 0.11195129 -1.29973459 0.33585602
		 -1.29973459 0.33585602 1.39304411 0.33585602 -1.29973459 0.22521794 1.39410424 0.22390366
		 -1.29973459 0.22390366 1.39262438 0.22390366 -1.29973459 0.44780844 -1.29973459 0.44780844
		 1.39305484 0.44780844 -1.29973459 0.33720559 1.39410424 0.33585602 -1.29973459 0.33585602
		 1.39275479 0.33585602 -1.29973459 -1.010202646 1.39410496 -1.11689472 1.39410424
		 -1.0075726509 -1.29973459 -1.010202646 1.39305699 -1.010227919 -1.29973459 -1.11684048
		 -1.29973459 -1.11952484 1.39305699 -1.11952507 -1.29973459 -0.89830232 -1.29973459
		 -0.89561987 1.39410424 -1.0075726509 -1.29973459 -1.0049078465 1.39410424 -0.78632778
		 1.39410424 -0.89296031 1.39410424 -0.78366745 -1.29973459 -0.78632778 1.39305091
		 -0.78635609 -1.29902363 -0.89293146 -1.29902387 -0.89562011 1.39305162 -0.89562035
		 -1.29973459 -0.6741339 1.39410424 -0.78124917 1.39410424 -0.67171532 -1.29973459
		 -0.6741339 1.39305592 -0.67420912 -1.29915202 -0.78122222 -1.29915202 -0.78366745
		 1.39305592 -0.78366745 -1.29973459 -0.5623405 1.39410377 -0.66913801 1.39410424 -0.55976319
		 -1.29973459 -0.56234002 1.39304876 -0.56235576 -1.29973459 -0.66915083 -1.29973459
		 -0.67171532 1.39304876 -0.67171532 -1.29973459 -0.45039776 1.39410424 -0.55717576
		 1.39410424 -0.44781083 -1.29973459 -0.45039776 1.39305377 -0.45042741 -1.29973459
		 -0.55717468 -1.29973459 -0.55976295 1.39305377 -0.55976319 -1.29973459 -0.33861676
		 1.39410424 -0.44505173 1.39410424 -0.33585793 -1.29973459 -0.33861703 1.39304566
		 -0.33865359 -1.29973459 -0.44504747 -1.29896152 -0.44781056 1.39304519 -0.44781056
		 -1.29973459 0.44506133 1.39410424 0.3386032 1.39410424 0.44780844 -1.29973459 0.44506133
		 1.39305377 0.4450165 -1.29973459 0.33864802 -1.29973459 0.33585602 1.39305377 0.33585602
		 -1.29973459 0.33341962 1.39410424 0.22634059 1.39410424 0.33585656 -1.29973459 0.33341962
		 1.39305425 0.33338869 -1.29973459 0.22634596 -1.29973459 0.22390366 1.39305377 0.22390366
		 -1.29973459 0.22115338 1.39410424 0.11470211 1.39410496 0.22390366 -1.29973459 0.22115338
		 1.39304841 0.22110963 -1.29973459 0.11474538 -1.29973459 0.11195129 1.39304841 0.11195129
		 -1.29973495 0.10908467 1.39410424 0.0028661489 1.39410424 0.11195129 -1.29973447
		 0.10908467 1.39303303 0.10907447 -1.29973459 0.0028410554 -1.29973459 -1.0728836e-06
		 1.39303339 -1.3411045e-06 -1.29973447 -0.0027393401 1.39410424 -0.10921544 1.39410424
		 -1.3411045e-06 -1.29973459 -0.0027393401 1.39304519 -0.0028199553 -1.29897261 -0.10916686
		 -1.29973459 -0.11195344 1.39304519 -0.11195371 -1.29973459 -0.11465383 1.39410424
		 -0.22120571 1.39410424 -0.11195371 -1.29973459 -0.11465329 1.39305484 -0.11470559
		 -1.29900706 -0.22121423 -1.29973459 -0.2239058 1.39305484 -0.22390553 -1.29973459
		 -0.22672391 -1.29973459 -0.2239058 1.39410424 -0.33585793 -1.29973495 -0.33308789
		 1.39410424 1.11952329 -1.29973459 1.010319471 -1.29973459 1.0075701475 1.39305854
		 1.0075701475 -1.29973459 1.0048713684 1.39410424 0.89831698 1.39410424 1.0075701475
		 -1.29973459 1.0048707724 1.39304447 1.004830122 -1.29973459 0.89835811 -1.29899383
		 0.89561796 1.39304447 0.89561737 -1.29973459 0.89291465 1.39410424 0.78636897 1.39410424
		 0.89561796 -1.29973459 0.89291418 1.39304996 0.89289701 -1.29973447 0.78641641 -1.29973495
		 0.78366566 1.39304996 0.78366506 -1.29973459 0.78102422 1.39410496 0.67435455 1.39410424
		 0.78366506 -1.29973459 0.78102422 1.39305484 0.78097129 -1.29903769 0.67437756 -1.29973459
		 0.67171311 1.39305484 0.67171264 -1.29973459 0.66907454 1.39410424 0.56239963 1.39410496
		 0.67171264 -1.29973459 0.66907454 1.3930521 0.6690408 -1.29973495 0.56243265 -1.29973495
		 0.55976033 1.3930521 0.55976069 -1.29973459 0.55673134 1.39410424 0.45083791 1.39410424
		 0.55976069 -1.29973459 0.55673134 1.39305377;
	setAttr ".uvtk[1000:1249]" 0.55674529 -1.2988162 0.45086193 -1.29973459 0.44780844
		 1.39305377 0.44780844 -1.29973459 0.33860373 1.39305377 0.22634113 1.39305425 0.11470211
		 1.39304841 0.0028666854 1.39303339 -0.10921463 1.39304519 -0.22120517 1.39305484
		 -0.44505119 1.39304566 -0.55717516 1.39305377 -0.66913748 1.39304876 -0.78124893
		 1.39305592 -0.89295971 1.39305162 -1.11689413 1.39305735 1.010294437 1.39305854 1.11674356
		 -1.29899955 1.11679912 1.39305854 0.89831758 1.39304519 0.78636944 1.39305055 0.67435527
		 1.39305425 0.5624001 1.39305162 0.45083845 1.39305377 0.33585602 1.44496179 0.22390366
		 1.44496179 0.18658566 1.49581957 -1.0728836e-06 1.44496179 -0.037318796 1.49581957
		 -0.44781056 1.44496179 -0.48512831 1.49581957 -0.67171532 1.44496179 -0.78366768
		 1.44496179 0.89561796 1.44496179 0.78366566 1.44496179 0.74634802 1.49581957 0.55976069
		 1.44496179 0.44780844 1.44496179 0.55976069 -1.29973459 0.55976069 1.39299655 0.55976069
		 1.39284492 0.44775456 1.39533043 0.55836594 1.39410424 0.67171264 -1.29973459 0.67171311
		 1.39285088 0.67171311 1.39263618 0.55990124 1.39537835 0.67039955 1.39410424 0.78366506
		 -1.29973459 0.78366566 1.39297247 0.78366566 1.39276552 0.67167902 1.39541745 0.78231025
		 1.39410424 0.89561796 -1.29973459 0.89561796 1.39302051 0.89561796 1.39264226 0.78379524
		 1.3954432 0.89430213 1.39410424 1.0075701475 1.39246798 1.0075701475 1.39255238 1.0063121319
		 1.39410424 0.89585435 1.39561248 -1.0075724125 1.39277124 -1.0075726509 1.39280438
		 -1.11810088 1.39410424 -0.78366745 -1.29973459 -0.78366768 1.39283323 -0.78366768
		 1.39258814 -0.78590202 1.39410377 -0.67171532 -1.29973459 -0.67171532 1.39294839
		 -0.67171562 1.39267302 -0.78370667 1.39544582 -0.67377806 1.39410424 -0.55976319
		 -1.29973459 -0.55976295 1.39275837 -0.55976295 1.39244795 -0.67160344 1.39550495
		 -0.56103957 1.39410496 -0.44781083 -1.29973459 -0.44781056 1.39296985 -0.44781056
		 1.39269233 -0.55984998 1.39549661 -0.44913954 1.39410377 -0.3358582 1.392331 -0.33585846
		 1.39244366 -0.33708814 1.39410424 -0.4476611 1.3955164 -0.11195371 -1.29973459 -0.11195344
		 1.39303446 -0.11195317 1.39290357 -0.11338305 1.39410496 -1.3411045e-06 -1.29973459
		 -1.0728836e-06 1.39287639 -1.0728836e-06 1.39128828 -0.11176419 1.39535975 -0.0020696521
		 1.39410496 0.11195129 -1.29973459 0.11195129 1.39250708 0.11195129 1.39092755 3.2186508e-06
		 1.39571929 0.10981333 1.39410424 0.22390366 -1.29973459 0.22390366 1.39280498 0.22390366
		 1.39249742 0.11174846 1.39564872 0.22162372 1.39410496 0.33585602 -1.29973459 0.33585602
		 1.39280748 0.33585602 1.39258599 0.22385722 1.39549708 0.333812 1.39410424 0.44780844
		 -1.29973459 0.44780844 1.39287496 0.44780844 1.39273715 0.33578134 1.39542246 0.44542539
		 1.39410424 -1.0075724125 1.39305735 -1.010130763 1.39410424 -1.11696434 1.39410424
		 -1.11952484 1.39306927 -0.78366768 1.39305091 -0.7862469 1.39410424 -0.8930409 1.39410424
		 -0.89562011 1.39304447 -0.67171532 1.39305592 -0.67406207 1.39410424 -0.78132099
		 1.39410424 -0.78366768 1.39305305 -0.55976295 1.39304876 -0.5622586 1.39410424 -0.66921937
		 1.39410424 -0.67171532 1.39302802 -0.44781083 1.39305377 -0.45032147 1.39410424 -0.55725235
		 1.39410424 -0.55976295 1.39304948 -0.33585846 1.39304566 -0.33852896 1.39410424 -0.44513929
		 1.39410424 -0.44781056 1.39304566 0.44780844 1.39305377 0.44514036 1.39410424 0.33852416
		 1.39410424 0.33585602 1.3930552 0.33585602 1.39305425 0.33349329 1.39410424 0.22626638
		 1.39410424 0.22390366 1.39304662 0.22390366 1.39304841 0.22123826 1.39410424 0.11461675
		 1.39410424 0.11195129 1.39303803 0.11195129 1.39303303 0.10917968 1.39410424 0.0027689934
		 1.39410424 -1.0728836e-06 1.39303446 -1.0728836e-06 1.39304519 -0.0026528835 1.39410424
		 -0.1093035 1.39410424 -0.11195344 1.39303768 -0.11195344 1.39305484 -0.11457938 1.39410424
		 -0.22128391 1.39410424 -0.2239058 1.39304137 1.0075701475 1.39304447 1.0049587488
		 1.39410424 0.89823163 1.39410424 0.89561796 1.39304352 0.89561737 1.39304996 0.8929975
		 1.39410424 0.78628612 1.39410424 0.78366566 1.39303517 0.78366566 1.39305484 0.78110003
		 1.39410424 0.67427826 1.39410424 0.67171311 1.39305425 0.67171311 1.3930521 0.66915452
		 1.39410424 0.5623194 1.39410424 0.55976069 1.39304352 0.55976069 1.39305377 0.55681312
		 1.39410424 0.45075631 1.39410424 0.44780844 1.39306164 -0.22265211 1.39410424 -0.2239058
		 1.44496179 -0.89433968 1.39410424 -0.89562011 1.44496179 1.11952269 1.39410424 1.010338902
		 1.39410424 1.11952269 1.39410424 -0.2239058 1.39472342 -0.22500259 1.39410424 -0.22390607
		 1.39410424 -0.33476144 1.39410424 -0.3358582 1.39472294 -0.89562011 1.39472294 -0.89671683
		 1.39410424 -0.89562011 1.39410424 -1.006475687 1.39410424 -1.0075724125 1.39472294
		 -1.11952484 1.39472294 -1.11952484 1.39410424 -1.11952484 1.39410424 1.008666873
		 1.39410424 1.0075701475 1.39472294 0.55759609 -1.29973459 0.44997305 -1.29973459
		 0.6698277 -1.29973495 0.56164634 -1.29973459 0.78177738 -1.29973459 0.67360032 -1.29973459
		 0.89368606 -1.29973459 0.78559709 -1.29973459 1.0056415796 -1.29973447 0.89754665
		 -1.29973459 1.11952329 -1.29973459 1.11757684 -1.29973459 1.11759663 1.39410424 1.0075701475
		 -1.29973459 1.0095168352 -1.29973459 -1.0094525814 -1.29973459 -1.1176455 -1.29973459
		 -0.89562011 -1.29973459 -0.89752448 -1.29973459 -0.89562011 1.39410424 -0.89750421
		 1.39410424 -1.0075726509 -1.29973459 -1.0056686401 -1.29973495 -1.0075724125 1.39410424
		 -1.0056885481 1.39410424 -0.78556812 -1.29973459 -0.89371967 -1.29973459 -0.67344385
		 -1.29973459 -0.78193939 -1.29973459 -0.56160522 -1.29973459 -0.66987336 -1.29973459
		 -0.44965976 -1.29973447 -0.55791461 -1.29973459 -0.33782911 -1.29973459 -0.44583941
		 -1.29973459 -0.22390553 -1.29973459 -0.22588554 -1.29973495 -0.2239058 1.39410424
		 -0.22586444 1.39410424 -0.33585793 -1.29973459 -0.33387768 -1.29973459 -0.3358582
		 1.39410424 -0.33389956 1.39410424;
	setAttr ".uvtk[1250:1499]" -0.11388299 -1.29973459 -0.22197631 -1.29973459 -0.001958102
		 -1.29973459 -0.10999694 -1.29973459 0.10990244 -1.29973459 0.0020477772 -1.29973459
		 0.22193813 -1.29973459 0.11391634 -1.29973459 0.33411473 -1.29973459 0.22564507 -1.29973459
		 0.44584501 -1.29973459 0.33781952 -1.29973459 -0.89562011 -1.29973459 -1.004861474
		 -1.29973459 -0.89828467 1.39410424 -1.0075724125 1.39410424 -0.2239058 -1.29973495
		 -0.33303958 -1.29973459 -0.22667614 1.39410377 -0.33585793 1.39410424 1.010293961
		 1.39410496 0.44891667 -1.29973459 0.44780844 -1.30033743 0.44670022 -1.29973459 0.33696431
		 -1.29973459 0.33585602 -1.30034304 0.33474785 -1.29973459 0.22501141 -1.29973459
		 0.22390366 -1.30035841 0.22279549 -1.29973459 0.11305952 -1.29973459 0.11195129 -1.30037928
		 0.11084306 -1.29973459 0.0011071563 -1.29973459 -1.3411045e-06 -1.30039763 -0.0011095703
		 -1.29973459 -0.11084548 -1.29973459 -0.11195371 -1.30040526 -0.11306193 -1.29973459
		 -0.22390553 -1.29973459 -0.2227973 -1.29973459 -0.22390553 -1.30039763 -0.22501379
		 -1.29973459 -0.33585793 -1.29973459 -0.3347497 -1.29973459 -0.33585793 -1.30037928
		 -0.33696616 -1.29973459 -0.4467026 -1.29973459 -0.44781083 -1.30035841 -0.44891909
		 -1.29973459 -0.55865502 -1.29973459 -0.55976319 -1.30034304 -0.56087148 -1.29973459
		 -0.67060709 -1.29973459 -0.67171532 -1.30033743 -0.67282355 -1.29973459 -0.78255945
		 -1.29973459 -0.78366745 -1.30034304 -0.78477561 -1.29973459 -0.89562011 -1.29973459
		 -0.89451206 -1.29973459 -0.89562011 -1.30035841 -0.89672834 -1.29973459 -1.0075726509
		 -1.29973459 -1.0064644814 -1.29973459 -1.0075726509 -1.30037928 -1.0086809397 -1.29973459
		 1.11952329 -1.29796791 1.11952329 -1.29904294 1.11952329 -1.30039763 1.11841512 -1.29973459
		 1.0075701475 -1.29973459 1.0086785555 -1.29973459 1.0075697899 -1.30040538 1.006461978
		 -1.29973459 0.89672625 -1.29973459 0.89561796 -1.30039752 0.89450967 -1.29973459
		 0.78477323 -1.29973459 0.78366506 -1.30037904 0.78255689 -1.29973459 0.67282081 -1.29973459
		 0.67171264 -1.30035841 0.67060447 -1.29973459 0.56086898 -1.29973459 0.55976069 -1.30034304
		 0.55865264 -1.29973459 1.0085269213 1.39410424 1.0075701475 1.39410424 0.44780844
		 -1.29973459 0.44716734 1.39357424 0.44780844 1.39399481 0.44841063 1.393682 0.33585602
		 -1.29973459 0.33643472 1.39365959 0.33521122 1.39352703 0.33585602 1.8247602 0.22390366
		 -1.29973459 0.22448343 1.39363289 0.22318834 1.39345098 0.22390366 1.3945179 0.11195129
		 -1.29973459 0.1125567 1.39367402 0.11108333 1.39301372 0.11195129 1.61565781 -1.3411045e-06
		 -1.29973459 0.00077939034 1.3933686 -0.0007943511 1.39345884 -1.0728836e-06 1.39423656
		 -0.11195371 -1.29973459 -0.11120847 1.39337564 -0.11238158 1.39372993 -0.11195344
		 1.78931284 -0.22390553 -1.29973459 -0.22301617 1.39363813 -0.22390315 1.39249313
		 -0.33585793 -1.29973459 -0.33662131 1.39315522 -0.33628741 1.38628531 -0.44781083
		 -1.29973459 -0.44707441 1.3933413 -0.44836041 1.39367509 -0.44781056 1.39374065 -0.55976319
		 -1.29973459 -0.55916721 1.39365959 -0.5604465 1.39340878 -0.55976295 1.39384365 -0.67171532
		 -1.29973459 -0.67100322 1.39342523 -0.67228013 1.3936851 -0.67171532 1.83793139 -0.78366745
		 -1.29973459 -0.78311336 1.39366329 -0.78433788 1.39350915 -0.78366768 1.8377254 -0.89562011
		 -1.29973459 -0.89483833 1.39351058 -0.8956182 1.39257956 -1.0075726509 -1.29973459
		 -1.0085264444 1.3937124 -1.0075737238 1.39276767 1.11952329 -1.29973459 -1.11952507
		 -1.29973459 -1.11852479 1.3937937 -1.11952484 1.39410424 1.11952269 1.39410424 1.0075701475
		 -1.29973459 1.0068063736 1.39348829 1.0075697899 1.39313912 0.89561796 -1.29973459
		 0.89638507 1.39320219 0.89506602 1.39367723 0.89561796 1.60484314 0.78366506 -1.29973459
		 0.78436434 1.39345241 0.78313279 1.39368415 0.78366566 1.81989646 0.67171264 -1.29973459
		 0.67231214 1.39364576 0.67109179 1.39353347 0.67171311 1.82846642 0.55976069 -1.29973459
		 0.56044149 1.39349151 0.55920613 1.39369118 0.55976069 1.39423037 0.55837977 1.39362168
		 0.55976069 1.39240885 0.55915809 1.39340544 0.5571301 1.39410424 0.55976069 -1.29973459
		 0.44919056 1.39362121 0.45105678 1.39410424 0.44896364 1.39340115 0.44780791 1.39219379
		 0.44780844 -1.29973459 0.67050886 1.39361632 0.67171311 1.39244246 0.6711992 1.39322662
		 0.66945028 1.39410424 0.67171264 -1.29973459 0.56096625 1.39361525 0.56244659 1.39410424
		 0.56061649 1.39320433 0.55976069 1.39223313 0.55976069 -1.29973459 0.78246129 1.39362061
		 0.78366566 1.3920511 0.78310549 1.39333773 0.78133857 1.39410424 0.78366506 -1.29973459
		 0.67291856 1.39361906 0.67445648 1.39410424 0.67262399 1.3932929 0.67171311 1.39197683
		 0.67171264 -1.29973459 0.89438486 1.39361596 0.89561796 1.39241362 0.89510167 1.39323199
		 0.89331186 1.39410424 0.89561796 -1.29973459 0.78490198 1.39361262 0.78638434 1.39410424
		 0.78450787 1.39313436 0.78366566 1.3923192 0.78366506 -1.29973459 1.0063388348 1.39361203
		 1.0075701475 1.39234257 1.0070781708 1.393152 1.0053112507 1.39410424 1.0075701475
		 -1.29973459 0.89685643 1.39361739 0.89810348 1.39410424 0.89635563 1.3924644 0.89561796
		 1.39220381 0.89561796 -1.29973459 1.11952329 -1.29973459 1.11952269 1.39410424 1.0075701475
		 -1.29973459 1.0088217258 1.36991525 1.0079135895 1.10544324 -1.0087695122 1.39362311
		 -1.0075724125 1.39237833 -1.0085635185 1.39336646 -1.010370612 1.39410424 -1.0075726509
		 -1.29973459 -1.11832881 1.39362526 -1.11712468 1.39410424 -1.11889994 1.39344454
		 -1.11952484 1.39220381 -1.11952507 -1.29973459 -0.89562011 -1.29973459 -0.89562011
		 1.39410424 -1.0075726509 -1.29973459 -1.0075724125 1.39410424 -0.78485548 1.3936249
		 -0.78366768 1.39221346 -0.78452158 1.39318609 -0.78636247 1.39410424 -0.78366745
		 -1.29973459 -0.89443123 1.39362526 -0.8933537 1.39410424 -0.89511049 1.39321446 -0.89561987
		 1.39183557 -0.89562011 -1.29973459 -0.67274594 1.39364886 -0.67171532 1.06366992
		 -0.6725257 1.39326072 -0.67420137 1.39410424 -0.67171532 -1.29973459 -0.78263664
		 1.39364934;
	setAttr ".uvtk[1500:1749]" -0.78152299 1.39410424 -0.78314346 1.39326715 -0.78366768
		 1.39197218 -0.78366745 -1.29973459 -0.56083405 1.39365101 -0.55976295 1.39211154
		 -0.56023085 1.39306927 -0.56192148 1.39410424 -0.55976319 -1.29973459 -0.67064393
		 1.39365041 -0.66915369 1.39410424 -0.67093915 1.39306808 -0.67171532 1.022714257
		 -0.67171532 -1.29973459 -0.44892573 1.39364362 -0.44781056 1.39228868 -0.44834146
		 1.39327526 -0.45006469 1.39410424 -0.44781083 -1.29973459 -0.55864704 1.39364243
		 -0.55710393 1.39410424 -0.55889845 1.39325237 -0.55976295 1.065241933 -0.55976319
		 -1.29973459 -0.33697498 1.39366007 -0.3358582 1.39173734 -0.33632663 1.39306712 -0.33811817
		 1.39410424 -0.33585793 -1.29973459 -0.44667777 1.39367402 -0.44519827 1.39410424
		 -0.44698101 1.39281869 -0.44781056 1.39080024 -0.44781083 -1.29973459 -0.22390553
		 -1.29973459 -0.2239058 1.39410424 -0.33585793 -1.29973459 -0.3358582 1.39410424 -0.11318177
		 1.39362383 -0.11195317 1.39204097 -0.11258844 1.39345574 -0.11440986 1.39410424 -0.11195371
		 -1.29973459 -0.22266868 1.39361477 -0.22116593 1.39410424 -0.22302979 1.39316893
		 -0.2239058 1.048609495 -0.22390553 -1.29973459 -0.0012574494 1.39361691 -1.0728836e-06
		 1.39187932 -0.00079515576 1.39242649 -0.0025751889 1.39410424 -1.3411045e-06 -1.29973459
		 -0.11070481 1.3936131 -0.10965237 1.39410424 -0.11145243 1.39318347 -0.11195344 1.052993298
		 -0.11195371 -1.29973459 0.11063755 1.39361203 0.11195129 1.39182591 0.11114949 1.39216161
		 0.10930139 1.39410424 0.11195129 -1.29973459 0.0013110638 1.3936131 0.0021769404
		 1.39410424 0.00042867661 1.39249098 -1.0728836e-06 1.0052493811 -1.3411045e-06 -1.29973459
		 0.222646 1.39361167 0.22390366 1.39161444 0.2230581 1.39311075 0.22115445 1.39410424
		 0.22390366 -1.29973459 0.1132074 1.39361382 0.11426228 1.39410424 0.11244673 1.39317274
		 0.11195129 1.39185643 0.11195129 -1.29973459 0.33474302 1.39361596 0.33585602 1.39175427
		 0.33507878 1.39318538 0.33338922 1.39410424 0.33585602 -1.29973459 0.22501618 1.39361691
		 0.22603744 1.39410424 0.22440976 1.39321375 0.22390366 1.3922658 0.22390366 -1.29973459
		 0.44655555 1.39361906 0.44780844 1.39249527 0.44684058 1.39331198 0.44494122 1.39410424
		 0.44780844 -1.29973459 0.33710951 1.39361954 0.33824068 1.39410424 0.33640647 1.39332223
		 0.33585602 1.39250922 0.33585602 -1.29973459 -1.010184169 1.39359188 -1.0083518028
		 1.39367032 -1.0087887049 1.39362025 -1.0075726509 -1.29973459 -1.11798453 1.39305639
		 -1.1169107 1.39359188 -1.11830878 1.39362025 -1.11952507 -1.29973459 -0.89562011
		 -1.29973459 -0.89562011 1.39410424 -1.0075726509 -1.29973459 -1.0075724125 1.39410424
		 -0.78631043 1.39358902 -0.78367037 1.39305305 -0.78487307 1.39362705 -0.78366745
		 -1.29973459 -0.8956185 1.3930521 -0.89297676 1.39358902 -0.89441466 1.39362741 -0.89562011
		 -1.29973459 -0.67412102 1.39359021 -0.67292416 1.39305639 -0.67275715 1.39365256
		 -0.67171532 -1.29973459 -0.78225148 1.39305639 -0.78126174 1.39359021 -0.78262591
		 1.39365256 -0.78366745 -1.29973459 -0.56232667 1.39358687 -0.56233656 1.39305162
		 -0.56084126 1.39366221 -0.55976319 -1.29973459 -0.67171371 1.39305162 -0.66915166
		 1.39358759 -0.67063701 1.39366221 -0.67171532 -1.29973459 -0.45038286 1.39358974
		 -0.4485769 1.39310551 -0.44893935 1.39364636 -0.44781083 -1.29973459 -0.55718029
		 1.39305484 -0.55719095 1.39358974 -0.55863446 1.39364576 -0.55976319 -1.29973459
		 -0.33860236 1.39358687 -0.33861035 1.39304948 -0.33697659 1.39367509 -0.33585793
		 -1.29973459 -0.44505495 1.39304662 -0.44506723 1.39358652 -0.44669086 1.39367437
		 -0.44781083 -1.29973459 0.44508052 1.39359081 0.44780684 1.39305377 0.44653314 1.39361691
		 0.44780844 -1.29973459 0.33585763 1.39305425 0.33858448 1.39359081 0.33713084 1.39361632
		 0.33585602 -1.29973459 0.33343464 1.39358974 0.33342284 1.3930552 0.33472544 1.39361691
		 0.33585602 -1.29973459 0.2239058 1.39305377 0.22632623 1.39358902 0.22503489 1.39361691
		 0.22390366 -1.29973459 0.22117257 1.39358807 0.22115874 1.39305055 0.22262728 1.39361417
		 0.22390366 -1.29973459 0.1119529 1.39304876 0.11468399 1.39358807 0.11322773 1.39361417
		 0.11195129 -1.29973459 0.10910654 1.39358044 0.11051905 1.39303446 0.1106205 1.39360666
		 0.11195129 -1.29973459 0.00084984303 1.39259994 0.0028474331 1.39358115 0.0013292432
		 1.39360738 -1.3411045e-06 -1.29973459 -0.0027169287 1.39358652 -0.0016044378 1.39304733
		 -0.0012726486 1.39361262 -1.3411045e-06 -1.29973459 -0.11113748 1.39153016 -0.10922983
		 1.39358592 -0.1106832 1.39361262 -0.11195371 -1.29973459 -0.11463889 1.39359081 -0.11275178
		 1.39121079 -0.11320633 1.39361739 -0.11195371 -1.29973459 -0.22390369 1.39306068
		 -0.22122732 1.39359081 -0.22265211 1.39361691 -0.22390553 -1.29973459 -0.22390553
		 -1.29973459 -0.2239058 1.39410424 -0.33585793 -1.29973459 -0.3358582 1.39410424 1.11952329
		 -1.29973459 1.11952269 1.39410424 1.0083801746 1.391536 1.010280609 1.3935951 1.0088399649
		 1.39399529 1.0075701475 -1.29973459 1.0048856735 1.39358592 1.0058597326 1.39304304
		 1.0063179731 1.39361262 1.0075701475 -1.29973459 0.89831376 1.39304841 0.89829564
		 1.39358652 0.89687145 1.39361203 0.89561796 -1.29973459 0.89293122 1.39358866 0.89561582
		 1.39304948 0.89436305 1.39361477 0.89561796 -1.29973459 0.78446472 1.39400125 0.78634965
		 1.39358866 0.78492057 1.39361477 0.78366506 -1.29973459 0.78104115 1.39359081 0.78102791
		 1.39305425 0.78243983 1.39361739 0.78366506 -1.29973459 0.67249465 1.39357793 0.67433691
		 1.39359021 0.67293954 1.39361691 0.67171264 -1.29973459 0.66909158 1.39358902 0.67093158
		 1.39310217 0.6704886 1.39361596 0.67171264 -1.29973459 0.55976295 1.39305425 0.56238246
		 1.39358902 0.56098533 1.39361596 0.55976069 -1.29973459 0.55675423 1.39359188 0.55975819
		 1.39305377 0.55835474 1.39361632 0.55976069 -1.29973459 0.44932288 1.39305377 0.45081496
		 1.39359188 0.44921458 1.39361691 0.44780844 -1.29973459 0.44901383 1.39433765 0.44777429
		 1.39453125;
	setAttr ".uvtk[1750:1893]" 0.44652778 1.39424586 0.3370145 1.39431834 0.33580643
		 1.39452183 0.3345663 1.39421678 0.22506475 1.39430451 0.22384286 1.39449668 0.22247303
		 1.39407015 0.11315829 1.39425945 0.11182851 1.39433432 0.11021101 1.39349151 0.0015630722
		 1.39381337 -2.682209e-06 1.39436483 -0.0015913546 1.39400923 -0.11045977 1.39395797
		 -0.11179462 1.39450145 -0.11280704 1.39439464 -0.44633585 1.39392495 -0.44769368
		 1.39448106 -0.44890973 1.39434505 -0.55857122 1.39432359 -0.55982703 1.39449286 -0.56113333
		 1.39403284 -0.67028868 1.3940444 -0.67162514 1.39450574 -0.67284065 1.39438462 -0.78255761
		 1.39435768 -0.7837168 1.3945179 -0.78500676 1.39415658 0.89715648 1.39378619 0.89575076
		 1.39445448 0.89451993 1.39429641 0.78506649 1.39409244 0.78376436 1.39451218 0.78260005
		 1.39436197 0.6729126 1.39432108 0.67169189 1.39451861 0.67046785 1.39418817 0.5611248
		 1.39414692 0.55985165 1.39452076 0.55865204 1.39435458 0.44773155 -1.29987574 0.44780844
		 1.39410424 0.3357594 -1.29987514 0.33585602 1.39410424 0.22380543 -1.29987967 0.22390366
		 1.39410424 0.11204046 -1.29988575 0.11195129 1.39410424 -0.00020632148 -1.2998637
		 -1.0728836e-06 1.39410424 -0.11215016 -1.29986513 -0.11195344 1.39410424 -0.22392103
		 -1.29989564 -0.33591506 -1.2998991 -0.44782311 -1.29985559 -0.44781056 1.39410424
		 -0.55980885 -1.29989994 -0.55976295 1.39410424 -0.67174524 -1.29985237 -0.67171532
		 1.39410424 -0.78375793 -1.29987693 -0.78366768 1.39410424 -0.89566731 -1.29989541
		 -1.0076647997 -1.29988468 1.11924303 -1.29975653 1.0076264143 -1.29990256 0.89555502
		 -1.29988575 0.89561796 1.39410424 0.78362489 -1.29988861 0.78366566 1.39410424 0.67164969
		 -1.29987752 0.67171311 1.39410424 0.55972779 -1.29988551 0.55976069 1.39410424 0.55976069
		 1.39410424 0.44780844 1.39410424 0.67171311 1.39410424 0.55976069 1.39410424 0.78366566
		 1.39410424 0.67171311 1.39410424 0.89561796 1.39410424 0.78366566 1.39410424 1.0075701475
		 1.39410424 0.89561796 1.39410424 1.0075701475 1.39410424 -1.0075724125 1.39410424
		 -1.11952484 1.39410424 -0.78366768 1.39410424 -0.89562011 1.39410424 -0.67171532
		 1.39410424 -0.78366768 1.39410424 -0.55976295 1.39410424 -0.67171532 1.39410424 -0.44781056
		 1.39410424 -0.55976295 1.39410424 -0.3358582 1.39410424 -0.44781056 1.39410424 -0.11195344
		 1.39410424 -0.2239058 1.39410424 -1.0728836e-06 1.39410424 -0.11195344 1.39410424
		 0.11195129 1.39410424 -1.0728836e-06 1.39410424 0.22390366 1.39410424 0.11195129
		 1.39410424 0.33585602 1.39410424 0.22390366 1.39410424 0.44780844 1.39410424 0.33585602
		 1.39410424 -1.0075724125 1.39410424 -1.11952484 1.39410424 -0.78366768 1.39410424
		 -0.89562011 1.39410424 -0.67171532 1.39410424 -0.78366768 1.39410424 -0.55976295
		 1.39410424 -0.67171532 1.39410424 -0.44781056 1.39410424 -0.55976295 1.39410424 -0.3358582
		 1.39410424 -0.44781056 1.39410424 0.44780844 1.39410424 0.33585602 1.39410424 0.33585602
		 1.39410424 0.22390366 1.39410424 0.22390366 1.39410424 0.11195129 1.39410424 0.11195129
		 1.39410424 -1.0728836e-06 1.39410424 -1.0728836e-06 1.39410424 -0.11195344 1.39410424
		 -0.11195344 1.39410424 -0.2239058 1.39410424 1.0075701475 1.39410424 1.0075701475
		 1.39410424 0.89561796 1.39410424 0.89561796 1.39410424 0.78366566 1.39410424 0.78366566
		 1.39410424 0.67171311 1.39410424 0.67171311 1.39410424 0.55976069 1.39410424 0.55976069
		 1.39410424 0.44780844 1.39410424;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "E944D636-8B4B-B488-6C06-5E8300CD5D44";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1697]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".s" -type "double3" 7.4763534545898445 7.4763534545898445 7.4763534545898445 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "821AD619-F844-063B-CB12-10AC3913B13A";
	setAttr ".uopa" yes;
	setAttr -s 3073 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 2.7773397 3.11982417 2.78092098 3.043261528
		 2.85103559 3.072107792 -2.85103488 1.1516763 -2.84745336 1.063588977 -2.77733874
		 1.11108649 -2.84745336 1.063588977 -2.77733874 1.010755777 -2.77733874 1.010755777
		 -2.70722389 1.026515245 -2.70722389 1.026515245 -2.77733874 1.11108649 -2.84745336
		 0.94925654 -2.84745336 0.94925654 -2.77733874 0.88433176 -2.77733874 0.88433176 -2.70722389
		 0.92545348 -2.70722389 0.92545348 -2.70430565 1.11144423 0.39691722 0.97757417 0.40049928
		 0.88658535 0.47061396 0.94808412 1.62424421 1.049945354 1.62782574 0.96496075 1.69794071
		 1.034442067 2.34205818 1.14926445 2.34564018 1.072702527 2.41575503 1.10154927 -1.28840792
		 1.30647767 -1.28482616 1.21839011 -1.21471167 1.26588762 -1.28482616 1.21839011 -1.21471167
		 1.16555691 -1.21471167 1.16555691 -1.14459705 1.18131638 -1.14459705 1.18131638 -1.21471167
		 1.26588762 -1.28482616 1.10405719 -1.28482616 1.10405719 -1.21471167 1.039132476
		 -1.21471167 1.039132476 -1.14459705 1.080254555 -1.14459705 1.080254555 -1.14167809
		 1.26624537 -1.28840792 1.1950469 -1.28482616 0.9696514 -1.28482616 0.9696514 -1.21471167
		 0.89899027 -1.21471167 0.89899027 -1.14459705 0.96144974 -1.14459705 0.96144974 -1.28840792
		 0.89899027 -1.28482616 0.82832885 -1.28482616 0.82832885 -1.21471167 0.75884777 -1.21471167
		 0.75884777 -1.14459705 0.83653063 -1.14459705 0.83653063 -1.14149833 0.89899027 -1.1415199
		 1.039229512 -1.28840792 0.74334383 -1.28482616 0.693923 -1.28482616 0.693923 -1.21471167
		 0.63242328 -1.21471167 0.63242328 -1.14459705 0.71772587 -1.14459705 0.71772587 -1.1415199
		 0.75875086 -1.28840792 0.60293323 -1.28482616 0.5795902 -1.28482616 0.5795902 -1.21471167
		 0.53209221 -1.21471167 0.53209221 -1.14459705 0.61666399 -1.14459705 0.61666399 -1.1415832
		 0.63220781 -1.28840792 0.491503 -1.14167809 0.53173488 1.40109384 0.9847762 1.4046756
		 0.8997913 1.47479033 0.96927279 -2.36444163 -2.9905448 -2.31093454 -3.055184364 -2.30815148
		 -2.98912144 -2.44386601 -3.11982393 -2.36023068 -3.11982393 -2.41794944 -3.055184364
		 -2.26847029 -2.9905448 -2.34437561 -2.91725039 -2.29385734 -3.11982393 -2.22600675
		 -3.055184364 -2.41650319 -2.98922157 -2.53657651 -3.11982393 -2.47726321 -2.9905448
		 -2.53657651 -3.055184364 -2.43553019 -2.91725039 -2.37749434 -2.84466219 -2.37856221
		 -2.84395576 -2.45236635 -2.84395576 -2.45293713 -2.84468246 -2.22211719 -2.98900104
		 -2.53657651 -2.98925996 -2.62928653 -3.11982393 -2.59588981 -2.9905448 -2.65520334
		 -3.055184364 -2.27203465 -2.91725039 -2.31763339 -2.84463954 -2.3186543 -2.84395576
		 -2.3772254 -2.84395576 -2.37781668 -2.84395576 -2.45276546 -2.84271479 -2.37819147
		 -2.84276032 -2.39564562 -2.78703618 -2.39685988 -2.78553987 -2.43609715 -2.78560114
		 -2.43726921 -2.78713274 -2.45311141 -2.84395576 -2.53657651 -2.91725039 -2.45393801
		 -2.84395576 -2.53574991 -2.84395576 -2.53657651 -2.84469056 -2.65664911 -2.98922157
		 -2.7129221 -3.11982393 -2.70871043 -2.9905448 -2.762218 -3.055184364 -2.31806254
		 -2.84395576 -2.37691951 -2.8413434 -2.3186605 -2.84231544 -2.33064699 -2.80941939
		 -2.33207273 -2.8071301 -2.36458206 -2.80716062 -2.3660121 -2.80960155 -2.37737226
		 -2.84204555 -2.45378661 -2.84211779 -2.37686658 0.24404955 -2.39165235 0.1898846
		 -2.43718076 -2.78605032 -2.45152211 0.24477315 -2.43467021 0.18981177 -2.53615928
		 -2.84276271 -2.45439482 -2.84148407 -2.47361422 -2.80446672 -2.4756031 -2.80223083
		 -2.52122235 -2.80242181 -2.52257228 -2.80392218 -2.53657651 -2.84395576 -2.63762212
		 -2.91725039 -2.53740263 -2.84395576 -2.61921525 -2.84395576 -2.62021565 -2.84468246
		 -2.76500154 -2.98912144 -2.77929568 -3.11982393 -2.80468225 -2.9905448 -2.84714627
		 -3.055184364 -2.31813526 -2.8428371 -2.3163414 0.24524254 -2.32774305 0.21208578
		 -2.36566377 -2.80787563 -2.37556911 0.24563199 -2.36339474 0.21201593 -2.37641954
		 0.24479783 -2.45226145 0.2453512 -2.37698293 0.24418432 -2.39205909 0.19084126 -2.39234567
		 0.18908918 -2.39618826 -2.78597689 -2.45086718 0.24489343 -2.43428349 0.19073665
		 -2.53721404 -2.84213543 -2.45301676 0.24480337 -2.46590829 0.20668113 -2.4744904
		 -2.80288291 -2.52227497 -2.80286312 -2.535748 0.24527502 -2.51585531 0.20709902 -2.61920476
		 -2.84285069 -2.53782654 -2.84148693 -2.54958797 -2.81826353 -2.55158854 -2.81594205
		 -2.59787488 -2.81575108 -2.59986496 -2.81728673 -2.62004137 -2.84395576 -2.72877693
		 -2.91725039 -2.62078643 -2.84395576 -2.69459033 -2.84395576 -2.69565821 -2.84466219
		 -2.85103488 -2.98900104 -2.31767678 -2.84233904 -2.31768298 -2.84395576 -2.31582403
		 0.24587917 -2.32852316 0.21087223 -2.33148122 -2.80780005 -2.37482667 0.2458356 -2.36308575
		 0.21258205 -2.45206165 0.24581087 -2.37709975 0.24431795 -2.39304233 0.19123584 -2.39270663
		 0.18999243 -2.39313078 0.18886513 -2.39683509 -2.785537 -2.43426371 0.18902946 -2.43392491
		 0.18991703 -2.43334866 0.19112164 -2.450212 0.24501294 -2.53660655 0.24613124 -2.4532969
		 0.24492371 -2.46634746 0.20765209 -2.46657944 0.20590156 -2.51514268 0.20593029 -2.53510404
		 0.24556524 -2.51542568 0.20767367 -2.62001705 -2.84340644 -2.53740048 0.24609464
		 -2.55694485 0.22034353 -2.55036402 -2.81662393 -2.59898734 -2.81619763 -2.60768104
		 0.22083604 -2.61999297 0.2447508 -2.69426012 -2.84302831 -2.6207962 -2.84321952 -2.63450384
		 -2.82984924 -2.63630414 -2.8288188 -2.67696309 -2.82875586 -2.67876172 -2.8296628
		 -2.69533539 -2.84395576 -2.8011179 -2.91725039 -2.69592667 -2.84395576 -2.75449872
		 -2.84395576 -2.75551939 -2.84463954 -2.31538153 0.24552256 -2.32805109 0.2126227
		 -2.32878017 0.21162874 -2.36309218 0.21083301 -2.36283469 0.21159703 -2.36233926
		 0.21281695 -2.37408352 0.24603897 -2.45185804 0.24626338 -2.37543511 0.24986076 -2.45175028
		 0.24992871 -2.3935616 0.19037557 -2.39341903 0.18970156 -2.43310785 0.19029534 -2.53654361
		 0.24680823 -2.4535768 0.24504393 -2.46741033 0.20805198 -2.46697092 0.20680773 -2.46713829
		 0.20568234 -2.474962 -2.80222631 -2.51478291 0.20669502 -2.51438856 0.20791423;
	setAttr ".uvtk[250:499]" -2.53446054 0.24585491 -2.62083483 0.24632317 -2.53797698
		 0.24647063 -2.55732727 0.22109067 -2.55769372 0.21939284 -2.60685825 0.21964788 -2.6199894
		 0.24731714 -2.60724878 0.2214002 -2.69510722 -2.84332204 -2.62158775 0.24781638 -2.63767171
		 0.23408651 -2.63509274 -2.82912111 -2.69635725 0.24775183 -2.68237495 0.23427057
		 -2.7547369 -2.84287596 -2.69567752 -2.84284854 -2.70759392 -2.80423975 -2.70862532
		 -2.80281425 -2.74103355 -2.80278397 -2.74208212 -2.80418253 -2.75509 -2.84395576
		 -2.31464815 0.24577951 -2.31539512 0.24648517 -2.32879615 0.21284449 -2.32941914
		 0.2119506 -2.32960296 0.21124935 -2.32938623 0.21040058 -2.36220026 0.21192259 -2.31470728
		 0.24971628 -2.31623602 0.2457149 -2.34758544 0.29702491 -2.37061834 0.34566617 -2.43721771
		 0.29702491 -2.37555528 0.24627393 -2.39412975 0.19004697 -2.53648162 0.24747473 -2.53643394
		 0.24958521 -2.46790266 0.20719087 -2.46746469 0.20651841 -2.51389647 0.20702291 -2.6199789
		 0.248384 -2.62110543 0.24897623 -2.62166834 0.248384 -2.53855395 0.24684632 -2.55824828
		 0.2214036 -2.55804276 0.22019756 -2.6065042 0.22040963 -2.60635781 0.21918559 -2.59851527
		 -2.81574655 -2.60620522 0.22163028 -2.69703817 0.24610955 -2.6962676 0.248384 -2.68057418
		 0.23325199 -2.63946986 0.23318887 -2.63825893 0.23345095 -2.67786002 -2.82902026
		 -2.68147159 0.23355144 -2.75531936 -2.84240961 -2.6976831 0.2443707 -2.70982885 0.20774353
		 -2.75681043 0.2449345 -2.7452929 0.20704412 -2.30914044 0.21993357 -2.30894351 0.22052127
		 -2.31391454 0.24603677 -2.31495976 0.24708194 -2.3301568 0.21160036 -2.33875179 0.21126616
		 -2.33850741 0.21043015 -2.27645254 0.29702491 -2.27809072 0.34566617 -2.31622243
		 0.34368157 -2.4207294 0.34368157 -2.4793911 0.34566617 -2.53657651 0.29702491 -2.59376144
		 0.34566617 -2.63593435 0.29702491 -2.69736052 0.24897623 -2.7025342 0.34566617 -2.7255671
		 0.29702491 -2.55889058 0.22053766 -2.60603166 0.22003102 -2.60561442 0.22073334 -2.69767642
		 0.248384 -2.69768214 0.2467925 -2.67717147 -2.82875371 -2.68078232 0.23325384 -2.75732851
		 0.24577314 -2.71014094 0.20825881 -2.74461389 0.20629287 -2.74143934 -2.80319262
		 -2.30846977 0.22076505 -2.33934379 0.2104305 -2.33934283 0.21111274 -2.33231759 -2.80712843
		 -2.34145117 -2.80711699 -2.23328543 0.34368157 -2.31903052 0.40715945 -2.42220616
		 0.40715945 -2.53657651 0.34368157 -2.65242267 0.34368157 -2.75693011 0.34368157 -2.75840878
		 0.24973458 -2.79506183 0.34566617 -2.79670048 0.29702491 -2.60523438 0.22037894 -2.7108922
		 0.20847052 -2.75563192 -2.84185815 -2.75777054 0.24571264 -2.71011257 0.20650238
		 -2.71037459 0.20725548 -2.74500132 0.20799553 -2.74433994 0.2071867 -2.34228802 -2.80711627
		 -2.33993506 0.21126616 -2.34018016 0.21043015 -2.23715067 0.40715945 -2.36742449
		 0.46865249 -2.44764781 0.46865249 -2.53657651 0.40715945 -2.65094638 0.40715945 -2.75412202
		 0.40715945 -2.75691652 0.24536318 -2.74429512 0.20839065 -2.83986688 0.34368157 -2.71101451
		 0.20757622 -2.74372411 0.20607328 -2.74350119 0.20690936 -2.74369526 0.20756501 -2.34312439
		 -2.80711651 -2.30375862 0.46865249 -2.53657651 0.46865249 -2.62550497 0.46865249
		 -2.70572805 0.46865249 -2.75923276 0.24625707 -2.75817776 0.2470203 -2.83600211 0.40715945
		 -2.74100184 0.20607668 -2.7407577 0.20691305 -2.74294138 0.20725548 -2.40766811 0.51513296
		 -2.47383046 0.5616129 -2.47383046 0.5616129 -2.53657651 0.51513296 -2.59932256 0.5616129
		 -2.59932256 0.5616129 -2.66548347 0.51513296 -2.76939344 0.46865249 -2.75850177 0.24598491
		 -2.75775099 0.24640757 -2.74053478 -2.80278182 -2.73806596 -2.80277896 -2.740165
		 0.2060774 -2.74016523 0.20675957 -2.39165688 0.56361347 -2.53657651 0.56361347 -2.68149567
		 0.56361347 -2.76539373 0.22025168 -2.76493549 0.21999145 -2.73722959 -2.80277848
		 -2.73932886 0.20607704 -2.739573 0.20691305 -2.76474452 0.21936262 -2.73639274 -2.80277872
		 -1.69387519 -2.9905448 -1.64036763 -3.055184364 -1.63758457 -2.98912144 -1.77329946
		 -3.11982393 -1.68966401 -3.11982393 -1.74738276 -3.055184364 -1.59790385 -2.9905448
		 -1.67380881 -2.91725039 -1.62329066 -3.11982393 -1.55543971 -3.055184364 -1.74593699
		 -2.98922157 -1.86600971 -3.11982393 -1.80669618 -2.9905448 -1.86600971 -3.055184364
		 -1.76496387 -2.91725039 -1.70692801 -2.84466219 -1.70799553 -2.84395576 -1.78179967
		 -2.84395576 -1.78237069 -2.84468246 -1.55155063 -2.98900104 -1.86600971 -2.98925996
		 -1.95872009 -3.11982393 -1.92532337 -2.9905448 -1.9846369 -3.055184364 -1.60146785
		 -2.91725039 -1.64706671 -2.84463954 -1.64808762 -2.84395576 -1.70665872 -2.84395576
		 -1.70725036 -2.84395576 -1.78179002 -2.84268594 -1.70800436 -2.84283376 -1.72260964
		 -2.82110023 -1.72440708 -2.81953526 -1.76731324 -2.81959319 -1.76911378 -2.82136965
		 -1.78254497 -2.84395576 -1.86600971 -2.91725039 -1.78337109 -2.84395576 -1.86518347
		 -2.84395576 -1.86600971 -2.84469056 -1.98608267 -2.98922157 -2.042355537 -3.11982393
		 -2.03814435 -2.9905448 -2.091651917 -3.055184364 -1.64749622 -2.84395576 -1.70665085
		 -2.84295249 -1.64809442 -2.84301376 -1.65953982 -2.82499027 -1.66096652 -2.82367539
		 -1.69456089 -2.82370567 -1.69598997 -2.82510877 -1.70729804 -2.8432982 -1.78257012
		 -2.843292 -1.70646918 0.24539119 -1.71918941 0.2242825 -1.76852477 -2.82011366 -1.76614642
		 0.22414434 -1.78070819 0.24559128 -1.86475182 -2.84198284 -1.78338122 -2.84307909
		 -1.80300117 -2.82252121 -1.80499256 -2.82130361 -1.85086823 -2.82149863 -1.85286725
		 -2.82334185 -1.86600971 -2.84395576 -1.96705568 -2.91725039 -1.86683607 -2.84395576
		 -1.9486481 -2.84395576 -1.94964898 -2.84468246 -2.0944345 -2.98912144 -2.10872865
		 -3.11982393 -2.1341157 -2.9905448 -2.17657948 -3.055184364 -1.64756453 -2.84313345
		 -1.64566851 0.24758792 -1.65657949 0.22952735 -1.69564271 -2.82411647 -1.70509458
		 0.24763787 -1.69339776 0.22941077 -1.70571661 0.24655688 -1.78148901 0.24656701 -1.70647562
		 0.2475065 -1.71954882 0.22497177 -1.72005808 0.22325647 -1.7235111 -2.81999278 -1.76556849
		 0.22318143;
	setAttr ".uvtk[500:749]" -1.7807039 0.24756473 -1.76579571 0.22487921 -1.86538017
		 -2.84244728 -1.78225803 0.24746352 -1.79499602 0.22775328 -1.80387926 -2.82165766
		 -1.85209203 -2.82204056 -1.86531341 0.24766028 -1.84512246 0.22669244 -1.94863844
		 -2.84229875 -1.86641932 -2.84275126 -1.87975812 -2.80353737 -1.88109624 -2.80202889
		 -1.9273988 -2.80184174 -1.92938757 -2.80414271 -1.94947445 -2.84395576 -2.058210373
		 -2.91725039 -1.95021999 -2.84395576 -2.024023771 -2.84395576 -2.025091648 -2.84466219
		 -2.18046856 -2.98900104 -1.64711046 -2.84235024 -1.64711642 -2.84395576 -1.64516413
		 0.24625409 -1.64577889 0.248384 -1.70498145 0.248384 -1.69197083 0.22810984 -1.65800905
		 0.2281397 -1.66037548 -2.82405949 -1.65741706 0.22854638 -1.70522571 0.24897623 -1.7064929
		 0.248384 -1.7806952 0.248384 -1.78148067 0.24897623 -1.7824893 0.248384 -1.72041786
		 0.22525632 -1.72037065 0.2240454 -1.72075903 0.22285318 -1.72419918 -2.81953311 -1.76525331
		 0.2239815 -1.76495028 0.22518498 -1.86611521 0.24620628 -1.86518347 0.248384 -1.84375584
		 0.22611582 -1.84301198 0.22573876 -1.79699576 0.22593445 -1.79587996 0.22646987 -1.84441566
		 0.22525901 -1.94944644 -2.84278655 -1.86697602 0.24465001 -1.88633263 0.20672303
		 -1.8800472 -2.80247283 -1.92851114 -2.80251288 -1.94954515 0.24429822 -1.93692756
		 0.20630449 -2.024015427 -2.84243608 -1.95022964 -2.84223819 -1.96348608 -2.81208825
		 -1.96528792 -2.80968475 -2.0069918633 -2.80962586 -2.0087888241 -2.81174469 -2.024769306
		 -2.84395576 -2.13055158 -2.91725039 -2.025360584 -2.84395576 -2.083931923 -2.84395576
		 -2.084952831 -2.84463954 -1.64473522 0.24481654 -1.64473677 0.24697101 -1.64474416
		 0.248384 -1.64470935 0.24897623 -1.60588574 0.29702491 -1.60752416 0.34566617 -1.67701864
		 0.29702491 -1.69305217 0.22849071 -1.7000519 0.34566617 -1.76665115 0.29702491 -1.86600971
		 0.24897623 -1.80882478 0.34566617 -1.86600971 0.29702491 -1.72114623 0.22437966 -1.72105241
		 0.22368544 -1.76448309 0.22432023 -1.86695755 0.248384 -1.86697125 0.24690264 -1.84410298
		 0.22560883 -1.80435133 -2.82129908 -1.79635453 0.22593892 -1.95007372 0.2449894 -1.88675952
		 0.20728612 -1.88703108 0.20554417 -1.93626857 0.20551735 -1.9491477 0.24445611 -1.93649781
		 0.20722747 -2.024717808 -2.84297299 -1.95108223 0.24571711 -1.96654248 0.21444386
		 -1.96407592 -2.81038928 -2.025702715 0.24520147 -2.012225151 0.21460736 -2.083925247
		 -2.84262657 -2.02536869 -2.84254026 -2.035892963 -2.81770134 -2.037322521 -2.81572223
		 -2.071219683 -2.81569314 -2.072645664 -2.81754851 -2.084522963 -2.84395576 -1.56271875
		 0.34368157 -1.64565575 0.34368157 -1.75016272 0.34368157 -1.86600971 0.34368157 -1.95062351
		 0.24982643 -1.92319512 0.34566617 -1.96536827 0.29702491 -1.72177088 0.22402889 -1.88778865
		 0.20752019 -1.88738775 0.20630634 -1.93588519 0.20640415 -1.93571877 0.20528984 -1.92803991
		 -2.80183744 -1.93545711 0.20760912 -1.94875073 0.24461371 -2.026406765 0.24597704
		 -1.95175946 0.24595237 -1.96692014 0.21504802 -1.96707499 0.21331429 -2.011381626
		 0.21339566 -2.0078878403 -2.81024575 -2.025471687 0.2454583 -2.01183176 0.21515214
		 -2.084452152 -2.84298229 -2.027031898 0.24581802 -2.038472176 0.22041446 -2.036240578
		 -2.8163023 -2.086241245 0.2456705 -2.075563908 0.22049659 -1.56658387 0.40715945
		 -1.6484642 0.40715945 -1.75163913 0.40715945 -1.86600971 0.40715945 -1.98185658 0.34368157
		 -2.0271101 0.24966437 -2.03196764 0.34566617 -2.055000544 0.29702491 -1.88827062
		 0.20663232 -1.9353925 0.20612562 -1.9349668 0.20677978 -1.95243692 0.24618798 -1.96783161
		 0.21529967 -1.96739614 0.2140857 -2.01105547 0.21415401 -2.010662079 0.21292555 -2.0072002411
		 -2.80962372 -2.010882616 0.21537691 -2.025241137 0.24571562 -2.086755753 0.24605322
		 -2.08490324 -2.84395576 -2.084908962 -2.8423748 -2.027775288 0.2461279 -2.038762093
		 0.22108173 -2.074757814 0.21940213 -2.071810722 -2.81623626 -1.63319218 0.46865249
		 -1.69685769 0.46865249 -1.77708149 0.46865249 -1.86600971 0.46865249 -1.9506017 0.24658346
		 -1.98038018 0.40715945 -2.086363554 0.34368157 -2.087860584 0.24964011 -2.12449527
		 0.34566617 -2.12613344 0.29702491 -2.026678562 0.24662113 -1.95033348 0.24577463
		 -1.96818626 0.21441352 -2.010375977 0.21377355 -2.010246992 0.21447778 -2.087207794
		 0.2454834 -2.028517962 0.24643743 -2.039461136 0.22135878 -2.075265884 0.22113103
		 -2.074498415 0.22017956 -1.73710203 0.51513296 -1.80326343 0.5616129 -1.80326343
		 0.5616129 -1.86600971 0.51513296 -1.95493829 0.46865249 -2.026955128 0.24725288 -2.083555222
		 0.40715945 -2.086271763 0.24626899 -2.074546814 0.22139317 -2.16930079 0.34368157
		 -2.009665966 0.2141242 -2.087938309 0.2457661 -2.087174892 0.24669021 -2.039654732
		 0.22047943 -2.039038897 0.22014749 -2.073901176 0.21897686 -2.073676586 0.21981364
		 -2.073865175 0.22050893 -1.72109032 0.56361347 -1.86600995 0.56361347 -1.928756 0.5616129
		 -1.928756 0.5616129 -1.99491763 0.51513296 -2.035161734 0.46865249 -2.088668823 0.24604797
		 -2.087600231 0.2473194 -2.16543508 0.40715945 -2.094601154 0.21736789 -2.094407797
		 0.21676677 -2.064767838 0.21898919 -2.064523697 0.21982521 -2.073114872 0.22015941
		 -2.010929346 0.56361347 -2.098827362 0.46865249 -2.095066309 0.21761698 -2.070974588
		 -2.81569147 -2.061840534 -2.81568003 -2.063931465 0.21898955 -2.063931942 0.21967214
		 -2.061004162 -2.81567931 -2.063094854 0.21898955 -2.063340187 0.21982521 -2.060167789
		 -2.81567955 -0.49409255 -0.057752818 -0.49048162 -3.11976075 -0.45044011 -3.11982274
		 -0.45360598 -0.057815343 -0.4913843 -3.1197598 -0.49499524 -0.057751834 -0.4498522
		 -3.11982393 -0.45301786 -0.057816446 -0.49207285 -3.11976027 -0.49568364 -0.057752222
		 2.30693483 1.12041807 2.23682022 1.14926445 2.23323822 1.072702527 1.97764897 1.14878941
		 1.90753424 1.07322681 1.98047435 1.072740316 -2.2612946 0.60196847 -2.33140922 0.67144912
		 -2.33499122 0.58646441 -2.2612946 0.74211055 -2.33140922 0.67144912 -2.2612946 0.60196847
		 -2.19118023 0.67965132 -2.19118023 0.67965132 -2.2612946 0.74211055 -2.33499122 0.74211055;
	setAttr ".uvtk[750:999]" -2.1880815 0.74211055 -2.2612946 0.88225347 -2.33140922
		 0.81277198 -2.33140922 0.81277198 -2.19118023 0.8045702 -2.19118023 0.8045702 -2.2612946
		 0.88225347 0.35903889 0.91607517 0.28892416 0.97757417 0.2853421 0.88658535 2.75432301
		 3.02041173 2.68420815 2.9427278 2.7573998 2.94263101 -0.38419563 1.48008323 -0.43169284
		 1.4099685 -0.34360597 1.40638673 -0.48452622 1.48008323 -0.43169284 1.4099685 -0.38419563
		 1.48008323 -0.46876672 1.55019772 -0.46876672 1.55019772 -0.48452622 1.48008323 1.13648343
		 0.98530954 1.066368818 0.90000719 1.13949668 0.8997913 2.1981144 1.12041783 2.12799978
		 1.14926445 2.12441826 1.072702527 1.91750908 1.049890161 1.84739482 0.9653185 1.9204278
		 0.96496105 1.66865897 1.14884555 1.59854472 1.073282838 1.67148447 1.072796226 1.17794311
		 0.98509365 1.24805784 0.8997913 1.25107193 0.98530954 1.4904809 1.14835882 1.56059551
		 1.072796226 1.56342065 1.14884555 -0.30600592 1.47650111 -0.24108106 1.40638673 -0.24108106
		 1.40638673 -0.17958197 1.47650111 -0.17958197 1.47650111 -0.264884 1.54661584 -0.264884
		 1.54661584 -0.30600592 1.47650111 2.57263303 2.98836803 2.64274788 2.9106853 2.64582491
		 2.98846555 1.28951836 0.98509365 1.35963309 0.8997913 1.36264718 0.98530954 1.7994709
		 1.14835811 1.86958551 1.07279563 1.87241054 1.14884472 1.13842285 -0.086757541 1.13848746
		 -0.085927874 1.12570977 -0.085918903 1.12565482 -0.086755514 1.13918793 -0.086366594
		 1.13923764 -0.085569769 1.12488317 -0.086754918 1.12505925 -0.086072356 1.13568652
		 -3.11932874 1.12292826 -3.11931658 1.13645804 -3.11982393 1.12215602 -3.11931586
		 0.82228923 -0.084750891 0.82224894 -0.085580766 0.83501625 -0.085578173 0.83506972
		 -0.084741563 0.82136917 -0.085187018 0.82143044 -0.084393352 0.8250562 -3.11815095
		 0.83781427 -3.11813927 0.83589631 -0.085577607 0.83576792 -0.084895015 0.82417601
		 -3.11864161 0.83869493 -3.11813879 0.8209033 -0.084181637 0.82370406 -3.11982393
		 0.83636951 -0.08557725 0.83916813 -3.11813831 1.67240298 -0.092028052 1.67257488
		 -0.091187 1.66105747 -0.091173202 1.6608994 -0.09201014 1.66031122 -0.092009246 1.66051853
		 -0.091326475 1.66981411 -3.11917591 1.65830505 -3.11916447 1.65771663 -3.11916327
		 1.67299056 -0.091586918 1.67040169 -3.11982393 1.54785979 -0.089695662 1.5477283
		 -0.090538979 1.55922937 -0.090517879 1.55938601 -0.089681476 1.54680395 -0.090088636
		 1.54697132 -0.08932206 1.55055225 -3.11768413 1.56206191 -3.11767244 1.56013179 -0.090516537
		 1.56006432 -0.089834362 1.54965043 -3.11831164 1.54820788 -0.089346886 1.54738379
		 -0.088995725 1.54633772 -0.088344693 1.54614103 -0.088928312 1.56296444 -3.11767197
		 1.56082022 -0.090517133 1.56051135 -0.08968091 1.54896319 -3.11982393 1.54681253
		 -0.088103294 1.56365311 -3.11767173 0.87754685 -0.084611058 0.87669063 -0.084186137
		 0.8796379 -3.11982393 0.88047385 -3.11927962 -0.25479826 -3.11943817 -0.25396222
		 -3.11982393 -0.25100416 -0.067217916 -0.25184077 -0.067623228 -0.25711372 -0.067616135
		 -0.26007125 -3.1194315 -0.26090783 -3.11943102 -0.25795034 -0.067615569 -0.26174405
		 -3.11943078 -0.25878695 -0.067616135 -0.29225865 -0.067645669 -0.29484856 -3.11946082
		 1.61479902 -0.092251182 1.61466861 -0.091407478 1.60619664 -0.091396093 1.60635281
		 -0.092232317 1.61572087 -0.091799378 1.61555481 -0.091034263 1.60545039 -0.092231393
		 1.60551822 -0.09154883 1.61197543 -3.11765099 1.60352015 -3.11764216 1.61287725 -3.11828804
		 1.61637807 -0.09063679 1.61618376 -0.090058595 1.61514437 -0.090709031 1.61432076
		 -0.091058344 1.60261762 -3.11764169 1.60507083 -0.091395348 1.60476208 -0.09223178
		 1.61356449 -3.11982393 1.61571348 -0.089819252 1.60192907 -3.11764121 1.80317819
		 -0.092921644 1.8033514 -0.093763858 1.81179976 -0.093747973 1.81164098 -0.092910975
		 1.8059411 -3.11916637 1.81439614 -3.11915755 1.81238747 -0.093746483 1.8121798 -0.093064278
		 1.80276489 -0.093317091 1.80535293 -3.11982393 1.81498408 -3.11915684 0.21719161
		 -0.079368919 0.21715906 -0.078529686 0.21134323 -0.078523129 0.21139663 -0.07935974
		 0.21808165 -0.078935742 0.2180194 -0.078161716 0.2105163 -0.079358846 0.21064481
		 -0.078676641 0.21439165 -3.11777496 0.20859298 -3.11776972 0.21527135 -3.11837554
		 0.20771265 -3.11776876 0.2185441 -0.077820778 0.21574321 -3.11982393 0.21004343 -0.079358846
		 0.20723957 -3.11776853 0.26378068 -0.079971552 0.26385295 -0.080810785 0.26964808
		 -0.080802202 0.26959318 -0.079965562 0.26307824 -0.080378205 0.26302716 -0.079603761
		 0.26656398 -3.1192174 0.27236241 -3.11921215 0.27042031 -0.080801278 0.27024364 -0.080118507
		 0.26579237 -3.11982393 0.27313447 -3.1192112 2.30182409 -0.10129306 2.3019073 -0.10044077
		 2.29722285 -0.10043088 2.29716778 -0.10126713 2.30261445 -0.10081083 2.30267167 -0.10005879
		 2.29639626 -0.1012654 2.29657221 -0.10058308 2.29878783 -3.11941218 2.2944665 -3.11940813
		 2.2998364 -3.11982393 2.29369473 -3.11940718 2.23929858 -0.099452585 2.23927712 -0.10030559
		 2.24393177 -0.10027853 2.24398541 -0.099441558 2.23836946 -0.099818677 2.23842716
		 -0.099065721 2.24239349 -3.11842322 2.24671745 -3.11841893 2.24481273 -0.1002765
		 2.24468398 -0.099594444 2.24128795 -3.11883426 2.24759674 -3.11841846 2.23790693
		 -0.098560542 2.24077058 -3.11982393 2.24528551 -0.10027739 2.24807072 -3.11841822
		 1.18693638 -0.086783677 1.18710625 -0.085945785 1.18127954 -0.08593905 1.18112147
		 -0.086775869 1.18053329 -0.086775094 1.18074095 -0.086092532 1.18434834 -3.11921215
		 1.17853165 -3.11920667 1.17794347 -3.11920547 1.18752074 -0.086355776 1.18493581
		 -3.11982393 0.55484247 -0.0845384 0.55470854 -0.085377634 0.56052113 -0.085367203
		 0.56067759 -0.084530801 0.55378777 -0.08494094 0.55395633 -0.084168404 0.55753708
		 -3.11780381 0.5633539 -3.11779761 0.56142372 -0.085366249 0.56135607 -0.084683657
		 0.5566349 -3.11839581 0.55519313 -0.084190577 0.55436796 -0.083840162 0.55331612
		 -0.083204627 0.55312234 -0.083814979 0.56425667 -3.11779714 0.56211227 -0.085366249
		 0.56180346 -0.084530205;
	setAttr ".uvtk[1000:1249]" 0.55594778 -3.11982393 0.55378425 -0.082952619 0.5649448
		 -3.1177969 2.60699606 -0.11055803 2.6061058 -0.11033848 2.60928154 -3.11982393 2.61018586
		 -3.11941338 2.4313798 -0.10115212 2.43051672 -0.10162371 2.42758465 -3.11915255 2.42842102
		 -3.11982393 0.51324272 -0.084209651 0.5131126 -0.083365202 0.50158679 -0.08335045
		 0.50174296 -0.084187061 0.51416516 -0.083756506 0.51399791 -0.082992166 0.50084078
		 -0.084186137 0.50090832 -0.083503932 0.5104357 -3.11763644 0.49892592 -3.11762476
		 0.51133776 -3.11827755 0.51482195 -0.082589626 0.51462704 -0.082014799 0.51358628
		 -0.082667321 0.51276493 -0.083016098 0.49802345 -3.11762381 0.50046104 -0.083349735
		 0.50015223 -0.084186137 0.51202476 -3.11982393 0.51415664 -0.081776947 0.4973349
		 -3.11762381 0.9775216 -0.084890187 0.97769451 -0.085733116 0.98919636 -0.085712969
		 0.98903847 -0.084876001 0.98024589 -3.11916208 0.99175566 -3.11914992 0.98978448
		 -0.085711837 0.98957682 -0.085029483 0.97710794 -0.085285395 0.9796589 -3.11982393
		 0.99234366 -3.11914921 0.93823135 -0.086093634 0.93819588 -0.085257977 0.9254185
		 -0.085246801 0.92547196 -0.086083025 0.93911666 -0.085675806 0.93905622 -0.084894091
		 0.92459148 -0.086082458 0.92471957 -0.085399866 0.93543231 -3.11792517 0.92267406
		 -3.11791372 0.93631208 -3.11848211 0.92179358 -3.11791301 0.9395802 -0.084605068
		 0.93678415 -3.11982393 0.92411828 -0.086082458 0.9213208 -3.11791277 1.23448372 -0.086594194
		 1.23455286 -0.087429285 1.2473129 -0.087419599 1.24725819 -0.086582989 1.23378241
		 -0.087012947 1.23373091 -0.086230487 1.23727369 -3.11926198 1.25003207 -3.11924982
		 1.24808514 -0.087418646 1.24790835 -0.08673647 1.23650229 -3.11982393 1.25080431
		 -3.11924934 0.10850546 -0.077385217 0.10866335 -0.076549172 0.065907419 -0.076606125
		 0.065748483 -0.077442527 0.10940814 -0.077384621 0.10934147 -0.076702446 0.065160424
		 -0.077444196 0.065368235 -0.076761067 0.062780201 -3.11982298 0.10506809 -3.11976624
		 0.10597083 -3.11976528 0.11009663 -0.07738483 0.10978881 -0.076549172 0.062192142
		 -3.11982393 0.10665932 -3.11976576 2.65885854 2.88697743 2.65901613 2.88781285 2.6199677
		 2.88775206 2.61980915 2.88691592 2.65976119 2.88697743 2.65969443 2.88766026 2.61922121
		 2.88691449 2.61942863 2.88759756 2.61671758 -0.087486625 2.65533781 -0.087426126
		 2.65623951 -0.087425202 2.66045046 2.88697743 2.66014194 2.88781357 2.61612916 -0.087487936
		 2.65692878 -0.087425739 2.70426679 -0.11172193 2.70432281 -0.11088571 2.65888929
		 -0.11107576 2.65883303 -0.1119118 2.70514727 -0.11171874 2.7050209 -0.11103714 2.65806031
		 -0.11191556 2.65823793 -0.11123183 2.65150785 -3.11982059 2.69644213 -3.11963224
		 2.69732285 -3.11962914 2.65073586 -3.11982393 2.70562053 -0.11171821 2.69779587 -3.11962867
		 0.7121591 -0.084875435 0.71210235 -0.084039211 0.66599536 -0.083848745 0.66605139
		 -0.084684789 0.71293133 -0.084879547 0.71275401 -0.084195644 0.66517103 -0.084681243
		 0.66529715 -0.08400017 0.67389584 -3.11963224 0.71949756 -3.11982059 0.72026938 -3.11982393
		 0.67301565 -3.11962891 0.66469753 -0.084681243 0.67254257 -3.11962843 -0.10383785
		 -3.11962795 -0.10295755 -3.11962509 -0.094961554 -0.072733194 -0.09584409 -0.073573172
		 -0.10248429 -3.11962438 -0.094487131 -0.072386146 -0.14148116 -0.072930932 -0.1415368
		 -0.073767364 -0.1490289 -3.11982036 -0.14230883 -0.073770881 -0.14213035 -0.073089093
		 -0.14980093 -3.11982393 2.84309006 2.91891289 2.84303284 2.9197495 2.79690981 2.9199357
		 2.79696631 2.91909957 2.8438623 2.91891003 2.84368467 2.9195931 2.79608536 2.91910219
		 2.79621172 2.91978407 2.80464506 -0.088029146 2.85026288 -0.088213444 2.85103464
		 -0.088217139 2.80376458 -0.088025987 2.7956121 2.91910291 2.8032918 -0.088025421
		 2.046733379 -0.097257376 2.046574593 -0.09642148 2.0050332546 -0.096362293 2.0051906109
		 -0.097198367 2.04732132 -0.097258836 2.047113657 -0.096576303 2.0042877197 -0.097197622
		 2.0043547153 -0.09651503 2.0086603165 -3.1197648 2.049746513 -3.11982274 2.050334454
		 -3.11982393 2.0077576637 -3.11976385 2.0039076805 -0.096362293 2.0035996437 -0.097198367
		 2.0070695877 -3.11976409 -2.27435207 1.29323375 -2.27343345 1.29102361 -2.27350593
		 1.29258633 -2.2729187 1.29323411 -2.23636079 1.29326797 -2.23720741 1.29261076 -2.23727965
		 1.29102361 -2.23779511 1.29326844 -2.34695172 1.15253365 -2.3460331 1.15044737 -2.34610558
		 1.1519227 -2.34551787 1.15253472 -2.19980311 1.2932831 -2.20064974 1.29262173 -2.20072222
		 1.29102409 -2.20123696 1.29328394 1.95861125 0.22095513 1.82420564 0.035961032 1.87362683
		 -0.040601254 1.89486694 0.2534346 1.82420564 0.035961032 1.95861125 0.22095513 1.89486694
		 0.2534346 1.95861125 -0.0077099502 1.73321605 0.030941367 1.95861125 -0.0077099502
		 2.02927351 0.20976359 2.02927351 0.20976359 2.02927351 0.43842876 1.84427881 0.30402279
		 1.70987272 0.11902863 1.70987272 0.11902863 1.84427881 0.30402279 2.02927351 -0.065252721
		 2.099934578 -0.0077099502 2.099934578 -0.0077099502 2.099934578 0.22095549 2.099934578
		 0.22095549 1.6217854 0.14237171 2.18491912 -0.040600866 2.23434019 0.035961032 2.23434019
		 0.035961032 2.16367865 0.2534346 2.16367865 0.2534346 1.81179976 0.36776733 1.62680519
		 0.23336101 2.32532954 0.030941725 2.34867287 0.11902863 2.34867287 0.11902863 2.2142663
		 0.30402315 2.2142663 0.30402315 1.8006078 0.43842876 2.43174028 0.23336136 2.43174028
		 0.23336136 2.24674702 0.36776733 2.24674702 0.36776733 1.81179976 0.50909019 2.43676019
		 0.14237207 2.50830221 0.28278261 2.47541094 0.36776733 2.47541094 0.36776733 2.25793767
		 0.43842876 2.25793767 0.43842876 1.84427881 0.57283473 2.53295493 0.43842876 2.47541094
		 0.50909019 2.47541094 0.50909019 2.24674702 0.50909019 2.24674702 0.50909019 1.84427881
		 0.57283473 1.62680519 0.64349604 1.62680519 0.64349604 1.81179976 0.50909019 2.43174028
		 0.64349604 2.43174028 0.64349604 2.2142663 0.57283473 2.2142663 0.57283473 1.62178564
		 0.73448539 1.55024254 0.59407508 2.50830221 0.59407508;
	setAttr ".uvtk[1250:1499]" 2.43676019 0.73448485 2.34867287 0.75782871 2.34867287
		 0.75782871 2.16367865 0.62342286 2.16367865 0.62342286 1.70987272 0.75782871 1.58313417
		 0.50909019 2.32532954 0.84591573 2.23434019 0.84089613 2.23434019 0.84089613 2.099934578
		 0.65590233 2.099934578 0.65590233 2.18491912 0.91745836 2.099934578 0.88456738 2.099934578
		 0.88456738 2.02927351 0.66709369 2.02927351 0.66709369 2.02927351 0.94211012 1.95861125
		 0.88456738 1.95861125 0.88456738 1.95861125 0.65590233 1.95861125 0.65590233 1.87362683
		 0.91745836 1.82420564 0.84089613 1.82420564 0.84089613 1.8948673 0.62342286 1.8948673
		 0.62342286 1.73321605 0.84591573 1.70987272 0.75782871 -2.50452113 0.84802055 -2.50452113
		 0.6193558 -2.41953611 0.58646441 -2.5751822 0.83682895 -2.50452113 0.6193558 -2.50452113
		 0.84802055 -2.5751822 0.83682895 -2.37011504 0.66302675 -2.37011504 0.66302675 -2.44077635
		 0.88050032 -2.44077635 0.88050032 -2.64584398 0.84802055 -2.64584398 0.6193558 -2.64584398
		 0.6193558 -2.64584398 0.84802055 -2.75162888 0.86148071 -2.82229066 0.64400727 -2.75162888
		 0.58646441 -2.68096781 0.64400727 -2.57525706 0.90335083 -2.57525706 1.13201594 -2.6602416
		 1.16490722 -2.5375092 0.90510368 -2.35251522 1.039509654 -2.37585831 1.12759674 -1.64408791
		 0.60941672 -1.60691094 0.69804877 -1.71728504 0.83469379 -1.60691094 0.69804877 -1.652583
		 0.86766094 -1.652583 0.86766094 -1.71728504 0.83469379 -1.72626138 0.65926981 -1.51335394
		 0.67602885 -1.50538552 0.77181113 -1.50538552 0.77181113 -1.60123539 0.91900897 -1.60123539
		 0.91900897 -1.78900743 1.055433273 -1.78900743 0.82333434 -1.72626138 0.65926981
		 -1.78900743 0.82333434 -1.78900743 0.58646423 -1.86073017 0.83469379 -1.85175371
		 0.65926981 -1.85175371 0.65926981 -1.86073017 0.83469379 -1.93392706 0.6094169 -1.97110391
		 0.69804895 -1.77345955 1.078284144 -1.76549089 1.17406642 -1.91268837 1.26991618
		 1.41136885 0.78737563 1.31781185 0.76535541 1.27213991 0.59574354 1.31781185 0.76535541
		 1.20743787 0.62871057 1.20743787 0.62871057 1.27213991 0.59574354 1.41933727 0.69159323
		 1.28063464 0.85398746 1.19846117 0.80413485 1.19846117 0.80413485 1.13571489 0.64007032
		 1.13571489 0.64007032 1.13571489 0.40797126 1.13571489 0.87694067 1.072968841 0.80413485
		 1.072968841 0.80413485 1.063992381 0.62871057 1.063992381 0.62871057 0.99079561 0.85398746
		 0.95361882 0.76535541 0.95361882 0.76535541 0.99929088 0.59574354 0.99929088 0.59574354
		 0.86006194 0.78737563 0.85209334 0.69159323 0.85209334 0.69159323 0.94794285 0.5443958
		 0.94794285 0.5443958 0.77833086 0.59006733 0.77833086 0.59006733 0.9149757 0.47969377
		 0.9149757 0.47969377 0.75631094 0.68362463 0.68969882 0.55289066 0.73955172 0.47071731
		 0.73955172 0.47071731 0.90361571 0.40797126 0.90361571 0.40797126 0.6667459 0.40797126
		 0.73955172 0.34522516 0.73955172 0.34522516 0.9149757 0.33624864 0.9149757 0.33624864
		 0.68969882 0.26305187 0.77833086 0.22587508 0.77833086 0.22587508 0.94794285 0.27154672
		 0.94794285 0.27154672 0.75631094 0.1323179 0.85209334 0.12434953 0.85209334 0.12434953
		 0.99929088 0.22019899 0.99929088 0.22019899 0.86006194 0.028567255 0.95361882 0.050587058
		 0.95361882 0.050587058 1.063992858 0.18723196 1.063992858 0.18723196 0.99079561 -0.038045138
		 1.072968841 0.01180768 1.072968841 0.01180768 1.13571489 0.17587197 1.13571489 0.17587197
		 1.13571489 -0.060997993 1.19846117 0.01180768 1.19846117 0.01180768 1.20743787 0.18723196
		 1.20743787 0.18723196 1.28063464 -0.038045138 1.31781161 0.050587058 1.31781161 0.050587058
		 1.27213955 0.22019899 1.27213955 0.22019899 1.41136825 0.028567255 1.4193368 0.12434953
		 1.4193368 0.12434953 1.3234874 0.27154672 1.3234874 0.27154672 1.51511908 0.1323179
		 1.49309933 0.22587508 1.49309933 0.22587508 1.35645473 0.33624864 1.35645473 0.33624864
		 -1.715042 1.26991618 -1.72301078 1.17413402 -1.57581341 1.078284144 0.17778865 0.82647169
		 0.24024808 0.80403709 0.17778865 0.8637346 0.30131429 0.80607253 0.24024808 0.80403709
		 0.17778865 0.70970088 0.26226315 0.69501698 0.11532909 0.80403709 0.31809777 0.84148413
		 0.11532909 0.80403709 0.054262996 0.80607253 0.093314022 0.69501698 0.41274792 0.74687225
		 0.35905296 0.76543498 0.35905296 0.76543498 0.33846897 0.65240252 -0.0034758151 0.76543498
		 -0.0034758151 0.76543498 -0.057170898 0.74687225 0.017108381 0.65240252 0.50118279
		 0.65466523 0.46011478 0.69200969 0.46011478 0.69200969 0.39894629 0.58602917 0.037479401
		 0.84148413 -0.089054376 0.77693868 -0.1045374 0.69200969 -0.1045374 0.69200969 -0.14560539
		 0.65466523 -0.043368936 0.58602917 0.5450058 0.67646617 0.55796123 0.53847814 0.53354043
		 0.59094793 0.53354043 0.59094793 0.43777502 0.50239402 -0.18942814 0.67646617 -0.1779629
		 0.59094793 -0.1779629 0.59094793 -0.20238377 0.53847814 -0.082197428 0.50239402 0.60942757
		 0.54992294 0.57752544 0.40968329 0.57214224 0.47214293 0.57214224 0.47214293 0.45115435
		 0.40968329 -0.2538504 0.54992294 -0.21656513 0.47214293 -0.21656513 0.47214293 -0.22194824
		 0.40968329 -0.095577121 0.40968329 0.63162172 0.40968329 0.55796081 0.28088874 0.57214224
		 0.347224 0.57214224 0.347224 0.4377746 0.31697297 -0.27604491 0.40968329 -0.21656513
		 0.347224 -0.21656513 0.347224 -0.20238377 0.28088874 -0.082197428 0.31697297 0.60942715
		 0.26944405 0.50118238 0.1647017 0.53354013 0.22841901 0.53354013 0.22841901 0.39894593
		 0.23333782 -0.2538504 0.26944405 -0.1779629 0.22841901 -0.1779629 0.22841901 -0.14560539
		 0.1647017 -0.043368936 0.23333782 0.54500538 0.14290082 0.41274792 0.072494805 0.46011478
		 0.1273573 0.46011478 0.1273573 0.33846897 0.16696453 -0.18942814 0.14290082 -0.1045374
		 0.1273573 -0.1045374 0.1273573 -0.057170898 0.072494805 0.017108381 0.16696453 0.44463176
		 0.042428315 0.30131388 0.013294876;
	setAttr ".uvtk[1500:1749]" 0.35905296 0.053931952 0.35905296 0.053931952 0.26226315
		 0.12435031 -0.089054376 0.042428315 -0.0034758151 0.053931952 -0.0034758151 0.053931952
		 0.054263294 0.013294876 0.093314022 0.12435031 0.31809777 -0.022117019 0.17778865
		 -0.0071042776 0.24024808 0.015329897 0.24024808 0.015329897 0.17778865 0.10966635
		 0.037479401 -0.022117019 0.11532909 0.015329897 0.11532909 0.015329897 0.17778865
		 -0.044367343 1.70660818 1.113433 1.76434708 1.07279563 1.72339165 1.14884472 -0.083780676
		 0.93395132 -0.13864318 0.88658482 -0.053714156 0.9020682 -0.065217644 0.98764628
		 -0.31116873 0.66382611 -0.39139199 0.70470226 -0.46743762 0.60003459 -0.40433663
		 0.58013493 -0.40433663 0.58013493 -0.35114807 0.54078209 -0.45505756 0.76836807 -0.55972517
		 0.69232219 -0.50586194 0.65389782 -0.50586194 0.65389782 -0.49789357 0.55811524 -0.36715963
		 0.49150342 -0.49593338 0.84859151 -0.61897773 0.80861187 -0.57962447 0.75542331 -0.57962447
		 0.75542331 -0.60164428 0.66186655 -0.51001847 0.93751961 -0.63939464 0.93751961 -0.61840367
		 0.87477344 -0.61840367 0.87477344 -0.66825652 0.7926001 -0.49593338 1.02644825 -0.61897755
		 1.066427708 -0.61840367 1.00026595592 -0.61840367 1.00026595592 -0.69120955 0.93751961
		 -0.45505756 1.10667169 -0.55972505 1.18271697 -0.57962447 1.11961615 -0.57962447
		 1.11961615 -0.66825652 1.08243978 -0.39139199 1.1703372 -0.46743742 1.27500498 -0.50586194
		 1.22114158 -0.50586194 1.22114158 -0.60164422 1.21317327 -0.31116837 1.21121347 -0.35114807
		 1.33425725 -0.40433645 1.29490435 -0.40433645 1.29490435 -0.49789342 1.31692386 -0.36715963
		 1.38353658 -1.20723033 1.3293283 -1.1558826 1.38067591 -1.34365487 1.51710057 -1.53333294
		 1.078284144 -1.38613546 1.17413402 -1.39410388 1.26991618 -1.10637426 1.21121299
		 -1.026150823 1.17033684 -0.95010555 1.27500451 -1.013206244 1.29490376 -1.013206244
		 1.29490376 -1.066394806 1.33425713 -0.96248525 1.10667145 -0.85781771 1.18271697
		 -0.91168094 1.2211411 -0.91168094 1.2211411 -0.91964942 1.31692362 -1.050383091 1.38353622
		 -0.92160922 1.026448131 -0.79856515 1.066427112 -0.83791834 1.11961615 -0.83791834
		 1.11961615 -0.81589842 1.21317303 -0.90752453 0.93751961 -0.77814829 0.93751961 -0.79913926
		 1.0002655983 -0.79913926 1.0002655983 -0.74928641 1.082438827 -0.92160946 0.84859109
		 -0.79856515 0.80861187 -0.79913926 0.87477344 -0.79913926 0.87477344 -0.72633338
		 0.93751961 -0.96248525 0.76836765 -0.85781771 0.69232219 -0.83791834 0.75542289 -0.83791834
		 0.75542289 -0.74928641 0.7926001 -1.026150823 0.70470226 -0.95010555 0.60003459 -0.91168094
		 0.65389782 -0.91168094 0.65389782 -0.81589872 0.66186625 -1.10637426 0.66382611 -1.066394806
		 0.54078209 -1.013206244 0.58013546 -1.013206244 0.58013546 -0.91964942 0.55811554
		 -1.050383091 0.49150342 -2.091208696 1.11125124 -2.026506901 1.078284144 -1.95478404
		 1.29902363 -1.1205045 1.45697427 -1.069916487 1.40638673 -0.93551052 1.59138036 -2.29101563
		 1.2681731 -2.31435895 1.1800859 -2.12936473 1.045680046 -0.7123602 1.45697486 -0.89735436
		 1.59138072 -0.89735436 1.59138072 -0.76294816 1.40638673 -0.76294816 1.40638673 -0.7123602
		 1.45697486 2.40730476 1.026026845 2.40526986 0.96496075 2.44271731 1.04281044 2.48337245
		 1.04274106 2.52065802 0.96496075 2.53483891 1.031295419 -1.40442193 1.29323113 -1.40428329
		 1.29403341 -1.41706824 1.2960906 -1.41719937 1.29526496 -1.4035424 1.29362524 -1.40367162
		 1.29276669 -1.39780509 1.33493614 -1.41059995 1.33693051 -1.4178946 1.29622269 -1.4178499
		 1.29552364 -1.39697361 1.33509541 -1.39768922 1.33574224 -1.41046941 1.33775675 -1.41142654
		 1.33706045 -1.39683056 1.33595634 -1.41116786 1.33771133 0.26301894 1.0010998249
		 0.26340628 1.0018129349 0.2518813 1.0077254772 0.25150126 1.0069801807 0.26399544
		 1.0012202263 0.26359621 1.00042462349 0.28515273 1.044492841 0.27359527 1.050341487
		 0.251136 1.0081058741 0.25096259 1.007427454 0.28597718 1.044360876 0.28550076 1.045225978
		 0.27397466 1.051086664 0.27284926 1.050720453 0.27329654 1.051259279 -1.3521924 1.54076874
		 -1.35160697 1.54133201 -1.36074066 1.55051458 -1.36133277 1.54992282 -1.35124123
		 1.5405767 -1.35185707 1.53995132 -1.31778085 1.57515764 -1.32696331 1.5842917 -1.36133206
		 1.55110621 -1.36170661 1.55051458 -1.31703091 1.57478714 -1.31721902 1.57574487 -1.32637215
		 1.58488381 -1.32755554 1.58488321 -1.3269639 1.58525753 -0.70831525 1.62026644 -0.70866501
		 1.62099874 -0.72022307 1.61515045 -0.71984339 1.61440456 -0.70783961 1.62112617 -0.70743072
		 1.62033606 -0.72986495 1.66260612 -0.74138987 1.6566931 -0.7209689 1.61477053 -0.72052163
		 1.61423182 -0.72926903 1.66318715 -0.73025668 1.66331625 -0.74176967 1.65743732 -0.74213505
		 1.65631187 -0.74230832 1.65699077 0.099970192 1.0024366379 0.099867553 1.0032408237
		 0.087065548 1.0012521744 0.087196261 1.00042462349 0.10070917 1.0031143427 0.10084456
		 1.0022314787 0.092549652 1.049440503 0.079759985 1.047376871 0.086238831 1.0011211634
		 0.086497426 1.00046992302 0.093301535 1.04981029 0.092403471 1.050236106 0.079628915
		 1.04820168 0.078933686 1.047244191 0.093171954 1.050728798 0.078978807 1.0479424
		 -0.027574688 1.057628751 -0.028100431 1.05870378 -0.041367322 1.060681343 -0.041498005
		 1.059853792 -0.026863366 1.058372736 -0.027481675 1.058719873 -0.042324722 1.059985995
		 -0.042066485 1.060634971 -0.036161751 1.010971308 -0.034862489 1.011612773 -0.048920065
		 1.012991905 -0.027716577 1.05903244 -0.028741747 1.059033871 -0.049692094 1.01346612
		 -0.035389543 1.010496855 -0.2355217 1.56946671 -0.23514044 1.57018471 -0.24607006
		 1.57579017 -0.24644998 1.57504547 -0.21332665 1.61299908 -0.22428423 1.61854744 -0.24681517
		 1.57617092 -0.24698845 1.57549286 -0.23454434 1.56956053 -0.21246409 1.61289716 -0.21296483
		 1.61372948 -0.22390485 1.61929333 -0.2250303 1.618927 -0.21207333 1.61366725 -0.22458333
		 1.61946607 -0.80873203 1.65868115 -0.80838442 1.65794849 -0.79988074 1.66224051 -0.80026019
		 1.6629858 -0.78682196 1.61562955 -0.77835083 1.6199863;
	setAttr ".uvtk[1750:1999]" -0.79913473 1.66261935 -0.79958183 1.66315842 -0.80920845
		 1.65781569 -0.78742695 1.61502624 -0.78643405 1.61491656 -0.77797079 1.61924052 -0.77760571
		 1.6203661 -0.787018 1.61423147 -0.77743232 1.6196878 0.63598794 1.06462121 0.63609535
		 1.063816428 0.64193416 1.064705491 0.64180362 1.065531731 0.63527399 1.0639534 0.6351276
		 1.064828992 0.64430267 1.011995554 0.65013039 1.012954116 0.64276046 1.064835072
		 0.64250213 1.065485954 0.64356375 1.011610985 0.64444917 1.011197329 0.650262 1.012128234
		 0.65095681 1.013086557 0.64369565 1.010729074 0.65091228 1.012387395 0.32990545 1.051246524
		 0.32974935 1.050451279 0.33445835 1.049667478 0.33458936 1.050493836 0.32900256 1.050816774
		 0.32914072 1.05170846 0.32206923 1.0019607544 0.3267898 1.0012509823 0.33528423 1.049534678
		 0.33523983 1.050234079 0.32124704 1.0018472672 0.32197261 1.0011556149 0.32665956
		 1.00042462349 0.32761687 1.0011222363 0.32110149 1.0009496212 0.32735807 1.00047063828
		 -0.85069764 1.6623764 -0.8510828 1.66166115 -0.84525084 1.65865064 -0.84487069 1.65939617
		 -0.85166764 1.66225886 -0.85127127 1.66305113 -0.87327969 1.61809754 -0.86741579
		 1.61514902 -0.84450567 1.65826964 -0.84433228 1.65894842 -0.87410474 1.61822343 -0.87363034
		 1.61736584 -0.86779523 1.6144042 -0.86666948 1.61477053 -0.86711663 1.61423182 -1.88736475
		 1.32933283 -1.887959 1.32878041 -1.88523638 1.32600462 -1.88464463 1.32659638 -1.88835692
		 1.32953107 -1.88771749 1.330163 -1.92028451 1.29645419 -1.91750908 1.29373205 -1.8846463
		 1.3254112 -1.88427079 1.32600379 -1.92103779 1.2968322 -1.92084372 1.29586828 -1.91810024
		 1.29313993 -1.91691577 1.29314208 -1.91750789 1.29276669 -0.37328809 1.62082577 -0.37316912
		 1.62001991 -0.36037385 1.62201333 -0.36050454 1.62284088 -0.37400126 1.62018847 -0.37414259
		 1.62103653 -0.3658576 1.57384515 -0.35307091 1.57590485 -0.35954732 1.62214458 -0.35980609
		 1.62279606 -0.36662176 1.57346487 -0.36570656 1.57304788 -0.35294002 1.57508039 -0.35224476
		 1.57603741 -0.35228992 1.57533967 -0.54972541 1.63427246 -0.54987133 1.63347673 -0.53708231
		 1.6314137 -0.53695142 1.63223827 -0.55062211 1.63383436 -0.55049276 1.63476682 -0.55707979
		 1.58796799 -0.54427809 1.58597898 -0.53625619 1.63128078 -0.5363009 1.63197875 -0.55790758
		 1.58784056 -0.55718362 1.58716369 -0.54440874 1.58515143 -0.54345155 1.58584785 -0.55805063
		 1.58695376 -0.54371017 1.58519673 -1.12282443 1.66082788 -1.12320924 1.66011715 -1.11168265
		 1.65420008 -1.11130285 1.65494466 -1.1431427 1.62099671 -1.13157952 1.61514974 -1.11093748
		 1.65381885 -1.11076427 1.65449727 -1.12381995 1.66068518 -1.14397097 1.62113881 -1.14349246
		 1.62026703 -1.13195932 1.6144042 -1.13083375 1.61477053 -1.14440227 1.62032259 -1.13128078
		 1.61423111 -1.53233469 1.30227304 -1.53288829 1.3028661 -1.54207397 1.29373205 -1.54148304
		 1.29314053 -1.56531572 1.33529294 -1.57444966 1.32610738 -1.54266644 1.29314113 -1.54207468
		 1.29276669 -1.53215098 1.30325294 -1.56493211 1.33603203 -1.56590629 1.33584929 -1.57504141
		 1.32669866 -1.57504094 1.32551503 -1.56556642 1.3366735 -1.57541549 1.32610691 0.5995295
		 1.016762495 0.59918267 1.017495871 0.58762467 1.011647105 0.58800381 1.010901928
		 0.57555026 1.063876867 0.56402475 1.057964206 0.58687878 1.011267781 0.58732563 1.010729074
		 0.60000384 1.017628312 0.57613868 1.064463854 0.57516176 1.064589262 0.56364471 1.058709264
		 0.56327987 1.05758357 0.5757364 1.065267324 0.56310636 1.05826211 -0.65140092 1.58716464
		 -0.65151179 1.58796978 -0.66430879 1.58597779 -0.66417849 1.58515143 -0.65068388
		 1.58782506 -0.65054047 1.58695626 -0.65869409 1.63331676 -0.67148054 1.6312573 -0.66513574
		 1.58584785 -0.66487694 1.58519673 -0.65795279 1.63371086 -0.65883732 1.63411665 -0.67161185
		 1.63208318 -0.67230678 1.63112557 -0.65808451 1.63458538 -0.67226231 1.63182461 -1.19456708
		 1.54194522 -1.19403923 1.54083085 -1.19326794 1.54130411 -1.19424963 1.53995085 -1.18639612
		 1.58583856 -1.1872766 1.58605015 -1.20003486 1.58402932 -1.20107222 1.58301783 -1.18050945
		 1.54332519 -1.17973757 1.54379821 -1.17952609 1.54467845 -1.18592298 1.58506656 -1.20091462
		 1.58424067 -1.20138657 1.58501267 0.21583882 1.047839284 0.21553257 1.048888683 0.21439725
		 1.048914909 0.19367582 1.0033898354 0.19444785 1.0029168129 0.20720601 1.00089597702
		 0.20850539 1.001537323 0.202043 1.050871849 0.20116267 1.050660133 0.20068958 1.049888253
		 0.19346431 1.0042703152 0.20797762 1.00042462349 -0.16190857 1.61837387 -0.16243619
		 1.6194874 -0.16320801 1.61901498 -0.16931924 1.56967783 -0.16843897 1.56946671 -0.15568045
		 1.57148743 -0.15464297 1.57249856 -0.17596632 1.6169945 -0.17673829 1.61652136 -0.17694971
		 1.61564112 -0.16979218 1.57044983 -0.15480053 1.57127452 0.40520746 1.0073401928
		 0.40453309 1.0060577393 0.4054352 1.0061283112 0.39271462 1.00042462349 0.39361709
		 1.00049591064 0.38334602 1.050245881 0.38191223 1.050454021 0.37099624 1.044892192
		 0.37040854 1.04420352 0.37047946 1.043301105 0.39202648 1.0010126829 0.38249987 1.051141739
		 0.38242865 1.05204308 -1.72144985 1.33340847 -1.72253156 1.33399951 -1.72287774 1.33316326
		 -1.7228781 1.33483505 -1.69420969 1.29276669 -1.6933732 1.29311299 -1.68810034 1.29838598
		 -1.68785548 1.29981411 -1.72815061 1.3278904 -1.72849703 1.32705343 -1.72815061 1.32621741
		 -1.69504642 1.29311299 -1.68726385 1.29873216 -1.64509296 1.29419589 -1.64652073
		 1.29444087 -1.64617431 1.29360366 -1.61748528 1.33520508 -1.61832166 1.33485878 -1.6517936
		 1.30138648 -1.65214014 1.30055034 -1.6517936 1.29971349 -1.61113107 1.32815731 -1.61137605
		 1.32958591 -1.61664879 1.33485878 -1.64652038 1.29276669 -1.61053932 1.32923865 0.70237762
		 1.063713312 0.70221972 1.064935803 0.70133996 1.064724565 0.68629223 1.012593389
		 0.68706405 1.012120724 0.69286257 1.011202097 0.69416195 1.011843443 0.69554132 1.065643072
		 0.69466096 1.065431714 0.69418788 1.064659476;
	setAttr ".uvtk[2000:2249]" 0.68608087 1.013473988 0.69363439 1.010729074 0.44751966
		 1.050747156 0.44691217 1.05168891 0.4458636 1.051331758 0.44728702 1.052209258 0.44861668
		 1.00063610077 0.44949716 1.00042462349 0.45381999 1.0011096001 0.45521247 1.0021771193
		 0.44154269 1.050647378 0.44077039 1.050174236 0.44055909 1.049294233 0.4481436 1.0014083385
		 0.45492637 1.0010926723 0.45544356 1.00071036816 -1.81571007 1.32967162 -1.81402802
		 1.32917261 -1.8146646 1.33007777 -1.81121314 1.32586765 -1.81155956 1.32670403 -1.84811771
		 1.29726362 -1.84761059 1.29557335 -1.84515047 1.29311335 -1.84431386 1.29276669 -1.84347701
		 1.29311335 -1.81155956 1.32503128 -1.814659 1.33072019 -1.84851551 1.29622185 -1.84914708
		 1.2962327 -0.5009042 1.59236908 -0.50113225 1.59115744 -0.50022995 1.59108686 -0.46665609
		 1.62668335 -0.46724421 1.62737179 -0.47875366 1.63323617 -0.48018757 1.63302803 -0.4887203
		 1.58522224 -0.48781776 1.58515143 -0.48712921 1.58573949 -0.46672723 1.62578082 -0.47934157
		 1.63392437 -0.47927028 1.63482618 -0.11929077 1.053401947 -0.11861643 1.054684162
		 -0.11951914 1.054612875 -0.08481589 1.018641949 -0.084887058 1.019544482 -0.10551569
		 1.060031772 -0.10620424 1.060619354 -0.10710695 1.060548544 -0.098347366 1.01229775
		 -0.096913517 1.012089372 -0.085404009 1.017953992 -0.097501636 1.011400223 -0.097430855
		 1.010496855 0.13596895 1.0034565926 0.13612628 1.0022323132 0.13700661 1.0024454594
		 0.15812933 1.047890186 0.15735725 1.04836297 0.14459899 1.050384045 0.14329955 1.04974246
		 0.14976457 1.00042462349 0.1506449 1.00063610077 0.15111798 1.0014083385 0.15834063
		 1.047009587 0.14382717 1.050855756 -0.43153226 1.61977994 -0.43009469 1.62085438
		 -0.43122756 1.62083244 -0.41685617 1.62260056 -0.41773644 1.62281215 -0.42430717
		 1.57416058 -0.42300773 1.57351947 -0.41024959 1.57554054 -0.40947759 1.57601333 -0.40926623
		 1.57689381 -0.41638306 1.62182879 -0.42377955 1.57304823 -1.075616121 1.65414 -1.074566841
		 1.65561366 -1.075640559 1.65522337 -1.062529564 1.66135788 -1.063432217 1.66128659
		 -1.05562377 1.61490273 -1.05382967 1.61487806 -1.042680621 1.62055898 -1.042092562
		 1.62124681 -1.04216361 1.62214994 -1.06184113 1.6607697 -1.054759145 1.61423111 -0.61541677
		 1.58818364 -0.61525905 1.58696103 -0.61437917 1.58717227 -0.59338611 1.6317966 -0.59415817
		 1.63226986 -0.60691631 1.6342907 -0.60821569 1.63364947 -0.60162079 1.58515143 -0.60074055
		 1.58536291 -0.60026741 1.58613515 -0.5931747 1.63091683 -0.60768783 1.63476408 -0.94154167
		 1.61922836 -0.94095379 1.61853981 -0.9324984 1.61423182 -0.93106461 1.61443973 -0.90945631
		 1.65684807 -0.91013074 1.65813065 -0.91858602 1.66243875 -0.91948867 1.66250992 -0.92017734
		 1.66192198 -0.94147056 1.6201309 -0.90922886 1.65805948 -0.98428702 1.61423147 -0.98338425
		 1.61430216 -0.97756743 1.61726618 -0.97689325 1.61854863 -0.99912989 1.66219044 -1.00056374073
		 1.66239846 -1.006380558 1.65943503 -1.0069682598 1.65874624 -1.0068974495 1.65784383
		 -0.98497558 1.61481953 -0.97666556 1.61733675 0.52798235 1.047725797 0.52739435 1.04841435
		 0.51588511 1.05427897 0.51445115 1.054070592 0.49079478 1.0076425076 0.49146914 1.0063598156
		 0.50297838 1.00049567223 0.50388098 1.00042462349 0.50456983 1.0010126829 0.52791142
		 1.046823263 0.49056697 1.0064308643 -1.45301867 1.32596922 -1.45336521 1.32680559
		 -1.46249878 1.33593953 -1.46392691 1.33618462 -1.49643636 1.30367482 -1.49619126
		 1.30224717 -1.48705733 1.29311299 -1.48622108 1.29276669 -1.48538458 1.29311299 -1.45336521
		 1.32513261 -1.46284497 1.33677566 -1.49702704 1.30259299 -0.31712055 1.57670712 -0.31653282
		 1.57601833 -0.30502334 1.57015419 -0.30358964 1.57036233 -0.28234041 1.61206603 -0.2830146
		 1.6133486 -0.29452428 1.6192131 -0.29542696 1.61928391 -0.29611534 1.61869586 -0.31704977
		 1.5776093 -0.30443579 1.56946635 -0.28211248 1.61327827 -1.27110052 1.58534765 -1.27193725
		 1.58500123 -1.28107107 1.57586718 -1.28131604 1.57443929 -1.24741912 1.5405426 -1.24599099
		 1.54078722 -1.23685718 1.54992127 -1.23651052 1.550758 -1.23685718 1.55159402 -1.27026403
		 1.58500123 -1.2819072 1.57552123 -1.24633718 1.53995085 0.021574616 1.053184152 0.020671904
		 1.053113341 0.0091628134 1.047248602 0.0084884465 1.045966387 0.030278742 1.003200531
		 0.031712592 1.0029923916 0.0432221 1.0088567734 0.04381001 1.0095453262 0.043738872
		 1.010447502 0.022263169 1.052596211 0.0082606971 1.04717803 -2.088724613 1.32414722
		 -2.08886981 1.32489002 -2.090095758 1.32341945 -2.089729786 1.32293153 -2.091117859
		 1.3218745 -2.090319157 1.32199085 -2.089217186 1.32255459 -2.088579655 1.32340491
		 -2.05345583 1.3218745 -2.052724838 1.32205009 -2.052282572 1.32271624 -2.052704811
		 1.32306921 -2.051764488 1.32336962 -2.051817656 1.32415807 -2.051870823 1.32494724
		 -2.05313158 1.32342649 -2.12778616 1.29403269 -2.1281271 1.29335523 -2.12778163 1.29234695
		 -2.12724042 1.29260623 -2.12762952 1.29181826 -2.12693572 1.29142106 -2.12624168
		 1.29102361 -2.12671328 1.29287529 2.52457547 1.065660715 2.52099347 1.14222336 2.45087886
		 1.1133765 0.58218843 0.88658482 0.5786072 0.97467202 0.50849247 0.92717457 0.13588846
		 0.88658482 0.13230652 0.97757417 0.062192142 0.91607487 -1.32353187 0.6027 -1.32711375
		 0.68768501 -1.39722824 0.61820352 -1.32711375 0.68768501 -1.39722824 0.75834632 -1.39722824
		 0.75834632 -1.46734285 0.69588667 -1.46734285 0.69588667 -1.39722824 0.61820352 -1.32353187
		 0.75834632 -1.32711375 0.82900774 -1.32711375 0.82900774 -1.39722824 0.8984884 -1.39722824
		 0.8984884 -1.46734285 0.82080567 -1.46734285 0.82080567 -1.47012734 0.75834632 -1.47016799
		 0.61803728 -1.39722824 0.49177974 -1.32711375 0.55327851 -1.32711375 0.55327851 -1.46734285
		 0.5770821 -1.46734285 0.5770821 -1.39722824 0.49177974 -1.32711375 0.96341372 -1.32711375
		 0.96341372 -1.39722824 1.024913073 -1.39722824 1.024913073 -1.46734285 0.93961084
		 -1.46734285 0.93961084 -1.47016799 0.89865535 -1.47026169 0.49150342 -1.47026169
		 1.025189281;
	setAttr ".uvtk[2250:2499]" 2.66851902 3.11982346 2.67210078 3.043261528 2.74221563
		 3.072107792 0.62006766 0.98787838 0.62364918 0.8997913 0.69376415 0.94728887 -2.15295768
		 1.022829771 -2.14937615 0.93184042 -2.079261303 0.99333972 -2.14937615 0.93184042
		 -2.079261303 0.86691523 -2.079261303 0.86691523 -2.0091466904 0.90803736 -2.0091466904
		 0.90803736 -2.079261303 0.99333972 -2.14937615 0.79743445 -2.14937615 0.79743445
		 -2.079261303 0.72677273 -2.079261303 0.72677273 -2.0091466904 0.78923279 -2.0091466904
		 0.78923279 -2.0062279701 0.99361604 -2.15295768 0.88241917 -2.15295768 0.72677273
		 -2.14937615 0.65611172 -2.14937615 0.65611172 -2.079261303 0.58663052 -2.079261303
		 0.58663052 -2.0091466904 0.66431379 -2.0091466904 0.66431379 -2.0063619614 0.72677273
		 -2.0063214302 0.86708218 -2.0063214302 0.58646423 -1.3447082 -2.9905448 -1.29066396
		 -3.055184364 -1.29066396 -2.98887062 -1.3751384 -3.11982393 -1.29066396 -3.11982393
		 -1.39875281 -3.055184364 -1.23661959 -2.9905448 -1.29066396 -2.91725039 -1.20618927
		 -3.11982393 -1.18257475 -3.055184364 -1.40037358 -2.98890615 -1.45134413 -3.11982393
		 -1.44750702 -2.9905448 -1.49626136 -3.055184364 -1.38644063 -2.91725039 -1.29066396
		 -2.84461665 -1.2914902 -2.84395576 -1.37330246 -2.84395576 -1.37424064 -2.84462237
		 -1.12998378 -3.11982393 -1.085066319 -3.055184364 -1.13382065 -2.9905448 -1.18095422
		 -2.98890615 -1.4993037 -2.98900104 -1.19488692 -2.91725039 -1.20708716 -2.84462237
		 -1.20802534 -2.84395576 -1.2898376 -2.84395576 -1.29066396 -2.84395576 -1.37329257
		 -2.84258366 -1.29150021 -2.84259701 -1.30776453 -2.81618381 -1.30975926 -2.81428576
		 -1.35522544 -2.81429124 -1.3572197 -2.81620789 -1.3741287 -2.84395576 -1.47284234
		 -2.91725039 -1.374874 -2.84395576 -1.44867802 -2.84395576 -1.44964182 -2.84463954
		 -1.082024097 -2.98900104 -1.10848558 -2.91725039 -1.13168609 -2.84463954 -1.13265002
		 -2.84395576 -1.2064538 -2.84395576 -1.2071991 -2.84395576 -1.28982747 -2.84275842
		 -1.20803547 -2.8427465 -1.22629333 -2.81634569 -1.2282877 -2.8146565 -1.2693603 -2.81465101
		 -1.27135491 -2.8163228 -1.29066396 -2.84312916 -1.37410152 -2.84297132 -1.29149175
		 0.24565631 -1.30779541 0.21903509 -1.30853665 -2.81484151 -1.35633934 -2.81485224
		 -1.37418878 0.24576199 -1.35770464 0.21903026 -1.44866967 -2.84233904 -1.37488353
		 -2.84238982 -1.38699472 -2.81727219 -1.3887943 -2.81508517 -1.43522298 -2.81509852
		 -1.43702114 -2.81735778 -1.44942331 -2.84395576 -1.1319046 -2.84395576 -1.20644391
		 -2.84242415 -1.13265836 -2.8423748 -1.1461066 -2.81416726 -1.14790511 -2.81195736
		 -1.19067097 -2.81194258 -1.19247079 -2.81408119 -1.2072258 -2.84305286 -1.20714164
		 0.24597025 -1.22585821 0.21930063 -1.28984571 0.24594486 -1.27135301 0.21931964 -1.2906543
		 0.24624515 -1.37496984 0.24602932 -1.29211366 0.24598557 -1.30820346 0.21968818 -1.35686004
		 0.21795928 -1.3737694 0.24606925 -1.35729265 0.21968299 -1.37575209 0.24535006 -1.38760257
		 0.21996266 -1.38758278 -2.81572556 -1.45036316 0.24552256 -1.43806291 0.21993357
		 -1.13097084 0.2454834 -1.14515936 0.21676677 -1.19188261 -2.8125689 -1.20557237 0.2453512
		 -1.1919241 0.21681494 -1.2063663 0.24611634 -1.20756209 0.24632049 -1.22625029 0.22001529
		 -1.22670722 0.21830624 -1.22717357 -2.81515121 -1.28925085 0.24630082 -1.27095485
		 0.22002238 -1.29067838 0.24691314 -1.37515378 0.24666971 -1.29273546 0.24631494 -1.30918813
		 0.21995896 -1.30852067 0.21796495 -1.30887437 0.21874642 -1.35650337 0.21874124 -1.35629869
		 0.2199533 -1.37335038 0.24637651 -1.37647939 0.24562114 -1.38798535 0.2205373 -1.43721008
		 0.21877891 -1.43611896 -2.81575966 -1.14600563 0.21563274 -1.14700866 -2.81260467
		 -1.20483327 0.24564016 -1.19153786 0.21739817 -1.20616913 0.24678051 -1.20798206
		 0.24667192 -1.22719646 0.22031176 -1.22705984 0.21910304 -1.27060199 0.21831405 -1.27024972
		 0.21910757 -1.26999402 0.22031403 -1.28865695 0.24665666 -1.29070187 0.24757445 -1.37533867
		 0.24729997 -1.29071176 0.24955678 -1.37545955 0.24964494 -1.30974305 0.21907765 -1.35562897
		 0.21907282 -1.37720728 0.245893 -1.38891006 0.22077519 -1.43767786 0.22052127 -1.43688369
		 0.21954632 -1.14553714 0.21736789 -1.14632869 0.21640229 -1.19060552 0.21763939 -1.20409417
		 0.24592966 -1.20597184 0.24743444 -1.20584559 0.24960279 -1.22791791 0.21943879 -1.26938868
		 0.21944249 -1.29066396 0.29702491 -1.34784889 0.34566617 -1.39002228 0.29702491 -1.4519124
		 0.24971628 -1.44998455 0.24603677 -1.43674803 0.22076505 -1.43649423 0.21833122 -1.43620563
		 0.21917367 -1.43608022 0.21987337 -1.14645016 0.21761698 -1.14712405 0.2167297 -1.14700365
		 0.21603262 -1.14671409 0.21519101 -1.12951756 0.24964011 -1.1314168 0.24604797 -1.1913054
		 0.29702491 -1.23347878 0.34566617 -1.29066396 0.34368157 -1.40651047 0.34368157 -1.45662177
		 0.34566617 -1.47965491 0.29702491 -1.3892442 0.21988493 -1.19026446 0.21674687 -1.10167289
		 0.29702491 -1.12470579 0.34566617 -1.17481697 0.34368157 -1.29066396 0.40715945 -1.40503395
		 0.40715945 -1.5110178 0.34368157 -1.070309877 0.34368157 -1.17629349 0.40715945 -1.29066396
		 0.46865249 -1.37959206 0.46865249 -1.50820935 0.40715945 -1.073118448 0.40715945
		 -1.20173562 0.46865249 -1.4598155 0.46865249 -1.12151194 0.46865249 -0.9677338 0.33937323
		 -1.016488314 0.40401322 -1.019530535 0.33782965 -0.8953653 0.46865249 -0.97157079
		 0.46865249 -0.91897947 0.40401322 -0.99306905 0.26607901 -0.92060035 0.3377347 -0.81089067
		 0.46865249 -0.86493516 0.33937323 -0.81089067 0.40401322 -0.90666735 0.26607901 -0.96986854
		 0.19346809 -0.96890479 0.19278401 -0.89510065 0.19278401 -0.89446747 0.19345129 -0.81089067
		 0.33769935 -0.72641605 0.46865249 -0.75684607 0.33937323 -0.70280147 0.40401322 -0.96964997
		 0.19278401 -0.8954187 0.19074744 -0.96859097 0.19068706 -0.95587856 0.16551048 -0.95407981
		 0.16342431 -0.910438 0.16340977 -0.90863848 0.16542876 -0.89435524 0.19278401 -0.81089067
		 0.26607901 -0.8935293 0.19278401 -0.81171703 0.19278401 -0.81089067 0.19344532 -0.70118093
		 0.3377347;
	setAttr ".uvtk[2500:2749]" -0.65021032 0.46865249 -0.65404725 0.33937323 -0.60529304
		 0.40401322 -0.96912622 0.19123852 -0.89476967 0.19201112 -0.97059113 -2.89688396
		 -0.95685172 -2.87053418 -0.90922666 0.16400045 -0.89597219 -2.89680457 -0.90918887
		 -2.87058043 -0.8113848 0.19170415 -0.89386445 0.19170004 -0.87845773 0.15767699 -0.87699604
		 0.15627337 -0.82842588 0.15626889 -0.82695913 0.15766841 -0.81089067 0.19278401 -0.71511376
		 0.26607901 -0.81006426 0.19278401 -0.72825199 0.19278401 -0.72731388 0.19345129 -0.60225052
		 0.33782965 -0.89522123 -2.89702392 -0.95599931 -2.86943316 -0.95497632 0.1640352
		 -0.89667022 -2.89707208 -0.90956974 -2.87119055 -0.81033307 0.19126201 -0.89441872
		 -2.89627838 -0.87945241 -2.86357188 -0.81170845 -2.89625001 -0.82648379 -2.86359501
		 -0.72826183 0.19130349 -0.80971509 0.19072431 -0.79700869 0.16845292 -0.79501414
		 0.16640484 -0.74314404 0.1664089 -0.7411499 0.16847795 -0.72742581 0.19278401 -0.62871194
		 0.26607901 -0.72668064 0.19278401 -0.65287656 0.19278401 -0.65191245 0.19346809 -0.89536047
		 -2.89763975 -0.95647901 -2.87116265 -0.95567602 -2.87021017 -0.91048938 -2.87144279
		 -0.89736867 -2.89733934 -0.81087589 -2.89701509 -0.89399642 -2.89650655 -0.87901771
		 -2.86408544 -0.87865859 -2.86232901 -0.87793767 0.15668368 -0.8123163 -2.89647794
		 -0.82692611 -2.86410475 -0.72745323 0.19175935 -0.81007528 -2.89682317 -0.79696912
		 -2.87355065 -0.79623675 0.16700417 -0.74202991 0.16701496 -0.72736448 -2.89678979
		 -0.74060547 -2.8735466 -0.65288484 0.19117874 -0.72667074 0.19122916 -0.71251553
		 0.16207075 -0.71071601 0.1598987 -0.6683076 0.1599136 -0.66650897 0.16215777 -0.65213114
		 0.19278401 -0.89550251 -2.89824319 -0.95557857 -2.87142301 -0.95488411 -2.87053919
		 -0.95500165 -2.86984301 -0.95529222 -2.8690052 -0.97220075 -2.90090632 -0.89557117
		 -2.90088725 -0.97024006 -2.89742875 -0.81090689 -2.8976357 -0.89357376 -2.89673567
		 -0.8779676 -2.86429763 -0.87829947 -2.86308146 -0.8271783 -2.86233711 -0.82754046
		 -2.8630898 -0.82799345 -2.86431551 -0.81292439 -2.89670515 -0.72657889 -2.89716363
		 -0.80949581 -2.89709282 -0.79655325 -2.87416792 -0.74143976 -2.87243128 -0.72778916
		 -2.8970747 -0.74102557 -2.87416482 -0.72580469 -2.89656901 -0.71195602 -2.86711669
		 -0.71192729 0.16053426 -0.66555595 -2.86708593 -0.65134907 -2.89598823 -0.9108488
		 -2.87055516 -0.99988186 -2.94819641 -0.9768486 -2.99683785 -0.91024905 -2.94819641
		 -0.81093729 -2.89824271 -0.81097484 -2.90089512 -0.87740791 -2.86340237 -0.82843858
		 -2.86341143 -0.72640634 -2.89779091 -0.80891651 -2.89736247 -0.79554915 -2.87442327
		 -0.79625475 -2.87243581 -0.79589897 -2.87320948 -0.74179876 -2.87320542 -0.74204004
		 -2.87442112 -0.72821397 -2.89735961 -0.72508192 -2.89683461 -0.71157336 -2.86769509
		 -0.65134168 -2.89814234 -0.6659404 -2.86767673 -0.66641146 -2.86593604 -0.66741115
		 0.16057086 -1.031244397 -2.99485302 -0.92673749 -2.99485302 -0.86807591 -2.99683785
		 -0.81089067 -2.94819641 -0.72623122 -2.89840913 -0.72611678 -2.90083838 -0.79502356
		 -2.87353826 -0.74268079 -2.87353468 -0.72435951 -2.89709997 -0.71065021 -2.86793423
		 -0.66672891 -2.8667047 -0.65132415 -2.89955568 -0.66686869 -2.86792183 -1.028436065
		 -3.058330774 -0.92526108 -3.058330774 -0.81089067 -2.99485302 -0.7537055 -2.99683785
		 -0.71153224 -2.94819641 -0.66712523 -2.86548924 -0.66741431 -2.86633134 -0.66752398
		 -2.86703205 -0.98004264 -3.11982393 -0.8998192 -3.11982393 -0.81089067 -3.058330774
		 -0.69504374 -2.99485302 -0.65010643 -2.90014744 -0.64493263 -2.99683785 -0.62189949
		 -2.94819641 -0.71031362 -2.86704445 -0.81089067 -3.11982393 -0.69651997 -3.058330774
		 -0.59053665 -2.99485302 -0.72196215 -3.11982393 -0.59334505 -3.058330774 -0.64173877
		 -3.11982393 1.51266921 1.034441829 1.58278346 0.96496075 1.58636546 1.049945354 0.17376691
		 0.94808412 0.24388164 0.88658482 0.24746364 0.97757417 0.73164284 0.94728887 0.80175745
		 0.8997913 0.80533922 0.98787838 2.55969882 3.040161848 2.62981367 3.011315346 2.6333952
		 3.087878227 1.9619832 0.96496075 2.032097816 1.049532413 1.95896983 1.049851775 1.16861141
		 1.0081597567 1.23872626 1.083722353 1.16553438 1.084047079 1.80951595 0.98046499
		 1.73940134 1.049945712 1.73581982 0.96496105 -0.60050762 1.43587649 -0.67062223 1.49737597
		 -0.67420399 1.40638673 -0.60050762 1.56230068 -0.67062223 1.49737597 -0.60050762
		 1.43587649 -0.530393 1.52117884 -0.530393 1.52117884 -0.60050762 1.56230068 0.9169144
		 0.94038063 0.84679997 0.98787838 0.84321821 0.8997913 1.024907827 0.98536927 0.95479351
		 0.90006721 1.027826786 0.8997913 2.089294434 1.12041807 2.019179583 1.14926445 2.01559782
		 1.072702527 2.14065981 1.049852014 2.070544958 0.96527994 2.14367342 0.96496075 1.45228016
		 1.084047437 1.38216531 1.0084848404 1.45535743 1.0081601143 2.25524855 0.96527994
		 2.1851337 1.049851775 2.18212008 0.96496075 1.34704161 1.0084848404 1.27692688 1.084047079
		 1.27385008 1.0081597567 2.29369497 1.049532413 2.36380959 0.96496075 2.36682367 1.049852014
		 1.057218432 1.08372283 1.12733316 1.0081601143 1.13041079 1.084047079 -0.54904938
		 -0.057554543 -0.55056858 -3.11956143 -0.5390588 -3.11957335 -0.53753966 -0.057565928
		 -0.54995167 -0.057252079 -0.55147117 -3.11982393 -0.53663719 -0.057567209 -0.53815627
		 -3.11957455 -0.40642357 -0.057816446 -0.40513104 -3.11982393 -0.39362174 -3.11981225
		 -0.39491409 -0.057804137 -1.95680547 1.35503101 -1.95758104 1.35526729 -1.9684732
		 1.32241154 -1.96816421 1.3218745 -1.95616174 1.35566783 -1.95649195 1.35627413 -1.95835614
		 1.35550356 -1.96921897 1.32263315 -1.95682645 1.35687077 -1.7644099 1.29298079 -1.76362085
		 1.29319513 -1.77508974 1.33108616 -1.77538252 1.33013463 -1.77608919 1.32973921 -1.76519859
		 1.29276669 -2.015256405 1.34734714 -2.01600647 1.34704804 -2.0053613186 1.32187402
		 -2.0050625801 1.32250893 -2.016640663 1.34743047 -2.0163517 1.34806812 -2.004342556
		 1.32277048 -2.014506102 1.34764707 -2.016057491 1.34869719 0.45529795 -0.081708431
		 0.45449471 -0.082760841 0.45312554 -3.11842489 0.45396119 -3.11982393;
	setAttr ".uvtk[2750:2999]" 0.45500892 -0.081040978 0.4542371 -0.081975222 0.45364672
		 -0.083171785 0.45228904 -3.11784482 0.45341969 -0.082337618 0.44451004 -0.083163947
		 0.44315529 -3.11783266 0.44426543 -0.082326978 0.44367325 -0.083163023 0.44231856
		 -3.11783242 0.44367361 -0.082480431 0.44283718 -0.083162069 0.44148207 -3.11783147
		 0.44308215 -0.082325846 0.40905911 -0.083133131 0.40807515 -3.11780214 0.40930516
		 -0.082297117 1.9617759 -0.096559465 1.96164227 -0.095718563 1.95011425 -0.095705718
		 1.95027089 -0.096542478 1.96269417 -0.096120536 1.9625268 -0.095349133 1.94936883
		 -0.096541375 1.94943583 -0.095858604 1.96022403 -3.11911988 1.94871449 -3.11910772
		 1.96112657 -3.11982393 1.94781196 -3.11910653 2.10585403 -3.11980748 2.10567784 -3.11895943
		 2.094183445 -3.11898828 2.09434104 -3.11982393 2.1043694 -0.096410304 2.092859983
		 -0.096422255 2.76642036 -0.11226672 2.76639366 -0.1114206 2.75361967 -0.11140564
		 2.75367355 -0.11224431 2.76731634 -0.11180687 2.76726818 -0.11104494 2.75279331 -0.11224169
		 2.75292063 -0.11155859 2.76438856 -3.11938238 2.75203371 -3.11937094 2.76552391 -3.11982393
		 2.75115418 -3.11936855 2.76048803 -0.08818242 2.76041555 -0.087346584 2.74765944
		 -0.087359637 2.74771404 -0.088194758 2.75885868 2.91978073 2.74610043 2.91976881
		 2.74688768 -0.087359101 2.74706316 -0.088040739 -0.1910696 -0.072262377 -0.19194953
		 -0.072802275 -0.19051173 -3.11885858 -0.18948659 -3.11956215 -0.20308375 -3.11886716
		 -0.20470801 -0.072813869 -0.18987022 -3.11982393 -0.2031375 -3.1197052 -0.20396402
		 -3.11886954 -0.20558828 -0.072815925 -0.20383652 -3.11955094 0.16373345 -0.077437699
		 0.16389877 -0.076605529 0.15297064 -0.076596797 0.15281263 -0.077432424 0.16236776
		 -3.11982393 0.15145198 -3.1198132 0.0196895 -3.11947083 0.019834191 -3.11864352 0.008906275
		 -3.1186409 0.008749634 -3.11947799 0.020737827 -3.11902356 0.020580977 -3.11982393
		 0.0182226 -0.076249301 0.0073068142 -0.076260358 0.0080039501 -3.11864185 0.0080711544
		 -3.11932468 0.019125104 -0.075728446 0.0064044893 -0.076261848 -0.34201789 -0.065304995
		 -0.34285396 -0.066296548 -0.34151009 -3.11890364 -0.3406733 -3.11982393 -0.34369037
		 -0.06670785 -0.3423467 -3.11852312 -0.34896314 -0.066714942 -0.34761962 -3.11853027
		 -0.34979972 -0.066716045 -0.34845623 -3.11853123 -0.35063615 -0.06671682 -0.34929246
		 -3.1185317 2.47221494 -3.11982393 2.47299266 -3.11858249 2.47449517 -0.10884884 2.47386312
		 -0.10784081 2.47385526 -3.1181004 2.47539973 -0.109267 2.47407126 -3.11895227 2.47323966
		 -3.11933565 2.4765625 -3.1181252 2.4778595 -0.10927016 2.47680736 -3.11896181 2.47739887
		 -3.11812735 2.47869635 -0.1092715 2.47739887 -3.11880946 2.47823524 -3.11812711 2.4795332
		 -0.10927206 2.47799158 -3.118963 2.5105083 -3.11815739 2.51145077 -0.1093021 2.51026154
		 -3.11899376 0.60978293 -3.11864328 0.60982674 -3.11947036 0.62261051 -3.11947703
		 0.62255663 -3.11863923 0.60891038 -3.11901927 0.60897249 -3.11982393 0.62343723 -3.1186409
		 0.62330872 -3.11932468 0.6114369 -0.083682418 0.62419516 -0.083693802 0.61055684
		 -0.083002836 0.62507522 -0.083696216 0.76511556 -0.084046841 0.76519305 -0.084892035
		 0.77793652 -0.08486554 0.77788204 -0.084030986 0.76673651 -3.11982393 0.77949476
		 -3.11981249 0.77870876 -0.08486554 0.77853215 -0.084184259 2.80701399 -3.11897588
		 2.80694151 -3.11981201 2.81971502 -3.11982393 2.8197701 -3.11898971 2.82054186 -3.11898899
		 2.82036543 -3.11967087 2.80854797 -0.11106735 2.82130623 -0.11107934 2.55124164 -0.11064017
		 2.55121279 -0.11148462 2.56396294 -0.11146465 2.5640173 -0.11062655 2.55031776 -0.11103076
		 2.55037451 -0.11026588 2.55322027 -3.11938453 2.56557894 -3.11937332 2.56484318 -0.11146262
		 2.56471539 -0.1107789 2.55208707 -3.11982393 2.56645846 -3.11937094 2.56824875 -0.086567461
		 2.5680778 -0.087403893 2.57959914 -0.087415665 2.57975793 -0.086579621 2.56985664
		 2.88783479 2.5810051 2.88782382 2.69723034 2.88873601 2.69709587 2.88790035 2.70860696
		 2.88791037 2.70876336 2.88874793 2.69613528 2.88812685 2.6963203 2.88901472 2.69893932
		 -0.086503267 2.71007419 -0.086491674 2.70950913 2.88791251 2.70944214 2.88859487
		 2.6978662 -0.086952448 2.71097636 -0.086490571 2.69557381 2.88890958 2.69729447 -0.088035136
		 2.15030384 -0.099847615 2.14943957 -0.099389464 2.15076113 -3.11809826 2.1515975
		 -3.11738276 2.15052366 -0.099002272 2.14969993 -0.098626047 2.14864779 -0.098206341
		 2.14992571 -3.11982393 2.16073108 -3.11737108 2.15943003 -0.099824131 2.15967441
		 -0.09898752 2.1602664 -0.099822968 2.16156793 -3.11736989 2.1602664 -0.099140406
		 2.16110325 -0.099822253 2.16240382 -3.11736917 2.16085815 -0.09898603 2.19442368
		 -3.11733913 2.19347763 -0.099792182 2.19323277 -0.098956168 1.85906577 -3.11898804
		 1.85922408 -3.11982393 1.90147734 -3.11980915 1.9013207 -3.11897326 1.90222323 -3.11897302
		 1.90215623 -3.11965537 1.90034282 -0.093563288 1.85855222 -0.09357807 1.90124583
		 -0.093562573 0.31958652 -3.11898804 0.31964225 -3.11982393 0.37139058 -3.11981988
		 0.37133747 -3.11898398 0.3188144 -3.11898804 0.31899101 -3.11966991 0.37221801 -3.11898375
		 0.37208951 -3.11966634 0.37077218 -0.080573499 0.31958652 -0.080578148 0.3716526
		 -0.080573499 2.33920574 -3.11898398 2.33915281 -3.11981988 2.38756561 -3.11982393
		 2.3876214 -3.11898804 2.3383255 -3.11898422 2.33845377 -3.11966658 2.38839388 -3.11898899
		 2.38821745 -3.11967087 2.3876214 -0.10084686 2.3397367 -0.10084274 2.33885574 -0.10084257
		 1.36852396 -3.11897373 1.36836755 -3.1198101 1.41186643 -3.11982393 1.41202486 -3.11898828
		 1.36762166 -3.11897326 1.36768889 -3.11965585 1.41255355 -0.086557597 1.36952877
		 -0.086543053 1.36862659 -0.086542845 1.50304139 -0.087988287 1.50298643 -0.087152243
		 1.45770788 -0.087156892 1.45776176 -0.087992936 1.50381315 -0.087988824 1.50363672
		 -0.087305874 1.45688176 -0.087993503 1.4570092 -0.08731091 1.45825934 -3.11982369
		 1.50304139 -3.11981869 1.45737886 -3.11982393 1.080115318 -0.086372763 1.079957008
		 -0.08553654 1.033641696 -0.085550159;
	setAttr ".uvtk[3000:3072]" 1.033798575 -0.086386025 1.032896161 -0.08638674 1.032963157
		 -0.085704178 1.034865379 -3.11982369 1.080676198 -3.11981058 1.033962846 -3.11982393
		 1.75663781 -0.09266901 1.75679541 -0.091832787 1.71418035 -0.091818064 1.71402204
		 -0.092654288 1.75754094 -0.092669576 1.75747347 -0.091986805 1.71350396 -3.11980891
		 1.75565267 -3.11982369 1.75655532 -3.11982393 1.33112955 -0.087262183 1.3311832 -0.086426169
		 1.29034567 -0.086420566 1.29029047 -0.087256938 1.33200991 -0.08726275 1.33188188
		 -0.086580187 1.28951836 -0.087257504 1.28969455 -0.086574614 1.29029047 -3.11981821
		 1.33067846 -3.11982369 1.3315587 -3.11982393 -0.036625147 -3.11982393 -0.035079628
		 -0.072586298 -0.047837973 -0.072574139 -0.049383104 -3.11981225 -2.41891313 1.15230238
		 -2.41999507 1.15175986 -2.42034221 1.15044737 -2.3094759 1.29314256 -2.31032276 1.29252291
		 -2.31039429 1.29102361 -2.52934217 1.15194404 -2.52872229 1.15044737 -2.52847791
		 1.15150678 -2.16467929 1.29331303 -2.16325092 1.29102409 -2.16359735 1.29264331 -2.49335432
		 1.15058184 -2.4925549 1.15044737 -2.49225259 1.15119565 -2.49276495 1.15213704 -0.015910417
		 0.94968563 0.0039887726 0.88658482 0.026008517 0.98014212 1.022095203 1.0082201958
		 1.020456553 1.077714682 0.97728926 1.046352029 0.89736027 1.08022368 0.89899838 1.010729074
		 0.94216561 1.042091966 0.78066832 1.010729074 0.78230673 1.080223322 0.7375015 1.042091846
		 0.81906915 1.08022368 0.81743073 1.010729074 0.86223638 1.048860669 -2.45671439 1.15216625
		 -2.45712829 1.15044737 -2.45640397 1.15072739 -2.45608759 1.151963 -2.45567894 1.15100765
		 -2.45546651 1.15176272 -2.38262367 1.15239811 -2.38332796 1.15193653 -2.38355875
		 1.15119183 -2.38235235 1.15195632 -2.38378954 1.15044737 -2.38207555 1.15151;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "E929285E-4041-6D43-1865-B4A2156D40F0";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 3;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
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
connectAttr "polyTweakUV2.out" "ColumnShape.i";
connectAttr "polyTweakUV2.uvtk[0]" "ColumnShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCylinder1.out" "polySplitRing1.ip";
connectAttr "ColumnShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "ColumnShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "ColumnShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "ColumnShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "ColumnShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "ColumnShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "ColumnShape.wm" "polySplitRing7.mp";
connectAttr "polyTweak1.out" "polyExtrudeVertex1.ip";
connectAttr "ColumnShape.wm" "polyExtrudeVertex1.mp";
connectAttr "polySplitRing7.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeVertex2.ip";
connectAttr "ColumnShape.wm" "polyExtrudeVertex2.mp";
connectAttr "polyExtrudeVertex1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeVertex3.ip";
connectAttr "ColumnShape.wm" "polyExtrudeVertex3.mp";
connectAttr "polyExtrudeVertex2.out" "polyTweak3.ip";
connectAttr "polyExtrudeVertex3.out" "polyExtrudeVertex4.ip";
connectAttr "ColumnShape.wm" "polyExtrudeVertex4.mp";
connectAttr "polyExtrudeVertex4.out" "polyExtrudeFace1.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyExtrudeFace18.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace18.out" "polyExtrudeFace19.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polyExtrudeFace20.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace20.out" "polyExtrudeFace21.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyExtrudeFace22.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "polyExtrudeFace23.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace23.out" "polyExtrudeFace24.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace24.out" "polyExtrudeFace25.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace25.out" "polyExtrudeFace26.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace26.out" "polyExtrudeFace27.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace27.out" "polyExtrudeFace28.ip";
connectAttr "ColumnShape.wm" "polyExtrudeFace28.mp";
connectAttr "polyTweak4.out" "polyBevel1.ip";
connectAttr "ColumnShape.wm" "polyBevel1.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak4.ip";
connectAttr "polyBevel1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyAutoProj1.ip";
connectAttr "ColumnShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV2.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ColumnShape.iog" ":initialShadingGroup.dsm" -na;
// End of BankColumn.ma
