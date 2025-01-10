draw_self()

draw_set_color(c_white)
draw_text(32,32,PlayerInfo.Money)






















//to respect the application surface changes we made, we have to draw this here instead
draw_sprite(global.cursor,0,mouse_x,mouse_y)