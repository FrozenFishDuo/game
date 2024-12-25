function collide(xoff,yoff){
if tilemap_get_at_pixel(tilemap, x+xoff, y+yoff)
return true
return false
}