if !global.paused
{
	rot += rotSpeed
	if rot >= 360
	rot -= 360

	if !instance_exists(followID)
	followID = obj_player

	var destX = followID.x+(dcos(followDestAngle)*followDestDist)
	var destY = followID.y+(dsin(followDestAngle)*(followDestDist/2))//divide by 2 to give the angled top-down look

	var dist = point_distance(x,y,destX,destY)
	speed = dist/64
	direction = point_direction(x,y,destX,destY)

	var enemyTest = instance_nearest(x,y,obj_enemy)
	if enemyTest != noone
	{
		if point_distance(obj_player.x,obj_player.y,enemyTest.x,enemyTest.y) < droneAbandonEnemyDistance
		{
			if point_distance(x,y,enemyTest.x,enemyTest.y) <= droneNoticeEnemyDistance
			followID = enemyTest
		}
		else
		followID = obj_player
	}

	if followID != obj_player//this may break later
	{
		if --shootCounter == 0
		{
			shootCounter = 90
			with instance_create_layer(x,y,"Instances",obj_projectile)
			{
				direction = point_direction(x,y,enemyTest.x,enemyTest.y)
				myspeed = 5
			}
		}
	}

	if myhealth < myhealthMax//don't do regen timer if at full health, it'll stay at max when not needed
	{
		if --regenTimer <= 0
		{
			regenTimer = regenTimerResetTo
			myhealth ++
		}
	}

	if direction < 90 || direction >= 270
	image_xscale = 1
	else
	image_xscale = -1
	if --alarm0 == 0
	{
		moveRelativeDestination()
		alarm0 = 90
	}
}