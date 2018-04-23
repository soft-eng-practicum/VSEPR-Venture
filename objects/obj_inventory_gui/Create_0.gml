/// @description Insert description here
// You can write your code in this editor

textBorder = 8; //The border of the sprite, how much to draw text in

myItems = playerInventory;//Shorter DS grid name
myColor = c_black;//Alter display color
//If the inventory is empty.
isEmpty = false;
emptyMessage = "You have no atoms!";

globalvar itemSelected, scrolledAmount, inventoryEndAt; //We'll need this in several functions & other objects
itemSelected = 0;//The currently selected item from the list
global.amountClick = 0;
global.nameClick = 0;

inventoryOnScreen = 2;

inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height - (textBorder * 3)) / 10));//How many items to display in the list. 
//Either the amount of items in the list, or the amount that will fit in the sprite.

if(ds_grid_get(myItems, 0, 0) == 0)
{//Checks to see if inventory is initially empty
	inventoryEndAt = 0;
	isEmpty = true;
}
scrolledAmount = 0;//How far down the list we've looked

alarm[0] = 1;//See alarm for details