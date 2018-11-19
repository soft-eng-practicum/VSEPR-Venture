/// @desc Initialize

//---------- PLAYER SPEED
n_spd = 2; // Normal
w_spd = 1; // Walk
r_spd = 5; // Run
spd = n_spd; // Current speed

//---------- ANIMATION FRAMES
x_frame = 1;
y_frame = 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);