//Maya ASCII 2024 scene
//Name: BankColumn.ma
//Last modified: Sun, Sep 13, 2026 10:00:49 PM
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
fileInfo "UUID" "D2CFD6BA-A642-7193-C217-4B8527FA2724";
createNode transform -s -n "persp";
	rename -uid "A1FECC86-8044-7AA7-0333-F9A9444DBC72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.306318842249945 6.4883584694527512 -0.043358750109848361 ;
	setAttr ".r" -type "double3" -9.338352881976796 1170.9999999998229 5.0888874903416268e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "21A0754F-6B4B-8F5D-1C3E-E291657B7F19";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 16.239417047292203;
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
	setAttr ".pv" -type "double2" 0.54374986886978149 0.50526836514472961 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "15A8F49D-1549-2BF3-20C1-349163E013BC";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9A65845A-9C48-3B2E-7BF0-F1ACC9D3DE6E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "68B65B68-1B46-1C65-5C1E-B0A1E3C9BA91";
createNode displayLayerManager -n "layerManager";
	rename -uid "6CBD98B9-3F46-1608-EBBF-B9BC93152D12";
createNode displayLayer -n "defaultLayer";
	rename -uid "30DFCEB3-164D-7247-2AB0-74B069056E87";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9B32FAFA-3646-17F9-ACD5-FCA5FA7C7CEE";
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
	setAttr -s 43 ".tk";
	setAttr ".tk[182]" -type "float3" -9.8824348 0 5.0353513 ;
	setAttr ".tk[183]" -type "float3" -9.8824348 0 5.0353513 ;
	setAttr ".tk[184]" -type "float3" -7.8427434 0 7.8427424 ;
	setAttr ".tk[185]" -type "float3" -7.8427434 0 7.8427424 ;
	setAttr ".tk[186]" -type "float3" -5.0353522 0 9.8824339 ;
	setAttr ".tk[187]" -type "float3" -5.0353522 0 9.8824339 ;
	setAttr ".tk[188]" -type "float3" -1.7350636 0 10.954765 ;
	setAttr ".tk[189]" -type "float3" -1.7350636 0 10.954765 ;
	setAttr ".tk[190]" -type "float3" 1.7350641 0 10.954765 ;
	setAttr ".tk[191]" -type "float3" 1.7350641 0 10.954765 ;
	setAttr ".tk[192]" -type "float3" 5.0353513 0 9.882431 ;
	setAttr ".tk[193]" -type "float3" 5.0353513 0 9.882431 ;
	setAttr ".tk[194]" -type "float3" 7.8427439 0 7.8427405 ;
	setAttr ".tk[195]" -type "float3" 7.8427439 0 7.8427405 ;
	setAttr ".tk[196]" -type "float3" 9.8824339 0 5.0353484 ;
	setAttr ".tk[197]" -type "float3" 9.8824339 0 5.0353484 ;
	setAttr ".tk[198]" -type "float3" 10.954766 0 1.7350612 ;
	setAttr ".tk[199]" -type "float3" 10.954766 0 1.7350612 ;
	setAttr ".tk[200]" -type "float3" 10.954766 0 -1.7350664 ;
	setAttr ".tk[201]" -type "float3" 10.954766 0 -1.7350664 ;
	setAttr ".tk[202]" -type "float3" 9.8824339 0 -5.0353527 ;
	setAttr ".tk[203]" -type "float3" 9.8824339 0 -5.0353527 ;
	setAttr ".tk[204]" -type "float3" 7.8427415 0 -7.8427439 ;
	setAttr ".tk[205]" -type "float3" 7.8427415 0 -7.8427439 ;
	setAttr ".tk[206]" -type "float3" 5.0353513 0 -9.8824329 ;
	setAttr ".tk[207]" -type "float3" 5.0353513 0 -9.8824329 ;
	setAttr ".tk[208]" -type "float3" 1.7350631 0 -10.954765 ;
	setAttr ".tk[209]" -type "float3" 1.7350633 0 -10.954765 ;
	setAttr ".tk[210]" -type "float3" -1.7350625 0 -10.954765 ;
	setAttr ".tk[211]" -type "float3" -1.7350625 0 -10.954765 ;
	setAttr ".tk[212]" -type "float3" -5.0353498 0 -9.8824329 ;
	setAttr ".tk[213]" -type "float3" -5.0353498 0 -9.8824329 ;
	setAttr ".tk[214]" -type "float3" -7.8427405 0 -7.8427415 ;
	setAttr ".tk[215]" -type "float3" -7.8427405 0 -7.8427415 ;
	setAttr ".tk[216]" -type "float3" -9.882431 0 -5.0353513 ;
	setAttr ".tk[217]" -type "float3" -9.882431 0 -5.0353513 ;
	setAttr ".tk[218]" -type "float3" -10.954761 0 -1.7350663 ;
	setAttr ".tk[219]" -type "float3" -10.954761 0 -1.7350663 ;
	setAttr ".tk[220]" -type "float3" -10.954766 0 1.7350624 ;
	setAttr ".tk[221]" -type "float3" -10.954766 0 1.7350624 ;
createNode polyExtrudeVertex -n "polyExtrudeVertex3";
	rename -uid "82AC7B93-E24C-9729-7ABB-CBAB2281AFC8";
	setAttr ".ics" -type "componentList" 1 "vtx[82:101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -175.27618780221701 372.60634440022881 49.075791436113377 1;
	setAttr ".l" 1;
	setAttr ".w" 0.5;
createNode polyTweak -n "polyTweak3";
	rename -uid "805A47BF-0049-CF51-D901-A2B9DE8D8D0E";
	setAttr ".uopa" yes;
	setAttr -s 62 ".tk";
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
	setAttr -s 47 ".tk";
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
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "8B2D7195-1A41-87E1-F769-819C0F7E9B1B";
	setAttr ".sst" -type "string" "";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyBevel1.out" "ColumnShape.i";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ColumnShape.iog" ":initialShadingGroup.dsm" -na;
// End of BankColumn.ma
