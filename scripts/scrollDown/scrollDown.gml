/// @function scrollDown
/// @description Move down 1 when looking at items
itemSelected = clamp(++itemSelected, 0, ds_grid_height(myItems) - 1);
//When reaching the end of the items on screen, change it to display 
//the next item below and shift it upwards,
//so all the items appear to scroll
if(itemSelected >= inventoryEndAt) 
{
	++scrolledAmount;
	++inventoryOnScreen;
}
//If attempting to go beyond the size of the grid, stop it
if(scrolledAmount + inventoryOnScreen > ds_grid_height(myItems))
{
	--scrolledAmount;
	
}