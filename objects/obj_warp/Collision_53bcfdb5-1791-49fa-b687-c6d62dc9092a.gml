/// @desc Fade out to next room

if(active == 0)
{
	room_goto(target);
	obj_player.x = xx;  
	obj_player.y = yy;
	active = 1;
}
