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

enum item {
	none		= 0,
	sulfur		= 1,
	aluminium	= 2,
	fluorine	= 3,
	argon		= 4,
	carbon		= 5,
	lithium		= 6,
	silicon		= 7,
	phosphorus	= 8,
	beryllium	= 9,
	hydrogen	= 10,
	helium		= 11,
	magnesium	= 12,
	sodium		= 13,
	oxygen		= 14,
	bromine		= 15,
	nitrogen	= 16,
	chlorine	= 17,
	boron		= 18,
	neon		= 19,
	height		= 20,
}