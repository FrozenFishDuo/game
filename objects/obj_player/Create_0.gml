playerInfo = NewPlayerInfo()
playerInventory = NewPlayerInventory()


// this might be better in a struct
interactID = -1//-1 means nothing can be interacted with at the moment. we only want 1 entity to be interactable at a time
#macro interactDistance 32//how far away can an entity be before it can no longer be interacted with?
// this might be better in a struct


tilemap = layer_tilemap_get_id(layer_get_id("Tiles"));

surface_resize(application_surface, 960, 540);//make gaem look kewl


//global.clientPlayer = id//we don't have multiplayer yet but if we ever do this will be great to have. It's the client's player object.

























