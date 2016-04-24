var get_sss = argument0

ds_list_add(playerlist,get_sss)
var get_player = ds_map_create()
ds_map_add(get_player,"sss",get_sss)
ds_map_add(get_player,"Ping",-1)
ds_map_add(sss_map,get_sss,get_player)
console("Player [" + string(get_sss) + "] has joined")
