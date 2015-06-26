#include "A3EAI_Client\A3EAI_initclient.sqf";

// Status Bar
if(hasInterface) then{[] execVM "addons\status_bar\init_statusBar.sqf"};

//  A3 Epoch Spawn Menu: Map Markers
if(hasInterface) then{[] execVM "addons\spawn_menu\spaz_spawn_markers.sqf"};

// cmEarplugs
call compile preProcessFileLineNumbers "addons\cmEarplugs\config.sqf";

// sem
if(hasInterface)then{execVM "semClient.sqf"};

// Supply Drop Alert Event
"SDROP_Alert" addPublicVariableEventHandler {
	hint parseText format["%1", _this select 1];
};
