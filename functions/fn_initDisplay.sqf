params ["_display", "_mapObject"];
_mapCtrl = _display displayCtrl 1200; 
_mapCtrl ctrlMapAnimAdd [0, 0.25,_mapObject];
ctrlMapAnimCommit _mapCtrl;
UiSleep 2; //waiting for texture loading
displayUpdate _display;