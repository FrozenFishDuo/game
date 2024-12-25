var g = ds_map_find_value(global.items,"runFaster")
if g > 0
ds_map_set(global.items,"runFaster",g-1)
updateMoveSpeed()