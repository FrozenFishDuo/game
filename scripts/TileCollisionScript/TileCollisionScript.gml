/*function TileCollision(currentVector2, newVector2){ //Interpolates
	
}*/

function IsTileCollision(boxCollider, tileLayer){ //Does not Interpolate
	var otherBoxCollider = GetTileBoxCollider(boxCollider.vectorA.X, boxCollider.vectorA.Y, tileLayer)
	if (otherBoxCollider != -1) { return boxCollider.IsOverlapping(otherBoxCollider) }
	return false
}
