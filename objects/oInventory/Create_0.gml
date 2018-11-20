/// @description Initialize

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
gui_height = display_get_height();

cell_size = 28;

inv_UI_width = 154;
inv_UI_height = 155;

spr_inv_UI = spr_inventory_ui;
spr_inv_items = spr_atoms;

spr_inv_items_columns = sprite_get_width(spr_inv_items) / cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items) / cell_size;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (5 * scale);
info_y = inv_UI_y + (5 * scale);

slots_x = info_x;
slots_y = inv_UI_y + (31 * scale);

ds_inventory = ds_grid_create(2, inv_slots);

enum item {
	none		= 0,
	sulfur		= 1,
	aluminum	= 2,
	fluorine	= 3,
	argon		= 4,
	carbon		= 5,
	lithium		= 6,
	silicon		= 7,
	phosphorus	= 8,
	beryllium	= 9,
	hydrogen	= 10,
	helium		= 11,
	magnesium	= 12,
	sodium		= 13,
	oxygen		= 14,
	bromine		= 15,
	nitrogen	= 16,
	chlorine	= 17,
	boron		= 18,
	neon		= 19,
	height		= 20,
}

