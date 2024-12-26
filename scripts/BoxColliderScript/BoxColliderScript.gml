// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewBoxCollider(X, Y, Size){
	 BoxCollider =
	 {
		 vectorA : NewVector2(X, Y), // Top Left
		 vectorB : NewVector2(X + Size, Y), // Top Right
		 vectorC : NewVector2(X, Y + Size), // Bottom Left
		 vectorD : NewVector2(X + Size, Y + Size), // Bottom Right
		 
		 IsOverlapping : function(_BoxCollider)
		 {
			 return (
			 vectorA.X < _BoxCollider.vectorD.X && // if This box's left side is left to the other box's right side
			 vectorD.X > _BoxCollider.vectorA.X && // if this box's right side is right to the other box's left side
			 vectorA.Y < _BoxCollider.vectorD.Y && // if this box's top side is above the other box's bottom side 
			 vectorD.Y > _BoxCollider.vectorA.Y // if this box's bottom side is below the other box's top side
			 );
		 }
	 }
	return BoxCollider
}

function GetTileBoxCollider(X, Y, tilemap)
{
	tileId = tilemap_get_at_pixel(tilemap, X, Y)
	if (tileId != -1)
	{
		return NewBoxCollider( tilemap_get_x(tileId), tilemap_get_y(tileId), tilemap_get_tile_width(tileId))
	}
	
	
}