// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//function TileCollision(currentVector2, newVector2, size){ //Interpolates
	
//}


function IsTileCollision(boxCollider, tileLayer){ //Does not Interpolate
	var otherBoxCollider = GetTileBoxCollider(boxCollider.vectorA.X, boxCollider.vectorA.Y, tileLayer)
	if (otherBoxCollider != -1) { return boxCollider.IsOverlapping(otherBoxCollider) }
	return false
}
