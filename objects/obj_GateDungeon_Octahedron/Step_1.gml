/// @description Show UI
get_input();
while(distance_to_object(obj_player) < 4) && (actionKey) && (!instance_exists(obj_GateUI))
{
	gateDisplay = instance_create_depth(0, 0, depth - y, obj_GateUI);
	with(gateDisplay)
	{
		x = sprite_get_xoffset(sprite_index) + 25;
		y = sprite_get_yoffset(sprite_index) + 25;
	}
	
	global.octahedronBoolean = true;
}