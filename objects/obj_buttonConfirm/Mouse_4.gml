/// @description When Confirm is Pressed
var rm_num	= irandom_range(1, 4);
var rm_next = asset_get_index("rm_grass_" + string(rm_num));

// Game start room --- rm_0 --- Tutorial room.
if (global.dihydrogenMonoxide == true and global.bentBoolean == true) {
	
	if(instance_exists(obj_Oxygen) and instance_exists(obj_Hydrogen)) {
		
		if(instance_exists(obj_GateWood_Bent)) {
		
			if(obj_Oxygen.x > 95 and obj_Oxygen.x < 130 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140) {
				
				if(obj_Hydrogen.x > 45 and obj_Hydrogen.x < 80 and obj_Hydrogen.y > 130 and obj_Hydrogen.y < 165
					or obj_Hydrogen.x > 145 and obj_Hydrogen.x < 180 and obj_Hydrogen.y > 130 and obj_Hydrogen.y < 165) {
					
					instance_destroy(obj_Oxygen);
					instance_destroy(obj_Hydrogen);
					instance_activate_object(obj_player);	
				
					if (active == 0) {
						room_goto(rm_next);
						if (rm_next == rm_grass_1) {
							xx = 165;
							yy = 172;
						}
						else if (rm_next == rm_grass_2) {
							xx = 54;
							yy = 194;
						}
						else if (rm_next == rm_grass_3) {
							xx = 287;
							yy = 216;
						}
						else if (rm_next == rm_grass_4) {
							xx = 160;
							yy = 170;
						}
						
						obj_player.x = xx;  
						obj_player.y = yy;
						active = 1;
					}
				
					global.dihydrogenMonoxide = false;
					global.bentBoolean = false;
				}
			}
		}
	}
}

else if(global.carbonDioxide == true and global.linearBoolean == true) {
	if(instance_exists(obj_Oxygen) and instance_exists(obj_Carbon)) {
		
		if(obj_Carbon.x > 95 and obj_Carbon.x < 130 and obj_Carbon.y > 105 and obj_Carbon.y < 140) {
			
			if(obj_Oxygen.x > 45 and obj_Oxygen.x < 80 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140
				or obj_Oxygen.x > 145 and obj_Oxygen.x < 180 and obj_Oxygen.y > 105 and obj_Oxygen.y < 140) {
				
				instance_destroy(obj_Oxygen);
				instance_destroy(obj_Carbon);
				instance_activate_object(obj_player);
				
				if (active == 0) {
					room_goto(rm_next);
					
					if (rm_next == rm_grass_1) {
						xx = 165;
						yy = 172;
					}
					else if (rm_next == rm_grass_2) {
						xx = 54;
						yy = 194;
					}
					else if (rm_next == rm_grass_3) {
						xx = 287;
						yy = 216;
					}
					else if (rm_next == rm_grass_4) {
						xx = 160;
						yy = 170;
					}
					
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

else if (global.berylliumChloride == true and global.linearBoolean == true) {
	if(instance_exists(obj_Beryllium) and instance_exists(obj_Chlorine)) {
		
		if(obj_Beryllium.x > 95 and obj_Beryllium.x < 130 and obj_Beryllium.y > 105 and obj_Beryllium.y < 140) {
			
			if(obj_Chlorine.x > 45 and obj_Chlorine.x < 80 and obj_Chlorine.y > 105 and obj_Chlorine.y < 140
				or obj_Chlorine.x > 145 and obj_Chlorine.x < 180 and obj_Chlorine.y > 105 and obj_Chlorine.y < 140) {
				
				instance_destroy(obj_Beryllium);
				instance_destroy(obj_Chlorine);
				instance_activate_object(obj_player);
				
				if(active == 0) {
					room_goto(rm_next);
					
					if (rm_next == rm_grass_1) {
						xx = 165;
						yy = 172;
					}
					if (rm_next == rm_grass_2) {
						xx = 54;
						yy = 194;
					}
				
					if (rm_next == rm_grass_3) {
						xx = 287;
						yy = 216;
					}
					if (rm_next == rm_grass_4) {
						xx = 160;
						yy = 170;
					}
					
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
                
				if(active == 0) {
                    room_goto(rm_next);
					
					if (rm_next == rm_grass_1) {
						xx = 165;
						yy = 172;
					}
				
					if (rm_next == rm_grass_2) {
						xx = 54;
						yy = 194;
					}
				
					if (rm_next == rm_grass_3) {
						xx = 287;
						yy = 216;
					}
					if (rm_next == rm_grass_4) {
						xx = 183;
						yy = 202;
					}
					
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
else if(global.sulfurTetraflouride == true and global.seesawBoolean == true) {
	if(instance_exists(obj_Sulfur) and instance_exists(obj_Fluorine)) {
		if(obj_Sulfur.x >= 97 and obj_Sulfur.x <= 130 and obj_Sulfur.y >= 105 and obj_Sulfur.y <= 140) {
			
			if(obj_Fluorine.x > 45 and obj_Fluorine.x < 80 and obj_Fluorine.y > 105 and obj_Fluorine.y < 140
				or obj_Fluorine.x > 145 and obj_Fluorine.x < 180 and obj_Fluorine.y > 105 and obj_Fluorine.y < 140) {
				instance_destroy(obj_Sulfur);
				instance_destroy(obj_Fluorine);
				instance_activate_object(obj_player);
				
				if (active == 0) {
					room_goto(rm_next);
					
					if (rm_next == rm_grass_1) {
						xx = 165;
						yy = 172;
					}
					if (rm_next == rm_grass_2) {
						xx = 54;
						yy = 194;
					}
				
					if (rm_next == rm_grass_3) {
						xx = 287;
						yy = 216;
					}
					if (rm_next == rm_grass_4) {
						xx = 180;
						yy = 170;
					}
					
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