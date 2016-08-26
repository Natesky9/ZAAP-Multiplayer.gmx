var get_entity = argument0

var pos = ds_list_find_index(entity_ship_list,get_entity)
if pos != -1
    {
    show("Deleting ship")
    ds_list_delete(entity_ship_list,pos)
    Entity_Clear_Primary(get_entity)
    destroy_map(get_entity)
    }
else
    {
    show("Error, This ship did not exist!")
    }
