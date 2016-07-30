for (var i = 0;i < ds_list_size(entity_ship_list);i += 1)
    {//ship step
    var get_entity = ds_list_find_value(entity_ship_list,i)
    if !is_undefined(get_entity)
    Event_Step_Entity_Ship(get_entity)
    }

for (var i = 0;i < ds_list_size(entity_vortex_list);i += 1)
    {//vortex step
    var get_entity = ds_list_find_value(entity_vortex_list,i)
    if !is_undefined(get_entity)
    Event_Step_Entity_Vortex(get_entity)
    }

for (var i = 0;i < ds_list_size(entity_asteroid_list);i += 1)
    {//asteroid step
    var get_loop_entity = ds_list_find_value(entity_asteroid_list,i)
    if !is_undefined(get_loop_entity)
    Event_Step_Entity_Asteroid(get_loop_entity)
    }

for (var i = 0;i < ds_list_size(entity_ship_list);i += 1)
    {
    var get_entity = ds_list_find_value(entity_ship_list,i)
    Entity_Ship_Update_Clients(get_entity)
    }

if mouse_check_button(mb_middle)
    {
    view_xview[0] += pan_x - mouse_x
    view_yview[0] += pan_y - mouse_y
    }
