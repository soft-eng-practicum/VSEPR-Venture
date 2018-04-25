/// @description Insert description here
// You can write your code in this editor
useButton = instance_create_depth(161,140,depth-1006, obj_newGame);

settingsButton = instance_create_depth(161,175,depth-1006, obj_menuSettings);

creditsButton = instance_create_depth(161,210,depth-1006, obj_menuCredits);

backButton = instance_create_depth(161,210,depth-1006, obj_backButton);
instance_deactivate_object(obj_backButton);

alarm[0] = 1;