var offset = type*2//each sprite has itself and an outline and they're all in the same sprite file
if open == 0
{
	if global.clientPlayer.interactID == id
	draw_sprite_ext(sprite_index,offset+1,x,y,image_xscale,image_yscale,image_angle,c_yellow,abs(sineMulti-1))
	else
	draw_sprite_ext(sprite_index,offset+1,x,y,image_xscale,image_yscale,image_angle,c_white,abs(sineMulti-1))
}
draw_sprite_ext(sprite_index,offset,x,y,image_xscale,image_yscale,image_angle,c_white,1)

