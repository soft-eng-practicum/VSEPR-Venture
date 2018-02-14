/// @desc Every Step
get_input();
depth = -y;

if(!instance_exists(obj_fade))
{
	script_execute(state);
}
else 
{
	image_index = 0;	
}

// Drag and drop?
if ((mouse_check_button(mb_left)) and (mouse_x < x + halfW) and (mouse_x >= x - halfW)
	and (mouse_y < y + halfH) and (mouse_y >= y  -halfH))
{
    x += mouse_x - mouseXPrev;
    y += mouse_y - mouseYPrev;
}
mouseXPrev = mouse_x;
mouseYPrev = mouse_y;