/// @description Insert description here

if(global.dihydrogenMonoxide == true)
{
	if(instance_exists(obj_Oxygen) and instance_exists(obj_Hydrogen))
	{
		if(obj_Oxygen.x > 95 and obj_Oxygen.x < 130 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140)
		{
			if(obj_Hydrogen.x > 45 and obj_Hydrogen.x < 80 and obj_Hydrogen.y > 130 and obj_Hydrogen.y < 165
				or obj_Hydrogen.x > 145 and obj_Hydrogen.x < 180 and obj_Hydrogen.y > 130 and obj_Hydrogen.y < 165)
			{
				instance_destroy(obj_Oxygen);
				instance_destroy(obj_Hydrogen);
			
				room_goto(rm_grass_2);

				instance_activate_object(obj_player);
				obj_player.x = 180;
				obj_player.y = 180;
				
				global.dihydrogenMonoxide = false;
				global.bentBoolean = false;
			}
		}
	}
}