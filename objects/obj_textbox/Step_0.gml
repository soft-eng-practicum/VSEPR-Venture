/// @desc type text
get_input();
var actionHold = keyboard_check(vk_space);

//check if we need more characters
if(characters < message_length)
{
	characters += message_speed + actionHold;
	
	//copy string to the current character
	message_draw = string_copy(message[message_current], 0 , characters);
}
else // once we have finished adding the characters
{
<<<<<<< HEAD
	if(action_key)
=======
	if(actionHold)
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
	{
		//check if there are more messages
		if(message_current < message_end) // start next message
		{
			message_current += 1;
			message_length = string_length(message[message_current]);
			characters = 0;
			message_draw = "";
		}
		else
		{
			//destroy the object
			instance_destroy();
		}
	}
}
