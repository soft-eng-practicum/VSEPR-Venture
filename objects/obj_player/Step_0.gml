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
<<<<<<< HEAD
	mask_index = 0;	
=======
	image_index = 0;	
}
*/

//----------UPDATE INPUT PLAYER CONTROLS
get_input();
depth = -y;

if (!instance_exists(obj_fade) && !instance_exists(obj_textbox)) {
	script_execute(move_state());
>>>>>>> 2fb68f06a4e2fc0c20805e2bd8caaf8689113fbc
}