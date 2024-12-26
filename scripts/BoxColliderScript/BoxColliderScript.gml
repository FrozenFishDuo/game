// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BoxCollider(X, Y, Size) constructor{
	 
		 vectorA = new Vector2(X, Y); // Top Left
		 vectorB = new Vector2(X + Size, Y); // Top Right
		 vectorC = new Vector2(X, Y + Size); // Bottom Left
		 vectorD = new Vector2(X + Size, Y + Size); // Bottom Right
		 
		 static IsOverlapping = function(_BoxCollider)
		 {
			 return (
			 vectorA.X < _BoxCollider.vectorD.X && // if This box's left side is left to the other box's right side
			 vectorD.X > _BoxCollider.vectorA.X && // if this box's right side is right to the other box's left side
			 vectorA.Y < _BoxCollider.vectorD.Y && // if this box's top side is above the other box's bottom side 
			 vectorD.Y > _BoxCollider.vectorA.Y // if this box's bottom side is below the other box's top side
			 );
		 
	 }

}

function GetTileBoxCollider(X, Y, tileLayer)
{
	
	tileVector = new Vector2(tilemap_get_cell_x_at_pixel(tileLayer, X, Y), tilemap_get_cell_y_at_pixel(tileLayer, X, Y))
	foundTile = tilemap_get_at_pixel(tileLayer, X, Y)
	if (foundTile == 1)
	{
		tileVector.ScalarMultiply(tilemap_get_tile_width(tileLayer))
		return new BoxCollider( tileVector.X, tileVector.Y, tilemap_get_tile_width(tileLayer))
	}
	return -1
}