if !open
{
	sineWave += 3.5
	var dist = point_distance(x,y,obj_player.x,obj_player.y)
	sineMulti = 0
	if dist > 16 && dist < 48
	{
		sineMulti = (dist - 16) / 32
	}
	else if dist >= 32
	sineMulti = 1
	if !global.paused
	{
		image_angle = ((dsin(sineWave))*6)*(abs(sineMulti-1))
		image_xscale = 1+((abs(sineMulti-1)/6))
		image_yscale = image_xscale
	}
}