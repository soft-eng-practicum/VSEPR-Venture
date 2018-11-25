/// move_state

// alter speed
if (input_walk or input_run) { spd = abs((input_walk * w_spd) - (input_run * r_spd)); }
else { spd = n_spd; }

moveY = (input_down - input_up) * spd;
if (moveY == 0) { moveX = (input_right - input_left) * spd; }

// Get direction
if (moveX != 0) {
	switch (sign(moveX)) {
		case 1: face = dir.right; break;
		case -1: face = dir.left; break;
	}
}
else if (moveY != 0) {
	switch (sign(moveY)) {
		case 1: face = dir.down; break;
		case -1: face = dir.up; break;
	}
}
else { face = -1; }

//----------COLLISION CHECKER

/** Horizontal */
if (moveX != 0) {
	if (place_meeting(x + moveX, y, obj_wall)) {
		repeat(abs(moveX)) {
			if (!place_meeting(x + sign(moveX), y, obj_wall)) { x += sign(moveX); }
			else { break; }
		}
		moveX = 0;
	}
}

/** Vertical */
if (moveY != 0) {
	if (place_meeting(x, y + moveY, obj_wall)) {
		repeat(abs(moveY)) {
			if (!place_meeting(x, y + sign(moveY), obj_wall)) { y += sign(moveY); }
			else { break; }
		}
		moveY = 0;
	}
}

x += moveX;
y += moveY;