private ["_crashNum","_lootNum","_loot","_coords"];
/////////////////////////////////////
//      Function file for UKGZ	   //
//        Created by: Richie       //
//  Modded by:  Vampire & xBowBii  //
/////////////////////////////////////
// Number of Crashes
_crashNum = (floor(random 6) + 5);

// Number of Loot Piles
_lootNum = (floor(random 6) + 6);

_loot = [
	
	
	
	"ChainSaw","ItemTrout","ItemTrout","ItemTrout","ItemCorrugated","ItemCorrugated","PartPlankPack","PartPlankPack","PartPlankPack","FoodWalkNSons","FoodWalkNSons","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","launch_RPG32_F","launch_RPG32_F","launch_RPG32_F","launch_RPG32_F",
	
	"HandGrenade","MiniGrenade","WhiskeyNoodle","SatchelCharge_Remote_Mag","launch_RPG32_F","RPG32_F","PartPlankPack","ItemGoldBar","VehicleRepair","FoodWalkNSons","ItemSodaRbull","FirstAidKit","FirstAidKit","FirstAidKit","FirstAidKit","PartPlankPack","ItemGoldBar",
	
	"VehicleRepair","FoodWalkNSons","ItemSodaRbull","PartPlankPack","ItemGoldBar","VehicleRepair","FoodWalkNSons","ItemSodaRbull",
	
	"optic_Nightstalker","Rangefinder","FirstAidKit","MortarBucket","CinderBlocks","KitWoodFloor","KitStudWall","KitWoodStairs","KitWoodRamp","ItemKiloHemp","CircuitParts","MortarBucket","MortarBucket","MortarBucket","MortarBucket","MortarBucket",
	
	"EnergyPack","ItemCorrugated","CinderBlocks","KitFoundation","KitShelf","EnergyPack","EnergyPack","EnergyPack","EnergyPack","HandGrenade","MiniGrenade","HandGrenade","MiniGrenade","HandGrenade","MiniGrenade","HandGrenade","MiniGrenade","HandGrenade","MiniGrenade"
	
];

_spawnCenter = [10088,9045,0]; //Center of your map (usually in mission.sqm)
_min = 0; // minimum distance from the center position (Number) in meters
_max = 12000; // maximum distance from the center position (Number) in meters
_mindist = 1; // minimum distance from the nearest object (Number) in meters, ie. spawn at least this distance away from anything within x meters..
//Low _mindist means helicrashes could spawn near towns or in forests.. higher the number it would be spawning in an open field etc
_water = 0; // water mode 0: cannot be in water , 1: can either be in water or not , 2: must be in water
_shoremode = 0; // 0: does not have to be at a shore , 1: must be at a shore

vSpawnCrashes = {
	for "_j" from 1 to _crashNum do {
		_posOfCrash = [_spawnCenter,_min,_max,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; // find a random loc
		//Infantry spawns using the A3EAI
		_CrashName = format ["Crashsite_%1",_j];
		// Comment added by glouton
		// The number of AIs spawning at crash is the 4th element of the array, default: 3
		// (arrays are zro-indexed, [0,1,2,3,4,...], meaning the 4th element has index 3
		// cf. A3EAI_createCustomSpawn.sqf line 10: _totalAI = if (_arraySize > 3) then {_this select 3} else {2};
		// which means: IF the array passed as an argument to A3EAI_createCustomSpawn is longer than 3 THEN use the element at index 3 (the 4th one)
		// as _totalAI ELSE _totalAI = 2
		[_CrashName,_posOfCrash,75,6,2,false,300] call A3EAI_createCustomInfantryQueue;	
		diag_log text format ["[HeliCrash]: Creating AI at %1 (%2)",_CrashName,_posOfCrash];
		_helicopters = ["Land_Wreck_Truck_F","Land_Wreck_Ural_F","Land_UWreck_MV22_F","Land_Wreck_BRDM2_F","Land_Wreck_T72_hull_F","Land_Wreck_HMMWV_F","Land_Scrap_MRAP_01_F"]; //Add Heli classnames here
		_element = _helicopters call BIS_fnc_SelectRandom;
		_vehHeli = _element createVehicle [0,0,0];
		_burnthefucker = "test_EmptyObjectForFireBig" createVehicle (position _vehHeli);  _burnthefucker attachto [_vehHeli, [0,0,-1]];  
		_vehHeli setposATL [(_posOfCrash) select 0,(_posOfCrash) select 1,0];
		_vehHeli setVariable ["LAST_CHECK", (diag_tickTime + 21600)];
				
		for "_i" from 1 to _lootNum do {
			_crate0 = createVehicle ["weaponHolderSimulated", _vehHeli modelToWorld [(random 10) - 3, (random 10) - 4, 0], [], 0, "CAN_COLLIDE"];
			_crate1 = createVehicle ["weaponHolderSimulated", _vehHeli modelToWorld [(random 10) - 3, (random 10) - 4, 0], [], 0, "CAN_COLLIDE"];
			
			_item = _loot call BIS_fnc_selectRandom;
			switch (true) do
			{
				case (isClass (configFile >> "CfgWeapons" >> _item)): {
					_kindOf = [(configFile >> "CfgWeapons" >> _item),true] call BIS_fnc_returnParents;
					if ("ItemCore" in _kindOf) then {
						// Min 1, Max 2
						_crate0 addItemCargoGlobal [_item,(floor(random(2)))+1];
						_crate1 addItemCargoGlobal [_item,(floor(random(2)))+1];
					} else {
						// One Weapon, Three Mags
						_crate0 addWeaponCargoGlobal [_item,1];
						_crate1 addWeaponCargoGlobal [_item,1];
						
						_cAmmo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
						{
							if (isClass(configFile >> "CfgPricing" >> _x)) exitWith {
								_crate0 addMagazineCargoGlobal [_x,3];
								_crate1 addMagazineCargoGlobal [_x,3];
							};
						} forEach _cAmmo;
					};
				};
				case (isClass (configFile >> "cfgMagazines" >> _item)): {
					// Min 1, Max 3
					_crate0 addMagazineCargoGlobal [_item,(floor(random(3)))+1];
					_crate1 addMagazineCargoGlobal [_item,(floor(random(3)))+1];
				};
				case ((getText(configFile >> "cfgVehicles" >> _item >>  "vehicleClass")) == "Backpacks"): {
					// One Bag
					_crate0 addBackpackCargoGlobal [_item,1];
					_crate1 addBackpackCargoGlobal [_item,1];
				};
			};
			_crate0 setPos [(getPos _crate0 select 0) +5, (getPos _crate0 select 1), 0];
			_crate1 setPos [(getPos _crate1 select 0) -10, (getPos _crate1 select 1), 0];
			_crate0 setVariable ["LAST_CHECK", (diag_tickTime + 21600)];
			_crate1 setVariable ["LAST_CHECK", (diag_tickTime + 21600)];
			_cutter0 = "Land_ClutterCutter_medium_F" createVehicle (getpos _crate0);
			_cutter1 = "Land_ClutterCutter_medium_F" createVehicle (getpos _crate1);
			_cutter0 setVariable ["LAST_CHECK", (diag_tickTime + 21600)];
			_cutter1 setVariable ["LAST_CHECK", (diag_tickTime + 21600)];

			
		};
	};
};

call vSpawnCrashes;