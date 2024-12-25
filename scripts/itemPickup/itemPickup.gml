function itemPickup(item, playerObject){
	switch item
	{
		case ITEM.RUNFASTER:
			playerObject.PlayerInfo.SpeedMod ++
			updateMoveSpeed(obj_player)
		break
	}
	instance_destroy()
}