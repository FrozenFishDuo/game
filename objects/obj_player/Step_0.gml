playerMove(id)
if keyboard_check_pressed(ord("R"))
room_restart()
if keyboard_check_pressed(vk_escape)
game_end()
highlightInteract(id)//use this to highlight which entity to work with
if keyboard_check_pressed(ord("E"))
playerInteract(id)