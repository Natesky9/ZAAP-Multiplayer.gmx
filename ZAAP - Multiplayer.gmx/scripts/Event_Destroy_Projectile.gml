var get_entity = argument0

var pos = ds_list_find_index(entity_projectile_list,get_entity)
if pos != -1
    {
    show("Deleting projectile")
    ds_list_delete(entity_projectile_list,pos)
    destroy_map(get_entity)
    }
else
    {
    show("Error, This projectile did not exist!")
    }
