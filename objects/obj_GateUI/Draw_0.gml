/// @description Insert description here
// You can write your code in this editor
draw_self();

itemLeftStart = bbox_left + 38;
itemTopStart = bbox_top + 20;

for(i = 0; i < inventoryEndAt; ++i)
{
	for(k = 0; k < (1/2)*inventoryEndAt; ++k)
	{
		for(j = 0; j < ds_grid_width(myItems); ++j)
		{
			 if(j == 3)//Draw Sprite
				draw_sprite_ext(ds_grid_get(myItems, k, i + scrolledAmount), 0, bbox_right - 80, itemTopStart + (i * 15) + 13, .7, .7, 0, c_white, 1);
		}
	}
	
	for(h = (1/2)*inventoryEndAt; h < inventoryEndAt; ++h)
	{
		for(j = 0; j < ds_grid_width(myItems); ++j)
		{
			 if(j == 3)//Draw Sprite
				draw_sprite_ext(ds_grid_get(myItems, h, i + scrolledAmount), 0, bbox_right - 40, itemTopStart + (i * 15) + 13, .7, .7, 0, c_white, 1);
		}
		
	}
	
}