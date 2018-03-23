/// @desc Collision with element + drag

if(place_meeting(x, y, obj_player) && alarm[0] < 0 ) 
{
    alarm[0] = 10;
}

// Drag test
if grabbed = true 
{
    x = mouse_x + mouse_click_x;
    y = mouse_y + mouse_click_y;
    if !mouse_check_button(mb_left) 
	{
        grabbed = false;
    }
}

if mouse_check_button_pressed(mb_left) 
{
    var instance = top_instance_position(mouse_x, mouse_y, obj_Beryllium);
    if instance_exists(instance) 
	{
        instance.grabbed = true;
        instance.mouse_click_x = mouse_x - instance.x;
        instance.mouse_click_y = mouse_y - instance.y;
    }
}
if !mouse_check_button(mb_left) 
{
    with (obj_Beryllium) 
	{
        grabbed = false;
    }
}
