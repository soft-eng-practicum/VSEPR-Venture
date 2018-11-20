instance_create_depth(0,0,depth-1005, obj_title);

if(!instance_exists(obj_title))
{
	textbox("Welcome to VSEPR VENTURE! The VSEPR Theory learning game! Press SPACEBAR to continue.", 
	"SPACEBAR will be used to interact with objects.",
	"Use ARROW KEYS to move the character around.",
	"You can press the 'I' BUTTON to open the inventory.",
	"Proceed through the easy difficulty room to the left or medium difficulty room to the right.");
}