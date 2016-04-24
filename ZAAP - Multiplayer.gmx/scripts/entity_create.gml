var type = argument[0]

switch type
    {
//----------------------------------------------------------------//
    case entity.asteroid:
        {
        show("This is an asteroid")
        var get_x = argument[1]
        var get_y = argument[2]
        var get_entity = ds_map_create()
        ds_map_add(get_entity,"x",get_x)
        ds_map_add(get_entity,"y",get_y)
        //add map for vector
        ds_list_add(entity_asteroid_list,get_entity)
        return get_entity
        }
//----------------------------------------------------------------//
    default:
        {
        show("Error! This entity does not have an entity_create entry!")
        exit
        }
    
    }
