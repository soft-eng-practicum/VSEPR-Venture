/// @description Initialize
debug = false;
randomize();
room_goto_next();

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

blackAlpha = 0;

spawnRoom = -1;
spawnX = 0;
spawnY = 0;
doTransition = false;