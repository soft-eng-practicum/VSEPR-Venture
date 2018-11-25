/// @desc Draw Player & Shadow
// Animation is nine frames long
var anim_length = 9;
var frame_size = 30;
var anim_speed = 10;

get_face();

var xx = x - x_offset;
var yy = y - y_offset;


//----------INCEREMENT FRAME FOR ANIMATION
if (x_frame + (anim_speed / 60) < anim_length) { x_frame += anim_speed / 60; }
else { x_frame = 1; }

draw_sprite(spr_player_shadow, mask_index, x, y);
draw_sprite_part(spr_scientist_m, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);