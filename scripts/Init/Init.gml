// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
gml_pragma("global", "Init()");
function Init(){
	// Generate Rooms
	global.MAX_ROOMS = 16;
	global.Rooms = [];
	for (var i = 0; i < global.MAX_ROOMS; i+=1){
		global.Rooms[i] = room_add();
	}
	
	
	//Player Infos
	global.Player_HealthLimit = 5;
}