/// @description Movement / Collision

//----------UPDATE INPUT PLAYER CONTROLS
input_left	=	keyboard_check(vk_left);
input_right	=	keyboard_check(vk_right);
input_up	=	keyboard_check(vk_up);
input_down	=	keyboard_check(vk_down);

//----------RESET MOVEMENT VARIABLES
moveX	=	0;
moveY	=	0;

//----------INTENDED MOVEMENT
moveY = (input_down - input_up) * spd;
if (moveY == 0) { 
	moveX = (input_right - input_left) * spd; 
}

//----------COLLISION CHECKER

/** Horizontal */
if (moveX != 0) {
	if (place_meeting(x + moveX, y, oCollision)) {
	
		repeat(abs(moveX)) {
			if (!place_meeting(x + sign(moveX), y, oCollision)) {
				x += sign(moveX);
			}
			else {	break;	}
		}
	
		moveX = 0;
	}
}

/** Vertical */
if (moveY != 0) {
	if (place_meeting(x, y + moveY, oCollision)) {
	
		repeat(abs(moveY)) {
			if (!place_meeting(x, y + sign(moveY), oCollision)) {
				y += sign(moveY);
			}
			else {	break;	}
		}
	
		moveY = 0;
	}
}

//----------APPLY MOVEMENT
x += moveX;
y += moveY;
