var event = ds_map_find_value(async_load,"type")
switch (event)
    {
//--------------------------------//
    case network_type_connect:
        {
        console("Player attempting to connect...")
        var new_sss = ds_map_find_value(async_load,"socket")
        
        Packet_Write(packet.sss_assign,new_sss)
        Packet_Write(packet.sss_load,new_sss)
        
        sss_connect(new_sss)
        Packet_Write(packet.sss_add,new_sss)
        
        //Packet_Write(packet.entity_load_projectile,new_sss)
        //Packet_Write(packet.entity_load_object,new_sss)
        Packet_Write(packet.entity_load_asteroid,new_sss)
        Packet_Write(packet.entity_load_ship,new_sss)
        //Packet_Write(packet.entity_load_station,new_sss)
        //Packet_Write(packet.entity_load_star,new_sss)
        Packet_Write(packet.entity_load_vortex,new_sss)
        
        var get_ip = ds_map_find_value(async_load,"ip")
        console("Player connected with ip [" + get_ip + "]")
        exit
        }
//--------------------------------//
    case network_type_disconnect:
        {
        var get_sss = ds_map_find_value(async_load,"socket")
        //remove the socket
        Packet_Write(packet.sss_remove,get_sss)
        exit
        }
//--------------------------------//
    case network_type_data:
        {
        var get_sss = ds_map_find_value(async_load,"id")
        Packet_Read(get_sss)
        exit
        }
//--------------------------------//
    }
