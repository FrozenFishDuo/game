if !global.paused
{
	x += lengthdir_x(myspeed,direction)
	y += lengthdir_y(myspeed,direction)
	if --alarm0 <= 0
	instance_destroy()
}