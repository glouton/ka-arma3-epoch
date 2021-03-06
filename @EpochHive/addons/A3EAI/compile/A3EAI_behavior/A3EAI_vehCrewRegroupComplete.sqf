#include "\A3EAI\globaldefines.hpp"

private ["_unitGroup","_vehicle"];

_unitGroup = _this;

_vehicle = _unitGroup getVariable ["assignedVehicle",objNull];
if (isNull _vehicle) exitWith {diag_log format ["A3EAI Error: Group %1 has null vehicle.",_unitGroup];};
[_unitGroup,0] setWaypointPosition [(getPosATL _vehicle),0];
[_unitGroup,2] setWaypointPosition [(getPosATL _vehicle),0];
_unitGroup call A3EAI_setVehicleRegrouped;

if (A3EAI_debugLevel > 0) then {diag_log format ["A3EAI Debug: Regroup completed for vehicle group %1.",_unitGroup];};

true
