function moveRelativeDestination(){
	followDestAngle = random(360)//be around the player in a different spot; this is an angle
	followDestDist = random_range(65,90)//distance to hover around the player. this is a multiplier, not absolute distance
}

#macro droneNoticeEnemyDistance 128//how close does the drone have to be to notice an enemy?
#macro droneAbandonEnemyDistance 256//how far does the player need to travel from the enemy to abandon it and return to following the player?

myhealth = 24
myhealthMax = 50

rot = 0
rotSpeed = 2

followID = obj_player//follow player(which player can be set via instance ID) or enemy
moveRelativeDestination()
alarm[0] = irandom_range(60,90)