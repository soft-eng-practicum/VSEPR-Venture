/// @description Initialize

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

spawnPlayerface = -1;

enum dir {
	right = 0,
	up = 90,
	left = 180,
	down = 270,
}