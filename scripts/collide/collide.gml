function collide(xoff,yoff){
	if !variable_instance_exists(id,"tilemap")
	throw("getTilemap() missing for object \"" + object_get_name(object_index) + "\"!")
	else
	return tilemap_get_at_pixel(tilemap, x+xoff, y+yoff)
}