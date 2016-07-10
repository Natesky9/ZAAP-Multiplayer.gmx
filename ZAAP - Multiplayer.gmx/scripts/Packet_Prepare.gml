var async_packet = argument0
var packet_mode = async_packet[data.packet_mode]

switch packet_mode
    {
    case data.client_read:
        {
        client_bin = ds_map_find_value(async_load,"buffer")
        seek(client_bin)
        var type = buffer_read(client_bin,buffer_u8)
        return type
        }
    case data.client_write:
        {
        seek(client_bout)
        var type = async_packet[data.packet_type]
        client_packet_write(type)
        return type
        }
    case data.server_read:
        {
        server_bin = ds_map_find_value(async_load,"buffer")
        seek(server_bin)
        var type = buffer_read(server_bin,buffer_u8)
        return type
        }
    case data.server_write:
        {
        seek(server_bout)
        var type = async_packet[data.packet_type]
        server_packet_write(type)
        return type
        }
    default:
        {
        show("Error in Packet_Prepare")
        }
    }
