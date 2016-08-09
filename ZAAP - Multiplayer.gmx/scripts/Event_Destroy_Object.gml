var get_entity = argument0

var pos = ds_list_find_index(entity_object_list,get_entity)
if pos != -1
    {
    show("Deleting object")
    ds_list_delete(entity_object_list,pos)
    destroy_map(get_entity)
    }
else
    {
    show("Error, This object did not exist!")
    }
