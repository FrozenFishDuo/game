draw_self()
if enemyInfo.Health != enemyInfo.MaxHealth
{
	draw_set_color(c_red)
	draw_rectangle(x-25,y-48,x+24,y-40,false)

	var val = ((50/enemyInfo.MaxHealth)*enemyInfo.Health)-1//50 is the width of the healthbar, 1 is to fix an offset glitch
	draw_set_color(c_lime)
	draw_rectangle(x-25,y-48,(x-25)+val,y-40,false)
}