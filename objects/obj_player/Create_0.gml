/// @description Initialize
n_spd = 2;
w_spd = 1;
r_spd = 5;
spd = n_spd;

x_frame = 1;
y_frame = 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);


state = move_state;

// Sprite Variables
face = 0;

#macro RIGHT y_frame = 1;
#macro DOWNRIGHT y_frame = 3;
#macro DOWN y_frame =  3;
#macro DOWNLEFT spr_player_downleft;
#macro LEFT y_frame = 2;
#macro UPLEFT spr_player_upleft;
#macro UP y_frame = 4;
#macro UPRIGHT spr_player_upright;