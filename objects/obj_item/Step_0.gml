if canPickUp && keyboard_check_pressed(ord("E"))
{
	if point_distance(x,y,obj_player.x,obj_player.y) < 32
	itemPickup(item, obj_player)
}