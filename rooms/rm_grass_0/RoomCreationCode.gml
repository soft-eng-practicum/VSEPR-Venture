instance_create_depth(0,0,depth-1005, obj_title);

if(!instance_exists(obj_title))
{
textbox("Interact with the SIGN to the right figure out what molecule needs to be made!",
"You may then pick up the necessary atoms and pick the correct VSEPR gate to create the molecules in.",
"Once you have interacted with the gate, drag the atoms into the correct structure and press confirm!");
}