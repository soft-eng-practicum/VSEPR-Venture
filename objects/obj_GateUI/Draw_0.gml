/// @description Insert description here
// You can write your code in this editor
draw_self();

// Overlay
instance_deactivate_object(obj_player);
instance_destroy(obj_inventory_gui);
instance_destroy(obj_button);
instance_destroy(obj_order);

// Confirm button
if(!instance_exists(obj_buttonConfirm))
{
	instance_create_depth(200, 200, -2000, obj_buttonConfirm);
}

// Overlay pasting
// NOTE: All global boolean variables are defined in rm_initialize creation code
if(global.bentBoolean == true)
{
	draw_sprite(spr_Overlay_Bent, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Bent", c_black, c_black, c_black, c_black, 1);
}

if(global.linearBoolean == true)
{
	draw_sprite(spr_Overlay_Linear, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Linear", c_black, c_black, c_black, c_black, 1);
}

if(global.octahedronBoolean == true)
{
	draw_sprite(spr_Overlay_Octahedron, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Octahedral", c_black, c_black, c_black, c_black, 1);
}

if(global.pyramidalBoolean == true)
{
	draw_sprite(spr_Overlay_Pyramidal, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Pyramidal", c_black, c_black, c_black, c_black, 1);
}

if(global.seesawBoolean == true)
{
	draw_sprite(spr_Overlay_Seesaq, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Seesaw", c_black, c_black, c_black, c_black, 1);
}

if(global.squarePlanarBoolean == true)
{
	draw_sprite(spr_Overlay_SquarePlanar, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Square Planar", c_black, c_black, c_black, c_black, 1);
}

if(global.squarePyramidalBoolean == true)
{
	draw_sprite(spr_Overlay_SquarePyramidal, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Square Pyramidal", c_black, c_black, c_black, c_black, 1);
}

if(global.tetrahedronBoolean == true)
{
	draw_sprite(spr_Overlay_Tetrahedron, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Tetrahedral", c_black, c_black, c_black, c_black, 1);
}

if(global.trigonalBipyramidalBoolean == true)
{
	draw_sprite(spr_Overlay_TrigonalBipyramidal, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Trigonal Bipyramidal", c_black, c_black, c_black, c_black, 1);
}

if(global.trigonalPlanarBoolean == true)
{
	draw_sprite(spr_Overlay_TrigonalPlanar, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "Trigonal Planar", c_black, c_black, c_black, c_black, 1);
}

if(global.tShapedBoolean == true)
{
	draw_sprite(spr_Overlay_TShaped, 0, bbox_right - 180, bbox_top + 100);
	draw_set_halign(fa_center);
	draw_set_font(font_bold);
	draw_text_color(bbox_left+135, bbox_top, "T Shaped", c_black, c_black, c_black, c_black, 1);
}


// Places atoms opun opening UI
invLength = inventoryEndAt;
invFirstHalf = ceil(inventoryEndAt / 2);

ypos1 = 70;
ypos2 = 70;

for(i = 0; i < invLength; ++i)
{
	if(i < invFirstHalf)
	{
		for(k = 0; k < invFirstHalf; ++k)
		{
			for(j = 0; j < ds_grid_width(myItems); ++j)
			{
				 if(j == 3)//Draw Sprite
				 {
					draw_sprite_ext(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_right - 70, ypos1, 1.5, 1.5, 0, c_white, 1);
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Aluminium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Aluminium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Aluminium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Beryllium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Beryllium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Beryllium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Boron)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Boron"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Boron")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Carbon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Carbon"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Carbon")));
								obj_Carbon.image_xscale = 1.5;
								obj_Carbon.image_yscale = 1.5;
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Lithium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Lithium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Lithium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Magnesium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Magnesium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Magnesium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Phosphorus)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Phosphorus"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Phosphorus")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Silicon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Silicon"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Silicon")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Sodium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Sodium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Sodium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Sulfur)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Sulfur"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Sulfur")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Argon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Argon"))))
						{
							
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Argon")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Chlorine)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Chlorine"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Chlorine")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Fluorine)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Fluorine"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Fluorine")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Helium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Helium"))))
						{
							
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Helium")));
							}
						}
					}
					
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Hydrogen)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Hydrogen"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Hydrogen")));
							}
							
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Neon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Neon"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Neon")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Nitrogen)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Nitrogen"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Nitrogen")));
							}
						}
					}
	
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Oxygen)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Oxygen"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Oxygen")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Bromine)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Bromine"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 70, ypos1, -1005, asset_get_index("obj_" + string("Bromine")));
							}
						}
					}
				 }
			}	
		}
		ypos1 = ypos1 + 38;
	}
}

for(i = 0; i < invLength; ++i)
{
	if(i >= invFirstHalf && i <= inventoryEndAt)
	{
		for(h = invFirstHalf; h <= inventoryEndAt; ++h)
		{
			for(j = 0; j < ds_grid_width(myItems); ++j)
			{
				if(j == 3)//Draw Sprite
				{
					draw_sprite_ext(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_right - 35, ypos2, 1.5, 1.5, 0, c_white, 1);
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Aluminium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Aluminium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Aluminium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Beryllium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Beryllium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Beryllium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Boron)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Boron"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Boron")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Carbon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Carbon"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Carbon")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Lithium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Lithium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Lithium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Magnesium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Magnesium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Magnesium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Phosphorus)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Phosphorus"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Phosphorus")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Silicon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Silicon"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Silicon")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Sodium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Sodium"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Sodium")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Sulfur)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Sulfur"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Sulfur")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Argon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Argon"))))
						{
							
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Argon")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Chlorine)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Chlorine"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Chlorine")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Fluorine)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Fluorine"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Fluorine")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Helium)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Helium"))))
						{
							
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Helium")));
							}
						}
					}
					
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Hydrogen)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Hydrogen"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Hydrogen")));
							}
							
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Neon)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Neon"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Neon")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Nitrogen)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Nitrogen"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Nitrogen")));
							}
						}
					}
	
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Oxygen)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Oxygen"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Oxygen")));
							}
						}
					}
					
					if(ds_grid_get(myItems, j, i + scrolledAmount) == spr_Bromine)
					{
						if(!instance_exists(asset_get_index("obj_" + string("Bromine"))))
						{
							for(var a = 0; a < 2; a++)
							{
								instance_create_depth(bbox_right - 35, ypos2, -1005, asset_get_index("obj_" + string("Bromine")));
							}
						}
					}
				}
			}
		}
		ypos2 = ypos2 + 38;
	}
}