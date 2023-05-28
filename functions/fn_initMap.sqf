params ["_mapObject"];

_idd = format ["PhysMap_%1",random 1000];
_mapObject setObjectTextureGlobal [0, format["#(rgb,1024,1024,1)ui('RscDisplayDrPhysMap','%1')",_idd]];
_mapObject setVariable ["DisplayIDD",_idd, true];
[findDisplay _idd, _mapObject] spawn Dr_fnc_initDisplay;

[_mapObject, ["Take map", {(_this # 0) spawn Dr_fnc_takeMap}, [], 1.5, true, true, "", "true", 4]] remoteExec ["addAction", 0, true];