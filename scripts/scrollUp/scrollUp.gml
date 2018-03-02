/// @function scrollUp
/// @description Move up 1 when looking at items
itemSelected = clamp(--itemSelected,0, ds_grid_height(myItems) - 1);
//Scroll up when coming back up
if(itemSelected < scrolledAmount)
{
	--scrolledAmount;	
}