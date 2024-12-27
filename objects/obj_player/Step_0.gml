playerMove()
if keyboard_check_pressed(ord("R"))
room_restart()
if keyboard_check_pressed(vk_escape)
game_end()
highlightInteract(id)//use this to highlight which entity to work with
if keyboard_check_pressed(ord("E"))
playerInteract()


#region//do shoot
if shootCooldown > 0
shootCooldown --
if doShoot
{
	if shootCooldown <= 0
	{
		shootCooldown += shootCooldownResetTo
		with instance_create_layer(x,y,"Instances",obj_projectile)
		{
			direction = point_direction(x,y,mouse_x,mouse_y)
			speed = other.shootSpeed
		}
	}
}
#endregion