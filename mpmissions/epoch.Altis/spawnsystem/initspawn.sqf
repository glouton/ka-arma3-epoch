/*
	SPAWN SYSTEM BY KROSAVER
*/
createDialog "spawn_dialog";
[] execVM "spawnsystem\spawn.sqf";
noesckey = (findDisplay 8332) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];