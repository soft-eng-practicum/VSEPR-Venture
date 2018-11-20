/// @description Show Text
get_input();
<<<<<<< HEAD
if(distance_to_object(obj_player) < 8 or distance_to_object(oPlayer) < 8) && (action_key) && (!instance_exists(obj_textbox))
=======
if(distance_to_object(obj_player) < 8) && (action_key) && (!instance_exists(obj_textbox))
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
{
	var box = instance_create_depth(x, y, 0, obj_textbox);
	
	for(var i = 0; i < array_length_1d(message); i++)
	{
		box.message[i] = message[i];	
	}
	box.message_end = array_length_1d(message) - 1;
	box.message_length = string_length(box.message[box.message_current]);
}
