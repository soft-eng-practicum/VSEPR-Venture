/// @description SHow Text
get_input();
if(distance_to_object(obj_player) < 8) && (action_key) && (!instance_exists(obj_textbox))
{
	var box = instance_create_depth(x, y, 0, obj_textbox);
	
	for(var i = 0; i < array_length_1d(message); i++)
	{
		box.message[i] = message[i];	
	}
	box.message_end = array_length_1d(message) - 1;
	box.message_length = string_length(box.message[box.message_current]);
}
