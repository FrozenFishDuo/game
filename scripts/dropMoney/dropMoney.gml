function dropMoney(value){
	with instance_create_layer(x,y,"OnFloor",obj_money)
	{
		worth = value
		image_index = value-1
	}
}