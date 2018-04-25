/// @description Insert description here
// You can write your code in this editor

instance_destroy(obj_title);
instance_destroy();
instance_destroy(obj_menuCredits);
instance_destroy(obj_menuSettings);

instance_activate_object(obj_settingsButton);

textbox("Welcome to VSEPR VENTURE! The VSEPR Theory learning game! Press SPACEBAR to continue.", 
	"SPACEBAR will be used to interact with objects.",
	"Use ARROW KEYS to move the character around.",
	"You can press the 'I' BUTTON to open the inventory.",
	"Proceed through the easy difficulty room to the left or medium difficulty room to the right.");