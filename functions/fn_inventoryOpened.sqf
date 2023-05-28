waitUntil {!isNull (findDisplay 602)};
_mapCtrl = (findDisplay 602) displayCtrl 6211;
_mapCtrl ctrlAddEventHandler ["MouseButtonDblClick",{
	[] spawn Dr_fnc_placeMap;
}];