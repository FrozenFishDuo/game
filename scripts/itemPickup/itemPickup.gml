function itemPickup(item, playerObject){
	switch item
	{
		case ITEM.RUNFASTER:
			playerObject.PlayerInventory.RunFaster ++
			updateMoveSpeed(obj_player)
		break
	}
	instance_destroy()
}