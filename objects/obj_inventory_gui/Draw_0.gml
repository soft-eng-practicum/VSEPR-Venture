/// @description draw inventory on screen
draw_self();
draw_set_colour(myColor);
draw_set_font(font_inventory);

draw_text(0, 0, floor((sprite_height - (textBorder * 3)) / 10));
draw_text(0, 10, ds_grid_height(myItems));
draw_text(0, 20, inventoryEndAt);

draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
draw_text(bbox_left + 45, bbox_top + textBorder, "Name");
draw_text(bbox_left + 78, bbox_top + textBorder, "Amount");

///Sets bounds for inventory
itemLeftStart = bbox_left + 38;
itemTopStart = bbox_top + 20;

for(i = 0; i < inventoryEndAt; ++i)
{
	for(j = 0; j < ds_grid_width(myItems); ++j)
	{
		inventoryOnScreen = i;
		if(j == 0) //Draw Name
			draw_text(itemLeftStart, itemTopStart + (i * 10), ds_grid_get(myItems, 0, i + scrolledAmount));
<<<<<<< HEAD
		else if(j == 1)//Draw Amount
			draw_text(itemLeftStart+ 54, itemTopStart + (i * 10), ds_grid_get(myItems, 1, i + scrolledAmount));
		else if(j == 3)//Draw Sprite
=======
		if(j == 1)
			draw_text(itemLeftStart+ 54, itemTopStart + (i * 10), ds_grid_get(myItems, 1, i + scrolledAmount));
		if(j == 3)
>>>>>>> db6d51e3bb59d26b62af8fa0f65ff0d32350f649
			draw_sprite_ext(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_left + 15, itemTopStart + (i * 10) + 6, .6, .6, 0, c_white, 1);
	}
	
}
	
draw_rectangle(bbox_left + textBorder, itemTopStart + ((itemSelected - scrolledAmount)* 10),
bbox_right - textBorder, itemTopStart + ((itemSelected - scrolledAmount) * 10) + 10, true);

draw_sprite(sprItemBox, 0, bbox_right + sprite_get_xoffset(sprItemBox), room_height - sprite_get_yoffset(sprItemBox));

if(isEmpty)
	draw_text_ext(bbox_right + 7, room_height - sprite_get_yoffset(sprItemBox) - 25, emptyMessage, 10, sprite_get_width(sprItemBox) - textBorder);
else
	draw_text_ext(bbox_right + 7, room_height - sprite_get_yoffset(sprItemBox) - 25, ds_grid_get(myItems, 2, itemSelected), 10, sprite_get_width(sprItemBox) - textBorder);

if(ds_grid_height(myItems) > floor((sprite_height - (textBorder *3 )) /32))
{
	draw_sprite(sprScrollBar, 0, bbox_right, 10 + bbox_top + itemSelected * (sprite_height - textBorder) / ds_grid_height(myItems));;	
}