/// @description Draw Sprite

// Animation is nine frames long
var anim_length = 9;
var frame_width = 16;
var frame_height = 26;
var anim_speed = 12;

//---------- POSITION ANIMATION
// Moving Left
if (moveX < 0) y_frame = 3;
// Moving Right
else if (moveX > 0) y_frame = 2;
//Moving Up
else if (moveY > 0) x_frame = 5;
//Moving Down
else if (moveY < 0) x_frame = 4;

else { x_frame = 0; }

// Draw part of a sprite at given position.
draw_sprite_part(spr_mBase, 0, floor(x_frame) * frame_width, y_frame, frame_width, frame_height, x, y);

//---------- INCEREMENT FRAME FOR ANIMATION
if (x_frame < anim_length - 1) {
	x_frame += anim_speed / 60;
} 
else {
	x_frame = 1;
}