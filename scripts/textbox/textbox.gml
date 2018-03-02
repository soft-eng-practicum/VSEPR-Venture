///@desc textbox(messages...)
///@arg messages...

var box = instance_create_depth(x, y, 0, obj_textbox);

for(var i = 0; i < argument_count; i++)
{
	box.message[i] = argument[i]; // hold the message inside the array
}
box.message_end = argument_count - 1; // use

box.message_length = string_length(box.message[box.message_current]);