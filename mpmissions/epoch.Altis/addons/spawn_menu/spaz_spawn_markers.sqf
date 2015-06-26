#include "spaz_spawn_coords.hpp"

private ["_mapName"];
private ["_markerNorthPos"];
private ["_markerSouthPos"];
private ["_markerEastPos"];
private ["_markerWestPos"];
private ["_markerCentralPos"];

_mapName = toLower format ["%1", worldName];

switch (_mapName) do {
	/* Arma 3 Maps */
	case "altis":{
		_markerNorthPos = Altis_Spawn_North;
		_markerSouthPos = Altis_Spawn_South;
		_markerEastPos = Altis_Spawn_East;
		_markerWestPos = Altis_Spawn_West;
		_markerCentralPos = Altis_Spawn_Central;
	};
	case "stratis":{
		_markerNorthPos = Statis_Spawn_North;
		_markerSouthPos = Statis_Spawn_South;
		_markerEastPos = Statis_Spawn_East;
		_markerWestPos = Statis_Spawn_West;
		_markerCentralPos = Statis_Spawn_Central;
	};
	case "bornholm":{
		_markerNorthPos = Bornholm_Spawn_North;
		_markerSouthPos = Bornholm_Spawn_South;
		_markerEastPos = Bornholm_Spawn_East;
		_markerWestPos = Bornholm_Spawn_West;
		_markerCentralPos = Bornholm_Spawn_Central;
	};
	case "chernarus":{
		_markerNorthPos = Chernarus_Spawn_North;
		_markerSouthPos = Chernarus_Spawn_South;
		_markerEastPos = Chernarus_Spawn_East;
		_markerWestPos = Chernarus_Spawn_West;
		_markerCentralPos = Chernarus_Spawn_Central;
	};
	default {
		_markerNorthPos = Altis_Spawn_North;
		_markerSouthPos = Altis_Spawn_South;
		_markerEastPos = Altis_Spawn_East;
		_markerWestPos = Altis_Spawn_West;
		_markerCentralPos = Altis_Spawn_Central;
	};
};

_markerShape = "ICON";
_markerType = "respawn_inf";
_markerColor = "ColorRed";

_markerNorth = createMarker ["MarkerNorth",_markerNorthPos];
_markerNorth setMarkerShape _markerShape;
_markerNorth setMarkerType _markerType;
"MarkerNorth" setMarkerColor _markerColor;

_markerSouth = createMarker ["MarkerSouth",_markerSouthPos];
_markerSouth setMarkerShape _markerShape;
_markerSouth setMarkerType _markerType;
"MarkerSouth" setMarkerColor _markerColor;

_markerEast = createMarker ["MarkerEast",_markerEastPos];
_markerEast setMarkerShape _markerShape;
_markerEast setMarkerType _markerType;
"MarkerEast" setMarkerColor _markerColor;

_markerWest = createMarker ["MarkerWest",_markerWestPos];
_markerWest setMarkerShape _markerShape;
_markerWest setMarkerType _markerType;
"MarkerWest" setMarkerColor _markerColor;

_markerCentral = createMarker ["MarkerCentral",_markerCentralPos];
_markerCentral setMarkerShape _markerShape;
_markerCentral setMarkerType _markerType;
"MarkerCentral" setMarkerColor _markerColor;