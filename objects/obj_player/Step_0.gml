/// @desc

/** Old Steps
get_input();
depth = -y;

if(!instance_exists(obj_fade) && (!instance_exists(obj_textbox)))
{
	script_execute(move_state());
}
else 
{
	image_index = 0;	
}
*/

//----------UPDATE INPUT PLAYER CONTROLS
get_input();
depth = -y;

if (!instance_exists(obj_fade) && !instance_exists(obj_textbox)) {
	script_execute(move_state());
}