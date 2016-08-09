var get_list
//
get_list = entity_projectile_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        Event_Step_Entity_Projectile(get_entity)
    }
//
get_list = entity_object_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        Event_Step_Entity_Object(get_entity)
    }
//
get_list = entity_asteroid_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        Event_Step_Entity_Asteroid(get_entity)
    }
//
get_list = entity_ship_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        Event_Step_Entity_Ship(get_entity)
    }
//
get_list = entity_station_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        Event_Step_Entity_Station(get_entity)
    }
//
get_list = entity_star_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        Event_Step_Entity_Star(get_entity)
    }
//
get_list = entity_vortex_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        Event_Step_Entity_Vortex(get_entity)
    }
//

