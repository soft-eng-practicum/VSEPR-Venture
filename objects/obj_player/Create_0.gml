/// @desc Initialize
spd = 1;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;

state = move_state;

// Sprite Variables
face = 0;

#macro RIGHT spr_player_right;
#macro DOWNRIGHT spr_player_downright;
#macro DOWN spr_player_down;
#macro DOWNLEFT spr_player_downleft;
#macro LEFT spr_player_left;
#macro UPLEFT spr_player_upleft;
#macro UP spr_player_up;
#macro UPRIGHT spr_player_upright;

// Drag and drop?
halfW = sprite_get_width(sprite_index)/2;
halfH = sprite_get_height(sprite_index)/2;
mouseXPrev = mouse_x;
mouseYPrev = mouse_y;