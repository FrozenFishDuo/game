function chooseItem(){
	switch irandom(2)
	{
		case 1:
			return ITEM.RUNFASTER
		case 2:
			return ITEM.DRONE
		default:
			return ITEM.NONE
	}
}