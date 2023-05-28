if !("ItemMap" in assignedItems player) exitWith {};
player playAction "PutDown";
uiSleep 1;
player removeWeapon "ItemMap";
_mapObject = "Land_Map_blank_F" createVehicle position player;
_mapObject setPos getPos player;
[_mapObject] spawn Dr_fnc_initMap;