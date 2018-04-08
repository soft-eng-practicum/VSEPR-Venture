/// @description Insert description here

if(global.dihydrogenMonoxide == true)
{
	if(obj_Carbon.x > 100 and obj_Carbon.y > 100)
	{
		instance_destroy(obj_Carbon);
	}
}