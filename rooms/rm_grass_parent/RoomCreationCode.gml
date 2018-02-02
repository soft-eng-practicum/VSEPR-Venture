// Setting the window size

global.MonitorW = display_get_width();
global.MonitorH = display_get_height();

window_set_size(960, 720); //Standard size for smaller screens

if(global.MonitorW >= 3200 && global.MonitorH >= 1800)
{
	//surface_resize(application_surface, 1920,1440)
	window_set_size(1920, 1440);
	
	//global.Xoffset = (global.MonitorW-1920)/2;
	//global.Yoffset = (global.MonitorH-1440)/2;
	
	window_set_position(global.MonitorW/3, global.MonitorH/3);
}

