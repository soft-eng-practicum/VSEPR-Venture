/// @description Insert description here
// You can write your code in this editor

instance_destroy(obj_title);
instance_destroy();
instance_destroy(obj_menuCredits);
instance_destroy(obj_menuSettings);

instance_activate_object(obj_settingsButton);


//MAKE THIS A WIZARD SAYING THIS. CREATE A WIZARD OBJECT AND INSERT THIS TEXT INTO IT
//THEN, CALL THE WIZARD HERE.

textbox("Welcome to VSEPR VENTURE! The VSEPR Theory learning game! Press SPACEBAR to continue.", 
	"SPACEBAR will be used to interact with objects.",
	"Use ARROW KEYS to move the character around.",
	"Proceed through the easy difficulty room to the left or medium difficulty room to the right.");