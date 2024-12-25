enum CHAR{
SHOTGUN	
}
global.items = ds_map_create()
#macro myspeed 4
ds_map_add(global.items,"jumps",89743278)
ds_map_add(global.items,"dps",89743278)
ds_map_add(global.items,"defense",89743278)
ds_map_add(global.items,"drones",89743278)
ds_map_add(global.items,"weapon",CHAR.SHOTGUN)
ds_map_add(global.items,"feather",89743278)//feather makes you fall slower unless you hold down
ds_map_add(global.items,"",89743278)
topCol = -4
botCol = 0
lefCol = -4
rigCol = 4
getTilemap()
surface_resize(application_surface, 480, 270);//make gaem look kewl