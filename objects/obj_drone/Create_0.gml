function moveRelativeDestination(){
	followDestAngle += random_range(-135,135)//be around the player in a different spot; this is an angle
	if followDestAngle < 0
	followDestAngle += 360
	if followDestAngle > 360
	followDestAngle -= 360
	followDestDist = random_range(120,190)//distance to hover around the player. this is a multiplier, not absolute distance
}

myhealth = 24
myhealthMax = 50

rot = 0
rotSpeed = 2

regenTimerResetTo = 60//once a second
regenTimer = regenTimerResetTo

shootCounter = irandom_range(60,90)

followID = obj_player//follow player(which player can be set via instance ID) or enemy
followDestAngle = random(360)//don't use the function, it'll crash
followDestDist = random_range(120,190)
alarm0 = 90