/// @description Start new room

if (spawnRoom == -1) exit;
<<<<<<< HEAD
obj_player.x = spawnX;
obj_player.y = spawnY;

with (obj_player) {
	switch (facing) {
		case dir.left:	y_frame = 2; break;
		case dir.right:	y_frame = 1; break;
=======

oPlayer.x = spawnX;
oPlayer.y = spawnY;
oPlayer.facing = spawnPlayerFacing;

with (oPlayer) {
	
	switch (facing) {
		case dir.left:	y_frame = 2; break;
		case dir.right: y_frame = 1; break;
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
		case dir.up:	y_frame = 4; break;
		case dir.down:	y_frame = 3; break;
		case -1:		x_frame = 0; break;
	}
}