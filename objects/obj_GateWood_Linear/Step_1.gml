/// @description Show UI
get_input();
while(distance_to_object(obj_player) < 16) && (actionKey) && (!instance_exists(obj_GateUI))
{
	gateDisplay = instance_create_depth(0, 0, depth - 1000, obj_GateUI);
	with(gateDisplay)
	{
		x = sprite_get_xoffset(sprite_index) + 25;
		y = sprite_get_yoffset(sprite_index) + 25;
	}
}
//Clean up created things
