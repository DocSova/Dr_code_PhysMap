if (DrPhysMap_isMapInUpdate) exitWith {};
_key = _this;
_mapObject = cursorObject;
_idd = _mapObject getVariable ["DisplayIDD",""];
if !((_mapObject isKindOf "Land_Map_blank_F") && !(_idd == "")) exitWith {};
if ((player distance _mapObject) > 5) exitWith {};
DrPhysMap_isMapInUpdate = true;
_lastPos = _mapObject getVariable ["mapPosition", getPos _mapObject];
_lastZoom = _mapObject getVariable ["mapZoom", 0.25];
_display = findDisplay _idd;
_offsetPos = linearConversion [0.25, 0.7, _lastZoom, 50, 300, true];
_needToUpdate = true;
switch (_key) do {
	case 211: {
		//north
		_lastPos set [0, (_lastPos # 0) - _offsetPos];
	};
	case 209: {
		//west
		_lastPos set [0, (_lastPos # 0) + _offsetPos];
	};
	case 199: {
		//east
		_lastPos set [1, (_lastPos # 1) + _offsetPos];
	};
	case 207: {
		//south
		_lastPos set [1, (_lastPos # 1) - _offsetPos];
	};
	case 210: {
		//zoom-
		_lastZoom = _lastZoom + 0.05;
	};
	case 201: {
		//zoom+
		_lastZoom = _lastZoom - 0.05;
		
	};
	default {_needToUpdate = false};
};
if (!_needToUpdate) exitWith {DrPhysMap_isMapInUpdate = false};
_mapObject setVariable ["mapPosition", _lastPos, true];
_mapObject setVariable ["mapZoom", _lastZoom, true];
[_idd,_lastZoom,_lastPos] remoteExec ["Dr_fnc_updateDisplay",0];
UiSleep 0.05;
DrPhysMap_isMapInUpdate = false;