/// @description Insert description here
// You can write your code in this editor

textBorder = 8;
myItems = playerInventory;
myColor = c_black;
isEmpty = false;
emptyMessage = "You have no molecules!";

globalvar itemSelected, scrolledAmount, inventoryEndAt;

itemSelected = 0;
scrolledAmount = 0;
inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height - (textBorder * 3)) / 32));
inventoryOnScreen = 0;
if(ds_grid_get(myItems, 0, 0) == 0)
{
	inventoryEndAt = 0;
	isEmpty = true;
}