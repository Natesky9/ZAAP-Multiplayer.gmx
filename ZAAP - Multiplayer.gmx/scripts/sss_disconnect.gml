var get_sss = argument0

var pos = ds_list_find_index(playerlist,get_sss)
if pos != -1
    {
    ds_list_delete(playerlist,pos)
    console("Player [" + string(get_sss) + "] disconnected!")
    }
else
    {
    console("Error, Player not existed")
    }
var get_player = ds_map_find_value(sss_map,get_sss)
ds_map_destroy(get_player)