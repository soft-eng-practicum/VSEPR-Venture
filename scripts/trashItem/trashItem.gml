/// @function trashItem
/// @description Discard the currently selected item
//Case 1 - Only 1 item in inventory
if(ds_grid_height(playerInventory) == 1)//Only 1 item in inventory
{
	if ( ds_grid_get(playerInventory, 1, 0) > 1)//If there's more than 1 in the inventory, just subtract it by 1
	{
		ds_grid_set(playerInventory, 1, 0, (ds_grid_get(playerInventory, 1, 0) -1 ));	
	}
	else 
	{
		for(i = 0; i<playerInventoryWidth; ++i)
		{
			ds_grid_set(playerInventory, i, 0, 0);	
		}
	}
}

//Case 2 - Everything else

else
{//First check to see if amount if greater than 1

	if(ds_grid_get(playerInventory, 1, itemSelected) > 1)
	{
		ds_grid_set(playerInventory, 1, itemSelected, ds_grid_get(playerInventory, 1, itemSelected) - 1);
	}
	else 
	{//Then shift every item down 1

		var currentRow = itemSelected + 1;
		var rowToRemove = itemSelected;
		for(i = rowToRemove; i < ds_grid_height(playerInventory) - 1; ++i)
		{
			ds_grid_set_grid_region(playerInventory, playerInventory, 0, currentRow, 5, currentRow, 0, i);
			currentRow += 1;
		}
		//And resize the grid to delete the last item in it
		ds_grid_resize(playerInventory, 5, ds_grid_height(playerInventory) - 1);
		//Make sure the selection isn't on the item that was just deleted
		if(scrolledAmount > 0)
			--scrolledAmount;
		if(itemSelected> 0)
			--itemSelected;
	}
}