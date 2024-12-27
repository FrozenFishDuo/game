function scr_init(){
	gml_pragma("global","scr_init()")
	#macro droneNoticeEnemyDistance 128//how close does the drone have to be to notice an enemy?
	#macro droneAbandonEnemyDistance 256//how far does the player need to travel from the enemy for the drones to abandon it and return to following the player?

	global.cursor = cur_aim
}