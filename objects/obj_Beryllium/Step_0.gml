/// @desc Collision with element

if(place_meeting(x, y, obj_player) && alarm[0] < 0 ) 
{
    alarm[0] = 10;
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