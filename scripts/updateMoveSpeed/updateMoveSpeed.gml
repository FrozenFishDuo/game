function updateMoveSpeed(){
myspeed = baseMoveSpeed + (ds_map_find_value(global.items,"runFaster")*0.5)
}