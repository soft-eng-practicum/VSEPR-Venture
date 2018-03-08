/// @description Insert description here
// You can write your code in this editor
draw_self();

itemLeftStart = bbox_left + 38;
itemTopStart = bbox_top + 20;

for(i = 0; i < inventoryEndAt; ++i)
{
	if(i < inventoryEndAt / 2)
	{
		for(k = 0; k < (1/2)*inventoryEndAt; ++k)
		{
			for(j = 0; j < ds_grid_width(myItems); ++j)
			{
				 if(j == 3)//Draw Sprite
					draw_sprite_ext(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_right - 80, itemTopStart + (k * 15) + 13, 1.5, 1.5, 0, c_white, 1);
			}	
		}
	}
	
	
	if(i >= inventoryEndAt / 2 && i <= inventoryEndAt)
	{
		for(h = (1/2)*inventoryEndAt; h < inventoryEndAt; ++h)
		{
			for(j = 0; j < ds_grid_width(myItems); ++j)
			{
				 if(j == 3)//Draw Sprite
					draw_sprite_ext(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_right - 40, itemTopStart + (i * 15) + 13, 1.5, 1.5, 0, c_white, 1);
			}
		
		}
	}
	
	
}