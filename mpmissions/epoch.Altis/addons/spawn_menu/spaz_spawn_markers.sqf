#include "spaz_spawn_coords.hpp"

#define KA_SPAZ_SPAWN_MARKER_SHAPE		"ICON"
#define KA_SPAZ_SPAWN_MARKER_TYPE		"respawn_inf"
#define KA_SPAZ_SPAWN_MARKER_COLOR		"ColorRed"

private [
	"_markerNorthPos", "_markerSouthPos", "_markerEastPos", "_markerWestPos", "_markerCentralPos", "_markerSouthWestPos",
	"_markerNorth", "_markerSouth", "_markerEast", "_markerWest", "_markerCentral", "_markerSouthWest"
];

switch (KA_SPAZ_SPAWN_MAP_NAME) do {
	/* Arma 3 Maps */
	case "altis":{
		_markerNorthPos = Altis_Spawn_North;
		_markerSouthPos = Altis_Spawn_South;
		_markerEastPos = Altis_Spawn_East;
		_markerWestPos = Altis_Spawn_West;
		_markerCentralPos = Altis_Spawn_Central;
		_markerSouthWestPos = Altis_Spawn_South_West;
	};
	case "stratis":{
		_markerNorthPos = Statis_Spawn_North;
		_markerSouthPos = Statis_Spawn_South;
		_markerEastPos = Statis_Spawn_East;
		_markerWestPos = Statis_Spawn_West;
		_markerCentralPos = Statis_Spawn_Central;
		_markerSouthWestPos = Statis_Spawn_South_West;
	};
	case "bornholm":{
		_markerNorthPos = Bornholm_Spawn_North;
		_markerSouthPos = Bornholm_Spawn_South;
		_markerEastPos = Bornholm_Spawn_East;
		_markerWestPos = Bornholm_Spawn_West;
		_markerCentralPos = Bornholm_Spawn_Central;
		_markerSouthWestPos = Bornholm_Spawn_South_West;
	};
	case "chernarus":{
		_markerNorthPos = Chernarus_Spawn_North;
		_markerSouthPos = Chernarus_Spawn_South;
		_markerEastPos = Chernarus_Spawn_East;
		_markerWestPos = Chernarus_Spawn_West;
		_markerCentralPos = Chernarus_Spawn_Central;
		_markerSouthWestPos = Chernarus_Spawn_South_West;
	};
	default {
		_markerNorthPos = Altis_Spawn_North;
		_markerSouthPos = Altis_Spawn_South;
		_markerEastPos = Altis_Spawn_East;
		_markerWestPos = Altis_Spawn_West;
		_markerCentralPos = Altis_Spawn_Central;
		_markerSouthWestPos = Altis_Spawn_South_West;
	};
};

_markerNorth = createMarker ["MarkerNorth",_markerNorthPos];
_markerNorth setMarkerShape KA_SPAZ_SPAWN_MARKER_SHAPE;
_markerNorth setMarkerType KA_SPAZ_SPAWN_MARKER_TYPE;
"MarkerNorth" setMarkerColor KA_SPAZ_SPAWN_MARKER_COLOR;

_markerSouth = createMarker ["MarkerSouth",_markerSouthPos];
_markerSouth setMarkerShape KA_SPAZ_SPAWN_MARKER_SHAPE;
_markerSouth setMarkerType KA_SPAZ_SPAWN_MARKER_TYPE;
"MarkerSouth" setMarkerColor KA_SPAZ_SPAWN_MARKER_COLOR;

_markerEast = createMarker ["MarkerEast",_markerEastPos];
_markerEast setMarkerShape KA_SPAZ_SPAWN_MARKER_SHAPE;
_markerEast setMarkerType KA_SPAZ_SPAWN_MARKER_TYPE;
"MarkerEast" setMarkerColor KA_SPAZ_SPAWN_MARKER_COLOR;

_markerWest = createMarker ["MarkerWest",_markerWestPos];
_markerWest setMarkerShape KA_SPAZ_SPAWN_MARKER_SHAPE;
_markerWest setMarkerType KA_SPAZ_SPAWN_MARKER_TYPE;
"MarkerWest" setMarkerColor KA_SPAZ_SPAWN_MARKER_COLOR;

_markerCentral = createMarker ["MarkerCentral",_markerCentralPos];
_markerCentral setMarkerShape KA_SPAZ_SPAWN_MARKER_SHAPE;
_markerCentral setMarkerType KA_SPAZ_SPAWN_MARKER_TYPE;
"MarkerCentral" setMarkerColor KA_SPAZ_SPAWN_MARKER_COLOR;

_markerSouthWest = createMarker ["MarkerSouthWest",_markerSouthWestPos];
_markerSouthWest setMarkerShape KA_SPAZ_SPAWN_MARKER_SHAPE;
_markerSouthWest setMarkerType KA_SPAZ_SPAWN_MARKER_TYPE;
"MarkerSouthWest" setMarkerColor KA_SPAZ_SPAWN_MARKER_COLOR;
