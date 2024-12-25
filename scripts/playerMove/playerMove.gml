function playerMove(){

keyUp = keyboard_check(vk_up)
keyDown = keyboard_check(vk_down)
keyLeft = keyboard_check(vk_left)
keyRight = keyboard_check(vk_right)

if keyUp
{
	if !collide(lefCol,-myspeed*2) && !collide(rigCol-1,-myspeed*2)
	y -= myspeed
	else
	{
		for(i=0; i < myspeed; i++)
		{
			if !collide(lefCol,topCol-1) && !collide(rigCol-1,topCol-1)
			y --
			else
			exit
		}
	}
}

if keyDown
{
	if !collide(lefCol,myspeed) && collide(rigCol,myspeed)
	y += myspeed
	else
	{
		for(i=0; i < myspeed; i++)
		{
			if !collide(lefCol,botCol+1) && !collide(rigCol,botCol+1)
			y ++
			else
			exit
		}
	}
}

if keyLeft
{
	if !collide(-myspeed*2,topCol) && !collide(-myspeed*2,botCol)
	x -= myspeed
	else
	{
		for(i=0; i < myspeed; i++)
		{
			if !collide(lefCol-1,topCol) && !collide(lefCol-1,botCol)
			x --
			else
			exit
		}
	}
}

if keyRight
{
	if !collide(myspeed,topCol) && !collide(myspeed,botCol)
	x += myspeed
	else
	{
		for(i=0; i < myspeed; i++)
		{
			if !collide(rigCol+1,topCol) && !collide(rigCol+1,botCol)
			x ++
			else
			exit
		}
	}
}
}