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
	if dist < 32 && keyboard_check_pressed(ord("E"))
	{
		with instance_create_layer(x,y,"Instances",obj_item)
		{
			item = ITEM.RUNFASTER
		}
		open = true
		image_angle = 0
		image_xscale = 1
		image_yscale = 1
		exit
	}
	image_angle = ((dsin(sineWave))*6)*(abs(sineMulti-1))
	image_xscale = 1+((abs(sineMulti-1)/6))
	image_yscale = image_xscale
}