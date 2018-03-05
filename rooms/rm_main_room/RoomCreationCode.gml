// Setting the window size


global.MonitorW = display_get_width();
global.MonitorH = display_get_height();

if(global.MonitorW < 3200 && global.MonitorH < 1800) //Smaller window for under 3k
{
	window_set_size(960, 720); //Standard size for smaller screens
	window_set_position(global.MonitorW/4, global.MonitorH/7);
}

else if(global.MonitorW >= 3200 && global.MonitorH >= 1800) //Larger window for screens over 3K
{
	window_set_size(1920, 1440);
	window_set_position(global.MonitorW/5, global.MonitorH/8);
}

