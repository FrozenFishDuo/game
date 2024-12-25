enum CHAR{
SHOTGUN,
PISTOL,
SWORD,
AVA//(secret character)
}

//item names
enum ITEM{
JUMP,
DPS,
SHIELD,
DRONE,
FEATHER,
MISSILE,
RUNFASTER
}

global.items = ds_map_create()
baseMoveSpeed = 3
myspeed = 3
ds_map_add(global.items,ITEM.JUMP,89743278)
ds_map_add(global.items,ITEM.DPS,89743278)
ds_map_add(global.items,ITEM.SHIELD,89743278)
ds_map_add(global.items,ITEM.DRONE,89743278)
ds_map_add(global.items,"weapon",CHAR.SHOTGUN)
ds_map_add(global.items,ITEM.FEATHER,89743278)//feather makes you fall slower unless you hold down
ds_map_add(global.items,ITEM.MISSILE,89743278)
ds_map_add(global.items,ITEM.RUNFASTER,0)
topCol = -4
botCol = 0
lefCol = -4
rigCol = 4
getTilemap()
surface_resize(application_surface, 480, 270);//make gaem look kewl

