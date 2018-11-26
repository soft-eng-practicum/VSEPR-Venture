/// @description Initialize
/** Note: Needs to be persistent */

depth = -1;
scale = 2;
show_inventory = false;

inv_slots = 20;
inv_slots_width = 5;
inv_slots_height = 4;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

x_buffer = 1;
y_buffer = 1;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 28;

inv_UI_width = 154;
inv_UI_height = 174;

spr_inv_UI = spr_inventory_ui;
spr_inv_items = spr_atoms;

spr_inv_items_columns = sprite_get_width(spr_inv_items) / cell_size;
spr_inv_items_rows	  = sprite_get_height(spr_inv_items) / cell_size;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (5 * scale);
info_y = inv_UI_y + (5 * scale);

slots_x = info_x;
slots_y = inv_UI_y + (31 * scale);

desc_x = info_x;
desc_y = inv_UI_y + (151 * scale);

/** Inventory:	0	=	item_name
				1	=	item_number */

ds_inventory = ds_grid_create(2, inv_slots);

#region Create item info grid
	ds_item_info = ds_grid_create(2, item.height);
	
	// Item names
	var z = 0, i = 0;
	
	ds_item_info[# z, i++] = "Nothing";
	ds_item_info[# z, i++] = "Sulfur";
	
	
	
	// Item descriptions
	var z = 1, i = 0;
	ds_item_info[# z, i++] = "Nothing";
	ds_item_info[# z, i++] = "Used in fertilizers, but also widely used in gunpowders and matches.";
	
#endregion

// For debugging: Fills inventory with randomized atoms.

/**
var yy = 0; repeat(inv_slots) {
	ds_inventory[# 0, yy] = irandom_range(1, item.height - 1);
	ds_inventory[# 1, yy] = irandom_range(1, 5);
	y+= 1;
}
*/