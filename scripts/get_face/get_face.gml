/// @desc get_face()
facing = 0;

switch (facing) {
	case dir.left:	y_frame = 2; break;
	case dir.right:	y_frame = 1; break;
	case dir.up:	y_frame = 4; break;
	case dir.down:	y_frame = 3; break;
	case -1:		x_frame = 0; break;
}