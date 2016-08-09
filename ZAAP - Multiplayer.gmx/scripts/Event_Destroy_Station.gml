var get_entity = argument0

var pos = ds_list_find_index(entity_station_list,get_entity)
if pos != -1
    {
    show("Deleting station")
    ds_list_delete(entity_station_list,pos)
    destroy_map(get_entity)
    }
else
    {
    show("Error, This station did not exist!")
    }
