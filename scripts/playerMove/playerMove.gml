function playerMove(player){
	var vector2 = new Vector2();
	
	if (keyboard_check(vk_up))
	{
		vector2.Y = -1;
	}

	if (keyboard_check(vk_down))
	{
		vector2.Y = 1;
	}

	if (keyboard_check(vk_left))
	{
		vector2.X = -1;
	}

	if (keyboard_check(vk_right))
	{
		vector2.X = 1;
	}
	
	vector2.Normalize();
	
	vector2.ScalarMultiply(player.playerInfo.SpeedMod);
	
	vector2.Add(new Vector2(player.x, player.y));
	
	boxCollider = new BoxCollider(vector2.X, vector2.Y, 32)
	if (!IsTileCollision(boxCollider, player.tilemap))
	{
		player.x = vector2.X;
		player.y = vector2.Y;
	}
}