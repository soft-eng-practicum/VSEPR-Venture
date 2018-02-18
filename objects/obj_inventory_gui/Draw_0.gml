/// @description draw inventory on screen
draw_self();
draw_set_colour(myColor);
draw_set_font(font_inventory);

draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
draw_text(bbox_left + 45, bbox_top + textBorder, "Name");
draw_text(bbox_left + 78, bbox_top + textBorder, "Amount");

itemLeftStart = bbox_left + 38;
itemTopStart = bbox_top + 20;

for(i = 0; i < inventoryEndAt; ++i)
{
	for(j = 0; j < playerInventoryWidth; ++j)
	{
		if(j == 0)
			draw_text(itemLeftStart, itemTopStart + (i * 10), ds_grid_get(myItems, 0, i));
		if(j == 1)
			draw_text(itemLeftStart+ 45, itemTopStart + (i * 10), ds_grid_get(myItems, 1, i));
		if(j == 3)
			draw_sprite_ext(ds_grid_get(myItems, j, i), 0, bbox_left + 15, itemTopStart + (i * 10) + 6, .6, .6, 0, c_white, 1);
	}
	
}
	