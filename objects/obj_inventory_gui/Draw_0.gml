/// @description draw inventory on screen
draw_self();
with(inventoryDisplay)
		{
			x = camera_get_view_x(view_camera[0]); //sprite_get_xoffset(sprite_index);
			y = camera_get_view_y(view_camera[0]) + 142; //sprite_get_yoffset(sprite_index);
		}

draw_set_colour(myColor);
draw_set_font(font_inventory);

draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
draw_text(bbox_left + 45, bbox_top + textBorder, "Name");
draw_text(bbox_left + 78, bbox_top + textBorder, "Amount");

///Sets bounds for inventory
nameClick = "";
amountClick = 0;
itemLeftStart = bbox_left + 38;
itemTopStart = bbox_top + 20;

for(i = 0; i < inventoryEndAt; ++i)
{
	for(j = 0; j < ds_grid_width(myItems); ++j)
	{
		inventoryOnScreen = i;
		if(j == 0) //Draw Name
			draw_text(itemLeftStart, itemTopStart + (i * 10), ds_grid_get(myItems, 0, i + scrolledAmount));
		else if(j == 1)//Draw Amount
			draw_text(itemLeftStart+ 54, itemTopStart + (i * 10), ds_grid_get(myItems, 1, i + scrolledAmount));
		else if(j == 3)//Draw Sprite
			draw_sprite_ext(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_left + 15, itemTopStart + (i * 10) + 6, .6, .6, 0, c_white, 1);
	}
	
}
	
draw_rectangle(bbox_left + textBorder, itemTopStart + ((itemSelected - scrolledAmount)* 10),
bbox_right - textBorder, itemTopStart + ((itemSelected - scrolledAmount) * 10) + 10, true);

draw_sprite(sprItemBox, 0, camera_get_view_x(view_camera[0]) + 175, camera_get_view_y(view_camera[0])  + 208);

if(isEmpty)
	draw_text_ext(camera_get_view_x(view_camera[0]) + 130, camera_get_view_y(view_camera[0]) + 180, emptyMessage, 10, sprite_get_width(sprItemBox) - textBorder);
else
	draw_text_ext(camera_get_view_x(view_camera[0]) + 130, camera_get_view_y(view_camera[0]) + 180, ds_grid_get(myItems, 2, itemSelected), 10, sprite_get_width(sprItemBox) - textBorder);

if(ds_grid_height(myItems) > floor((sprite_height - (textBorder *3 )) /32))
{
	draw_sprite(sprScrollBar, 0, bbox_right, 10 + bbox_top + itemSelected * (sprite_height - textBorder) / ds_grid_height(myItems));;	
}


