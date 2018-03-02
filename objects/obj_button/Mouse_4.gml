/// @description Use function
//Do something specifically based off of the text given this object
if(myText == "Use")
{
	script_execute(ds_grid_get(playerInventory, 4, itemSelected));
	trashItem();
}
else if (myText == "Trash")
{
	trashItem();	
}