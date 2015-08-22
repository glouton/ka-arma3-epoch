#include "A3EAI_Client\A3EAI_initclient.sqf";

// cmEarplugs
call compile preProcessFileLineNumbers "addons\cmEarplugs\config.sqf";

// Supply Drop Alert Event
"SDROP_Alert" addPublicVariableEventHandler {
	hint parseText format["%1", _this select 1];
};

/**
 * hasInterface returns true if the computer has an interface (a real player). False for a dedicated server or for a headless client.
 * run on all player clients incl. player host
 * see https://community.bistudio.com/wiki/hasInterface
 */
if(hasInterface) then{
	// Status Bar
	[] execVM "addons\status_bar\init_statusBar.sqf";
	//  A3 Epoch Spawn Menu: Map Markers
	[] execVM "addons\spawn_menu\spaz_spawn_markers.sqf";
	[] execVM "drinkdamage.sqf"; 
	// sem
	execVM "semClient.sqf";
};
