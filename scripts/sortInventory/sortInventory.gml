/// @function sortInventory
/// @description Order the inventory by a specified type
///	@argument0 DSGrid Grid_To_Add
/// @argument1 String Order_By_This
/// @argument2 Bool Asc?

gridToSort = argument0;
sortBy = argument1;
order = argument2;

ds_grid_sort(gridToSort, sortBy, order);

itemSelected = 0;
scrolledAmount = 0;

return !order;








