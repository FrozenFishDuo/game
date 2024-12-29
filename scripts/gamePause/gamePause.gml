function gamePause(){
	global.paused = true
	global.pauseInstance = instance_create_layer(0,0,"Pause",obj_pause)
	
	with obj_player
	{
		doShoot = false
	}
	
	with obj_drone
	{
		speed = 0
	}
}