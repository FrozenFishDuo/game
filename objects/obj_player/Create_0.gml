enum CHAR{
	SHOTGUN,
	PISTOL,
	SWORD,
	AVA//(secret quadruped character cuz why not)
}

PlayerInfo = NewPlayerInfo()
PlayerInventory = NewPlayerInventory()

interactID = -1//-1 means nothing can be interacted with at the moment. we only want 1 entity to be interactable at a time
#macro interactDistance 32//how far away can an entity be before it can no longer be interacted with?

global.items = ds_map_create()
topCol = -4
botCol = 0
lefCol = -4
rigCol = 4
tilemap = layer_tilemap_get_id(layer_get_id("Tiles"));

doShoot = false//if true, player will try to fire weapon
shootSpeed = 6//how fast do the projectiles go?
shootCooldownResetTo = 60
shootCooldown = 0

surface_resize(application_surface, 960, 540);//make gaem look kewl


global.clientPlayer = id//we don't have multiplayer yet but if we ever do this will be great to have. It's the client's player object.
























