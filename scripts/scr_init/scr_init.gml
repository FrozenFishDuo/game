function scr_init(){
	gml_pragma("global","scr_init()")
	#macro droneNoticeEnemyDistance 128//how close does the drone have to be to notice an enemy?
	#macro droneAbandonEnemyDistance 256//how far does the player need to travel from the enemy for the drones to abandon it and return to following the player?

	global.cursor = cur_aim//the surface resize script does not respect the mouse cursor drawn by defaul in gamemaker. we gotta do this manually(draw it with the topmost object)(Cursor is currently drawn in: obj_player Draw event)
	global.paused = false
	global.pauseInstance = -1//pause menu is handled by an object. store its id in a var
}