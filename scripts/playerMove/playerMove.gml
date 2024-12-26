function playerMove(){

keyUp = keyboard_check(vk_up)
keyDown = keyboard_check(vk_down)
keyLeft = keyboard_check(vk_left)
keyRight = keyboard_check(vk_right)

if keyUp
{
	if !collide(lefCol,-(PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod)*2) && !collide(rigCol-1,-(PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod)*2)
	y -= PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod
	else
	{
		for(i=0; i < PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod; i++)
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
	if !collide(lefCol,PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod) && collide(rigCol,PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod)
	y += PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod
	else
	{
		for(i=0; i < PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod; i++)
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
	if !collide(-(PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod)*2,topCol) && !collide(-(PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod)*2,botCol)
	x -= PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod
	else
	{
		for(i=0; i < PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod; i++)
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
	if !collide(PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod,topCol) && !collide(PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod,botCol)
	x += PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod
	else
	{
		for(i=0; i < PlayerInfo.BaseSpeed + PlayerInfo.SpeedMod; i++)
		{
			if !collide(rigCol+1,topCol) && !collide(rigCol+1,botCol)
			x ++
			else
			exit
		}
	}
}
}