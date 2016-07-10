for (var i = 0;i < ds_list_size(entity_ship_list);i += 1)
    {
    var get_entity = ds_list_find_value(entity_ship_list,i)
    if !is_undefined(get_entity)
    Event_Step_Entity_Ship(get_entity)
    }

for (var i = 0;i < ds_list_size(entity_ship_list);i += 1)
    {
    var get_entity = ds_list_find_value(entity_ship_list,i)
    Entity_Ship_Update_Clients(get_entity)
    }
