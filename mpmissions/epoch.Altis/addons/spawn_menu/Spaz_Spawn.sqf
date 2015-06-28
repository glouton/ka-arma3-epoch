#include "spaz_spawn_coords.hpp"

Altis_Map		= "addons\spawn_menu\images\map1.jpg";
Statis_Map		= "addons\spawn_menu\images\map2.jpg";
Bornholm_Map	= "addons\spawn_menu\images\map3.jpg";
Chernarus_Map	= "addons\spawn_menu\images\map4.jpg";

/* ******************************DO NOT TOUCH BELOW********************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ******************************DO NOT TOUCH BELOW********************************* */

disableSerialization;

switch (KA_SPAZ_SPAWN_MAP_NAME) do {
	/* Arma 3 Maps */
	case "altis":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Altis_Map;};
	case "stratis":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Statis_Map;};
	case "bornholm":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Bornholm_Map;};
	case "chernarus":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Chernarus_Map;};
	default {((findDisplay 8332) displayCtrl 1200) ctrlSetText Bornholm_Map;};
};

SPAZ_SPAWN_N = {

	switch (KA_SPAZ_SPAWN_MAP_NAME) do {
		case "altis":{player setPos Altis_Spawn_North,player setDir 0;};
		case "stratis":{player setPos Statis_Spawn_North,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_North,player setDir 317.342;};
		case "chernarus":{player setPos Chernarus_Spawn_North,player setDir 0;};
		default {player setPos Bornholm_Spawn_North,player setDir 317.342;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_E = {
	switch (KA_SPAZ_SPAWN_MAP_NAME) do {
		case "altis":{player setPos Altis_Spawn_East,player setDir 0;};
		case "stratis":{player setPos Statis_Spawn_East,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_East,player setDir 278.168;};
		case "chernarus":{player setPos Chernarus_Spawn_East,player setDir 0;};
		default {player setPos Bornholm_Spawn_East,player setDir 278.168;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_S = {
	switch (KA_SPAZ_SPAWN_MAP_NAME) do {
		case "altis":{player setPos Altis_Spawn_South,player setDir 0;};
		case "stratis":{player setPos Stratis_Spawn_South,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_South,player setDir 43.1966;};
		case "chernarus":{player setPos Chernarus_Spawn_South,player setDir 0;};
		default {player setPos Bornholm_Spawn_South,player setDir 43.1966;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_W = {
	switch (KA_SPAZ_SPAWN_MAP_NAME) do {
		case "altis":{player setPos Altis_Spawn_West,player setDir 0;};
		case "stratis":{player setPos Stratis_Spawn_West,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_West,player setDir 124.737;};
		case "chernarus":{player setPos Chernarus_Spawn_West,player setDir 0;};
		default {player setPos Bornholm_Spawn_West,player setDir 124.737;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_C = {
	switch (KA_SPAZ_SPAWN_MAP_NAME) do {
		case "altis":{player setPos Altis_Spawn_Central,player setDir 0;};
		case "stratis":{player setPos Stratis_Spawn_Central,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_Central,player setDir 317.342;};
		case "chernarus":{player setPos Chernarus_Spawn_Central,player setDir 0;};
		default {player setPos Bornholm_Spawn_Central,player setDir 317.342;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_R = {
	if (!isDedicated) then {
		if (isNil "inSpawnPoint") then {
		inSpawnPoint = false;
		};
		 
		while {true} do {
			waitUntil { inSpawnPoint };
			titleText [format["Entering Random Spawn"],"PLAIN DOWN"]; titleFadeOut 4; 
			thePlayer = vehicle player;
			systemChat "Calculating spawn point...please be patient";
			_randPos = [getMarkerPos "center",1500,10000,1,0,20,1] call BIS_fnc_findSafePos; //spawn on shore only
			_posX = _randPos select 0;
			_posY = __randPos select 1;
			_spawnpoint = [_posX,_posY,0.1];
			sleep 1;
			systemChat "Spawn point selected. Teleporting...";
			sleep 1;
			thePlayer setPos _spawnpoint;
			waitUntil { !inSpawnPoint };
			cutText ["","BLACK IN"];
			titleText [format["Good Luck"],"PLAIN DOWN"]; titleFadeOut 4;
			(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];		 
		};
	};	
};