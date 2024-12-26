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

PlayerInfo = NewPlayerInfo()

global.items = ds_map_create()
topCol = -4
botCol = 0
lefCol = -4
rigCol = 4
getTilemap()
surface_resize(application_surface, 480, 270);//make gaem look kewl


