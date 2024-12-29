function gameResume(){
	global.paused = false
	instance_destroy(global.pauseInstance)
	global.pauseInstance = -1
	
	if mouse_check_button(mb_left)
	{
		with obj_player
		doShoot = true
	}
}