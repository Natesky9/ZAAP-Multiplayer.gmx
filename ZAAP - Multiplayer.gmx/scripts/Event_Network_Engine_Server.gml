var event = ds_map_find_value(async_load,"type")
switch (event)
    {
//--------------------------------//
    case network_type_connect:
        {
        console("Player attempting to connect...")
        var new_sss = ds_map_find_value(async_load,"socket")
        
        Packet_Write(packet.sss_assign,data.null,new_sss)
        Packet_Write(packet.sss_load,data.null,new_sss)
        
        sss_connect(new_sss)
        Packet_Write(packet.sss_add,data.null,new_sss)
        
        Packet_Write(packet.entity_load_projectile,data.null,new_sss)
        Packet_Write(packet.entity_load_object,data.null,new_sss)
        Packet_Write(packet.entity_load_asteroid,data.null,new_sss)
        Packet_Write(packet.entity_load_ship,data.null,new_sss)
        Packet_Write(packet.entity_load_station,data.null,new_sss)
        Packet_Write(packet.entity_load_star,data.null,new_sss)
        Packet_Write(packet.entity_load_vortex,data.null,new_sss)
        
        var get_ip = ds_map_find_value(async_load,"ip")
        console("Player connected with ip [" + get_ip + "]")
        exit
        }
//--------------------------------//
    case network_type_disconnect:
        {
        var get_sss = ds_map_find_value(async_load,"socket")
        //remove the socket
        Packet_Write(packet.sss_remove,data.null,get_sss)
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
