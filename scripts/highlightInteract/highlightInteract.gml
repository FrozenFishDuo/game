function highlightInteract(playerObject){
//create a grid of everything we can interact with
//X 0 is the id and X 1 is the distance to player
var grid = ds_grid_create(2,0)

#region add entities
//add containers
with obj_container
{
	if !open
	{
		ds_grid_resize(grid,2,ds_grid_height(grid)+1)//add a spot to put our info
		var pos = ds_grid_height(grid)-1//assume we're adding to the last position we just added to the grid
		//place the info
		ds_grid_set(grid,0,pos,id)
		ds_grid_set(grid,1,pos,point_distance(x,y,playerObject.x,playerObject.y))
	}
}

//add items
with obj_item
{
	if canPickUp
	{
		ds_grid_resize(grid,2,ds_grid_height(grid)+1)
		var pos = ds_grid_height(grid)-1
		ds_grid_set(grid,0,pos,id)
		ds_grid_set(grid,1,pos,point_distance(x,y,playerObject.x,playerObject.y))
	}
}
#endregion

//we have added all items coded in that are interactable. now sort the grid to the closest entity first
ds_grid_sort(grid,1,true)

//now manage the interactId var
if ds_grid_height(grid) == 0
interactID = -1//nothing in the room is interactable
else
{
	if ds_grid_get(grid,1,0) < interactDistance//get first closest entity
	interactID = ds_grid_get(grid,0,0)//now apply its ID
	else
	interactID = -1//closest entity is too far away
}
ds_grid_destroy(grid)
}