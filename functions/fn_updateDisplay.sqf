params ["_idd","_zoom","_position"];
_display = (findDisplay _idd);
_mapCtrl = _display displayCtrl 1200;
_mapCtrl ctrlMapAnimAdd [0, _zoom,_position];
ctrlMapAnimCommit _mapCtrl;
_display spawn {
	UiSleep 0.05;
	displayUpdate _this;
};