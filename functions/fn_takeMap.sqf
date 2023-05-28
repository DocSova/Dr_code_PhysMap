_mapObject = _this;

if ("ItemMap" in assignedItems player) exitWith {hint "Can't pick up a map! You have another already!"};
player playAction "PutDown";
uiSleep 1;
deleteVehicle _mapObject;
player linkItem "ItemMap";