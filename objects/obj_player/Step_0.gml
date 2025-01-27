if !global.paused
{
	playerMove()

	if keyboard_check_pressed(ord("R"))
	room_restart()

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
				myspeed = other.shootSpeed
			}
		}
	}
	#endregion
	
	if mouse_check_button(mb_left) && keyboard_check(vk_control)
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_drone)
}
//pause menu
if keyboard_check_pressed(vk_escape)
{
	if global.paused
	gameResume()
	else
	gamePause()
}

//end game
if keyboard_check_pressed(vk_escape) && keyboard_check(vk_shift)
game_end()

highlightInteract(id)//use this to highlight which entity to work with

if x < xprevious
image_xscale = -1

if x > xprevious
image_xscale = 1