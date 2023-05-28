DrPhysMap_isMapInUpdate = false;

player addEventHandler ["InventoryOpened",{[] spawn Dr_fnc_inventoryOpened}];
[] spawn {
	waitUntil {!isNull findDisplay 46};
	(findDisplay 46) displayAddEventHandler ["KeyDown",{
		_this # 1 spawn Dr_fnc_controlMap;
	}];
};