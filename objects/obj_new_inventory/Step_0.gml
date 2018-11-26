/// @description Inventory Class
/** For later once I figure out the old inventory */
// if (keyboard_check_pressed(ord("I"))) { show_inventory = !show_inventory; }
// if (!show_inventory) exit;

#region Mouse Slot Select
	mousex = device_mouse_x_to_gui(0);
	mousey = device_mouse_y_to_gui(0);
	
	var cell_xbuff = mousex - slots_x;
	var cell_ybuff = mousey - slots_y
#endregion

//----------PICKUP ITEM
var inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot]; // Get selected slot item from inv_grid.