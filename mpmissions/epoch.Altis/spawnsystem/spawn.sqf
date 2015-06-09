/*
	SPAWN SYSTEM BY KROSAVER
*/
disableSerialization;
((findDisplay 666) displayCtrl 1200) ctrlSetText "spawnsystem\map.jpg";

_pos = 0;

loadoutCIV = {
	player addBackpack "B_Parachute";
	player addItem "FAK";
};

pathira = [14305.433,19619.625];
ppanagia = [20425.24,9290.9766];
pparsof = [22573.434,18836.17];
pkavala = [5515.2236,12835.379];
pgalati = [10349.648,18654.902];
pcenter = [13337.743,14517.778];
pwest = [6252.9629,16864.871];
peast = [18465.975,14288.073];


ATHIRA = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos pathira,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};

PANAGIA = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos ppanagia,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};

PAROSSOFIA = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos pparsof,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};

KAVALA = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos pkavala,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};

GALATI = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos pgalati,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};

TRA_CENTER = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos pcenter,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};

TRA_WEST = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos pwest,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};
TRA_EAST = {
	_dir = random 359;
	call loadoutCIV;
	player SetPos peast,player SetDir _dir;
	player setPos (player modelToWorld [0,0,1500]);
	cutText ["","BLACK IN"];
	(findDisplay 666) displayRemoveEventHandler ["KeyDown", noesckey];
};
