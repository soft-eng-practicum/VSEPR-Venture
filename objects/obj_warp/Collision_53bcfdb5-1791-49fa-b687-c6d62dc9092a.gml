/// @desc Fade out to next room

if(active == 0)
{
	fadeout(target, c_black, 0.05, xx, yy);
	active = 1;
}

window_set_position(global.MonitorW/4, global.MonitorH/5);
