/// @description Atoms
if (drop_move) {
	x = lerp(x, goal_x, 0.1);
	y = lerp(y, goal_y, 0.1);
	
	if (abs(x - goal_x) < 1 and abs(y - goal_y) < 1) { drop_move = false; }
}

else {
	var px = oPlayer.x;
	var py = oPlayer.y;
	var r = 22;
	
	if (point_in_rectangle(px, py, x - r, y - r, x + r, y+ r)) {
		// On top of player?
		r = 2;
		
		if (!point_in_rectangle(px, py, x - r, y - r, x + r, y+ r)) {
			// Move towards player
			x = lerp(x, px, 0.1);
			y = lerp(y, py, 0.1);
		}
		
		// Pickup item
		else {
			var in = item_num;
			
			with (oInventory) {
				var ds_inv = ds_inventory;
				var picked_up = false;
				
				// Check if item exists
				var yy= 0; repeat (inv_slots) {
					if (ds_inv[# 0, yy] == in) {
						ds_inv[# 1, yy] += 1;
						picked_up = true;
						break;
					} else {
						yy += 1;
					}
				}
				
				// Otherwise, add item to empty slot
				if (!picked_up) {
					var yy = 0; repeat (inv_slots) {
						if (ds_inv[# 0, yy] == item.none) {
							ds_inv[# 0, yy] = in;
							ds_inv[# 1, yy] += 1;
							picked_up = true;
							break;
						} else {
							yy += 1;
						}
					}
				}
			}
			
			// Destroy item if picked up
			if (picked_up) {
				instance_destroy();
				show_debug_message("Picked up an atom.");
			}
		}
	}
}