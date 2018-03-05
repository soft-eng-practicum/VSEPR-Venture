/// @description Create Gate UI
depth = 2;
if(!instance_exists(obj_GateWood_UI))
{
	inventoryDisplay = instance_create_depth(0, 0, depth - 1000, obj_inventory_gui);
	with(inventoryDisplay)
	{
		x = sprite_get_xoffset(sprite_index);
		y = room_height - sprite_get_yoffset(sprite_index);
	}
}
else
{
	instance_destroy(obj_inventory_gui);	
	repeat(2)
		instance_destroy(obj_button);
		instance_destroy(obj_order);
}