/// @description create inventory on screen
//Create the inventory if it isn't already on screen
if(!instance_exists(obj_GateUI))
{
	if(!instance_exists(obj_inventory_gui))
	{
		inventoryDisplay = instance_create_depth(0, 0, depth - 1000, obj_inventory_gui);
		with(inventoryDisplay)
		{
			x = camera_get_view_x(view_camera[0])  ; //sprite_get_xoffset(sprite_index);
			y = camera_get_view_y(view_camera[0])  + 240; //sprite_get_yoffset(sprite_index);
		}
	}

	//Clean up created things
	else
	{
		instance_destroy(obj_inventory_gui);	
		repeat(2)
		{
			instance_destroy(obj_button);
			instance_destroy(obj_order);
		}
	}
}