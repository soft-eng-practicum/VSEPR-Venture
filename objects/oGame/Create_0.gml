/// @description Initialize
<<<<<<< HEAD
debug = false;
=======

/** Note: oGame object should be in rm_initialize.
		  Must be Persistent.	*/

randomize();
room_goto_next();
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

blackAlpha = 0;

spawnRoom = -1;
spawnX = 0;
spawnY = 0;
spawnPlayerFacing = -1;
<<<<<<< HEAD
doTransition = false;
=======
doTransition = false;

enum dir {
	right = 0,
	up = 90,
	left = 180,
	down = 270,
}
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
