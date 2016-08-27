if !(lifetime mod 60)
    {
    for (var b = 0;b < ds_list_size(entity_ship_list);b += 1)
        {
        //
        var get_entity = ds_list_find_value(entity_ship_list,b)
    
        Packet_Write(packet.entity_update_ship,data.null,
        get_entity,)
        }
    }
