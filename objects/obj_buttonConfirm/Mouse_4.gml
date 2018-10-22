/// @description Insert description here 
var arr;
arr[0] = rm_grass_1;
arr[1] = rm_grass_2;
arr[2] = rm_grass_3;
arr[3] = rm_grass_4;
arr[4] = rm_grass_5;


if(global.dihydrogenMonoxide == true and global.bentBoolean == true)
{
	if(instance_exists(obj_Oxygen) and instance_exists(obj_Hydrogen))
	{
		if(instance_exists(obj_GateWood_Bent))
		{
		if(obj_Oxygen.x > 95 and obj_Oxygen.x < 130 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140)
		{
			if(obj_Hydrogen.x > 45 and obj_Hydrogen.x < 80 and obj_Hydrogen.y > 130 and obj_Hydrogen.y < 165
				or obj_Hydrogen.x > 145 and obj_Hydrogen.x < 180 and obj_Hydrogen.y > 130 and obj_Hydrogen.y < 165)
			{
				instance_destroy(obj_Oxygen);
				instance_destroy(obj_Hydrogen);
				instance_activate_object(obj_player);
				instance_activate_object(oPlayer);
				
				target = arr[irandom(3)];
				
				if (target == rm_grass_3) {
					xx = 285;
					yy = 215;
				}
				else if (target == rm_grass_0){
					xx = 98;
					yy = 180;
				}
				else if (target == rm_grass_1){
					xx = 182;
					yy = 199;
				}
				else if (target == rm_grass_2){
					xx = 54;
					yy = 208;
				}
				else if (target == rm_grass_4){
					xx = 153;
					yy = 189;
				}
				else{}
				
				
				if(active == 0)
				{
					room_goto(target);
					obj_player.x = xx;  
					obj_player.y = yy;
					//oPlayer.x = xx;  
					//oPlayer.y = yy;
					active = 1;
				}
				
				global.dihydrogenMonoxide = false;
				global.bentBoolean = false;
			}
		}
		}
	}
}

else if(global.carbonDioxide == true and global.linearBoolean == true)
{
	if(instance_exists(obj_Oxygen) and instance_exists(obj_Carbon)) {
		
		if(obj_Carbon.x > 95 and obj_Carbon.x < 130 and obj_Carbon.y > 105 and obj_Carbon.y < 140)
		{
			if(obj_Oxygen.x > 45 and obj_Oxygen.x < 80 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140
				or obj_Oxygen.x > 145 and obj_Oxygen.x < 180 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140)
			{
				instance_destroy(obj_Oxygen);
				instance_destroy(obj_Carbon);
				instance_activate_object(obj_player);
				instance_activate_object(oPlayer);
				
				target = arr[irandom(3)];
				if (target == rm_grass_3) {
					xx = 285;
					yy = 215;
				}
				else if (target == rm_grass_0){
					xx = 98;
					yy = 180;
				}
				else if (target == rm_grass_1){
					xx = 182;
					yy = 199;
				}
				else if (target == rm_grass_2){
					xx = 54;
					yy = 208;
				}
				else if (target == rm_grass_4){
					xx = 153;
					yy = 189;
				}
				else{}
				
				if(active == 0)
				{
					room_goto(target);
					obj_player.x = xx;  
					obj_player.y = yy;
					active = 1;
				}
				
				global.carbonDioxide = false;
				global.linearBoolean = false;
			}
		}
	}
}

else if(global.berylliumChloride == true and global.linearBoolean == true)
{
	if(instance_exists(obj_Beryllium) and instance_exists(obj_Chlorine))
	{
		if(obj_Beryllium.x > 95 and obj_Beryllium.x < 130 and obj_Beryllium.y > 105 and obj_Beryllium.y < 140)
		{
			if(obj_Chlorine.x > 45 and obj_Chlorine.x < 80 and obj_Chlorine.y > 105 and obj_Chlorine.y < 140
				or obj_Chlorine.x > 145 and obj_Chlorine.x < 180 and obj_Chlorine.y > 105 and obj_Chlorine.y < 140)
			{
				instance_destroy(obj_Beryllium);
				instance_destroy(obj_Chlorine);
				instance_activate_object(obj_player);
				
				target = arr[irandom(3)];
				if (target == rm_grass_3) {
					xx = 285;
					yy = 215;
				}
				else if (target == rm_grass_0){
					xx = 98;
					yy = 180;
				}
				else if (target == rm_grass_1){
					xx = 182;
					yy = 199;
				}
				else if (target == rm_grass_2){
					xx = 54;
					yy = 208;
				}
				else if (target == rm_grass_4){
					xx = 153;
					yy = 189;
				}
				else{}
				
				if(active == 0)
				{
					room_goto(target);
					obj_player.x = xx;  
					obj_player.y = yy;
					active = 1;
				}
				
				global.berylliumChloride = false;
				global.linearBoolean = false;
			}
		}
	}
}

else if(global.sulfate == true and global.tetrahedronBoolean == true)
{
    if(instance_exists(obj_Oxygen) and instance_exists(obj_Sulfur))
    {
        if(obj_Sulfur.x > 95 and obj_Sulfur.x < 130 and obj_Sulfur.y > 105 and obj_Sulfur.y < 140)
        {
            if(obj_Oxygen.x > 95 and obj_Oxygen.x < 130 and obj_Oxygen.y > 55 and obj_Oxygen.y < 90
                or obj_Oxygen.x > 45 and obj_Oxygen.x < 80 and obj_Oxygen.y > 135 and obj_Oxygen.y < 165
                or obj_Oxygen.x > 95 and obj_Oxygen.x < 130 and obj_Oxygen.y > 160 and obj_Oxygen.y < 190
                or obj_Oxygen.x > 135 and obj_Oxygen.x < 180 and obj_Oxygen.y > 145 and obj_Oxygen.y < 165)
            {
                instance_destroy(obj_Oxygen);
                instance_destroy(obj_Sulfur);
                instance_activate_object(obj_player);
                
                target = arr[irandom(3)];
				if (target == rm_grass_3) {
					xx = 285;
					yy = 215;
				}
				else if (target == rm_grass_0){
					xx = 98;
					yy = 180;
				}
				else if (target == rm_grass_1){
					xx = 182;
					yy = 199;
				}
				else if (target == rm_grass_2){
					xx = 54;
					yy = 208;
				}
				else if (target == rm_grass_4){
					xx = 153;
					yy = 189;
				}
				else{}
                if(active == 0)
                {
                    room_goto(target);
					obj_player.x = xx;  
					obj_player.y = yy;
                    active = 1;
                }
                
                global.sulfate = false;
                global.tetrahedronBoolean = false;
            }
        }
    }
}
else if(global.sulfurTetraflouride == true and global.seesawBoolean == true)
{
	if(instance_exists(obj_Sulfur) and instance_exists(obj_Fluorine)) {
		
		if(obj_Sulfur.x >= 97 and obj_Sulfur.x <= 130 and obj_Sulfur.y >= 105 and obj_Sulfur.y <= 140) {
			
			if(obj_Fluorine.x > 45 and obj_Fluorine.x < 80 and obj_Fluorine.y > 105 and obj_Fluorine.y < 140
				or obj_Fluorine.x > 145 and obj_Fluorine.x < 180 and obj_Fluorine.y > 105 and obj_Fluorine.y < 140)
			{
				instance_destroy(obj_Sulfur);
				instance_destroy(obj_Fluorine);
				instance_activate_object(obj_player);
				
				target = arr[irandom(3)];
				if (target == rm_grass_3) {
					xx = 285;
					yy = 215;
				}
				else if (target == rm_grass_0){
					xx = 98;
					yy = 180;
				}
				else if (target == rm_grass_1){
					xx = 182;
					yy = 199;
				}
				else if (target == rm_grass_2){
					xx = 54;
					yy = 208;
				}
				else if (target == rm_grass_4){
					xx = 153;
					yy = 189;
				}
				else{}
				
				if(active == 0)
				{
					room_goto(target);
					obj_player.x = xx;  
					obj_player.y = yy;
					active = 1;
				}
				
				global.sulfurTetraflouride = false;
				global.seesawBoolean = false;
			}
		}
	}
}