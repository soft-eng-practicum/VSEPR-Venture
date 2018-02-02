// Setting the window size

window_set_size(960, 720);

global.MonitorW=display_get_width();
global.MonitorH=display_get_height();

if(global.MonitorW >= 3200 && global.MonitorH >= 1800)
{
	surface_resize(application_surface, 1920,1440)
	global.Xoffset=(global.MonitorW-1900)/2;
	global.Yoffset=(global.MonitorH-1440)/2;
}