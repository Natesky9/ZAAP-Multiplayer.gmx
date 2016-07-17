var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var size = buffer_read(client_bin,buffer_u8)
        
        for (i = 0;i < size;i += 1)
            {
            var get_sss = buffer_read(client_bin,buffer_u8)
            ds_list_add(playerlist,get_sss)
            get_player = create_map()
            ds_map_add(sss_map,get_sss,get_player)
            ds_map_add(get_player,"sss",get_sss)
            var get_Ping = buffer_read(client_bin,buffer_u8)
            ds_map_add(get_player,"Ping",get_Ping)
            
            }
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        exit
        }
//================================//
    case data.server_read:
        {
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        var get_sss = async_packet[data.arg_1]
        var size = ds_list_size(playerlist)
        
        buffer_write(server_bout,buffer_u8,size)
        for (i = 0;i < size;i += 1)
            {
            var find_sss = ds_list_find_value(playerlist,i)
            buffer_write(server_bout,buffer_u8,find_sss)
            //add load functions here
            var get_player = ds_map_find_value(sss_map,find_sss)
            var get_Ping = ds_map_find_value(get_player,"Ping")
            buffer_write(server_bout,buffer_u8,get_Ping)
            }
        server_send_packet(get_sss)
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_sss_load@")
        }
    }
