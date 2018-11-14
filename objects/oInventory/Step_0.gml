/// @description Inventory Class Controls
if (keyboard_check_pressed(ord("I"))) { show_inventory = !show_inventory; }

if (!show_inventory) exit;

//----------PICKUP ITEM
var inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot]; // Gets selected slot item from inv_grid.

if (pickup_slot != -1) {
	
	if (mouse_check_button_pressed(mb_left)) {
		
		if (ss_item == item.none) {
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, selected_slot] = item.none;
			inv_grid[# 1, selected_slot] = 0;
			
			pickup_slot = -1;
		} else if (ss_item == inv_grid[# 0, pickup_slot]) {
			if (selected_slot != pickup_slot) {
				inv_grid[# 1, selected_slot] += inv_grid[# 0, pickup_slot];
				inv_grid[# 0, selected_slot] = item.none;
			
				inv_grid[# 1, selected_slot] = 0;	
			}
			
			pickup_slot = -1;
		} else {
			var ss_item_num = inv_grid[# 1, selected_slot];
			
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, selected_slot] = ss_item;
			inv_grid[# 1, selected_slot] = ss_item_num;
		}
	}
} else if (ss_item != item.none) {
	// Drop item into the world
	if (mouse_check_button_pressed(mb_middle)) {
		inv_grid[# 1, selected_slot] -= 1;
		
		if (inv_grid[# 1, selected_slot] == 0) { inv_grid[# 0, selected_slot] = item.none; }
		
		// Create item
		var inst = instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oItem);
		with (inst) {
			item_num = ss_item;
			x_frame = item_num mod (spr_width / cell_size);
			y_frame = item_num div (spr_width / cell_size);
		}
	}
	
	if (mouse_check_button_pressed(mb_right)) {
		pickup_slot = selected_slot;
	}
}
	