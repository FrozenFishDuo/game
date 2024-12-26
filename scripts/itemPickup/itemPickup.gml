function itemPickup(item, playerObject){
	switch item
	{
		case ITEM.RUNFASTER:
			playerObject.PlayerInfo.SpeedMod ++
			updateMoveSpeed(obj_player)
		break
		case ITEM.DRONE:
			playerObject.PlayerInventory.DroneCount ++
			instance_create_layer(x,y,"Instances",obj_drone)
		break
	}
	instance_destroy()
}