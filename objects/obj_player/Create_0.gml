/// @desc Initialize
n_spd	=	2;
w_spd	=	1;
r_spd	=	5;
spd		=	n_spd;

x_frame	= 1;
y_frame	= 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

state = move_state;

// Sprite Variables
facing = 0;

enum dir {
	right = 0,
	up = 90,
	left = 180,
	down = 270,
}