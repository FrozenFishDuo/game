//item names
enum ITEM{
	NONE,
	JUMP,
	DPS,
	SHIELD,
	DRONE,
	FEATHER,
	MISSILE,
	RUNFASTER
}

//animation needs to be redone in a manner that works with pausing the game

canPickUp = false
gravity = 0.0625
hspeed = random_range(-2,2)/2
vspeed = random_range(-3,0)/2
alarm[0] = irandom(15)+20