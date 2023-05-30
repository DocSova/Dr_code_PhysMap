#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class CfgPatches
{
	class Dr_code_PhysMap
	{
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {"A3_characters_F","A3_Data_F"};
	};
};

class RscMapControl;
class RscPicture;

class RscDisplayDrPhysMap {
    idd = 64833;
	enableSimulation = 1;
	enableDisplay = 0;

    class controls {
        class RscOverlayMap: RscPicture {
            text = "Dr_code_PhysMap\tex\map_blank.paa";
            idc = 1201;
            x = 0 * GUI_GRID_W + GUI_GRID_X;
            y = 0 * GUI_GRID_H + GUI_GRID_Y;
            w = 40 * GUI_GRID_W;
            h = 25 * GUI_GRID_H;
        }; 
    };
    class controlsBackground {
        class RscMap: RscMapControl
        {
            idc = 1200;
            x = 0 * GUI_GRID_W + GUI_GRID_X;
            y = 0 * GUI_GRID_H + GUI_GRID_Y;
            w = 40 * GUI_GRID_W;
            h = 25 * GUI_GRID_H;
        };
    };
};

class CfgFunctions
{
	class Dr
	{
		class Main
		{
			file = "Dr_code_PhysMap\functions";
			class initDisplay {};
            class initMap {};
            class initPlayer {
                postInit = 1;
            };
            class inventoryOpened {};
            class placeMap {};
            class takeMap {};
            class controlMap {};
            class updateDisplay {};
		};
	};
};