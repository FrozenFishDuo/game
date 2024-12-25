var g = ds_map_find_value(global.items,ITEM.RUNFASTER)
if g > 0
ds_map_set(global.items,ITEM.RUNFASTER,g-1)
updateMoveSpeed()