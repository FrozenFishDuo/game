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

interactID = -1//-1 means nothing can be interacted with at the moment. we only want 1 entity to be interactable at a time
#macro interactDistance 32//how far away can an entity be before it can no longer be interacted with?

global.items = ds_map_create()
topCol = -4
botCol = 0
lefCol = -4
rigCol = 4
getTilemap()
surface_resize(application_surface, 480, 270);//make gaem look kewl


global.clientPlayer = id//we don't have multiplayer yet but if we ever do this will be great to have. It's the client's player object.


























