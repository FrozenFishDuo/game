draw_sprite_ext(sprite_index,0,x+(dcos(rot)*6),y+(dsin(rot)*3),image_xscale,1,0,c_white,1)
draw_sprite_ext(sprite_index,1,x+(dcos(rot)*6),y+(dsin(rot)*3),image_xscale,1,0,c_black,1)
if myhealth != myhealthMax
{
	draw_set_color(c_red)
	draw_rectangle(x-25,y-32,x+24,y-24,false)

	var val = ((50/myhealthMax)*myhealth)-1//50 is the width of the healthbar, 1 is to fix an offset glitch
	draw_set_color(c_lime)
	draw_rectangle(x-25,y-32,(x-25)+val,y-24,false)
}