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
<<<<<<< HEAD
<<<<<<< HEAD
				instance_activate_object(obj_player);
=======
>>>>>>> parent of 51a4f1b... merge commit
=======
>>>>>>> parent of 51a4f1b... merge commit
				
				target = rm_grass_2;
				xx = 55;
				yy = 196;
				if(active == 0)
				{
					
					fadeout(target, c_black, 0.05, xx, yy);
					active = 1;
				}
				
				global.dihydrogenMonoxide = false;
<<<<<<< HEAD
<<<<<<< HEAD
				global.bentBoolean = false;
			}
		}
	}
}

if(global.carbonDioxide == true)
{
	if(instance_exists(obj_Oxygen) and instance_exists(obj_Carbon))
	{
		if(obj_Carbon.x > 95 and obj_Carbon.x < 130 and obj_Carbon.y > 105 and obj_Carbon.y < 140)
		{
			if(obj_Oxygen.x > 45 and obj_Oxygen.x < 80 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140
				or obj_Oxygen.x > 145 and obj_Oxygen.x < 180 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140)
			{
				instance_destroy(obj_Oxygen);
				instance_destroy(obj_Carbon);
				instance_activate_object(obj_player);
				
				target = rm_grass_3;
				xx = 285;
				yy = 215;
				
				if(active == 0)
				{
					
					fadeout(target, c_black, 0.05, xx, yy);
					active = 1;
				}
				
				global.carbonDioxide = false;
				global.linearBoolean = false;
=======
>>>>>>> parent of 51a4f1b... merge commit
=======
>>>>>>> parent of 51a4f1b... merge commit
			}
		}
	}
}