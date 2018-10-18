/// @description Draw Sprite / Animations

// Animation is nine frames long
var anim_length = 9;
var frame_size = 30;
var anim_speed = 10;

//----------INCEREMENT FRAME FOR ANIMATION
if (x_frame + (anim_speed / 60) < anim_length) { x_frame += anim_speed / 60; }
else { x_frame = 1; }


//----------POSITION ANIMATION

// Moving Left
if (moveX < 0) { y_frame = 2; }

// Moving Right
else if (moveX > 0) { y_frame = 1; }

//Moving Up
else if (moveY < 0) { y_frame = 4; }

//Moving Down
else if (moveY > 0) { y_frame = 3; }

else { x_frame = 0; }

var xx = x - x_offset;
var yy = y - y_offset;

// Draw part of a sprite at given position.
draw_sprite_part(mPlayer_base, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);