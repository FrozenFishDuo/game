function moveRelativeDestination(){
	followDestAngle = random(360)//be around the player in a different spot; this is an angle
	followDestDist = random_range(65,90)//distance to hover around the player. this is a multiplier, not absolute distance
}

myhealth = 24
myhealthMax = 50

rot = 0
rotSpeed = 2

regenTimerResetTo = 60//once a second
regenTimer = regenTimerResetTo

shootCounter = irandom_range(60,90)

followID = obj_player//follow player(which player can be set via instance ID) or enemy
moveRelativeDestination()
alarm[0] = 90