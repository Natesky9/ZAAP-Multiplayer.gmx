var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_sss = buffer_read(client_bin,buffer_u8)
        var get_text = buffer_read(client_bin,buffer_string)
        console("Player [" + string(get_sss) + "]: " + get_text)
        
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var text = async_packet[data.arg_1]
        buffer_write(client_bout,buffer_string,text)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_sss = async_packet[data.packet_sss]
        var text = buffer_read(server_bin,buffer_string)
        console("Player [" + string(get_sss) + "]: " + text)
        
        Packet_Write(packet.chat_send,data.null,get_sss,text) 
        
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        var get_sss = async_packet[data.arg_1]
        var get_text = async_packet[data.arg_2]
        
        buffer_write(server_bout,buffer_u8,get_sss)
        buffer_write(server_bout,buffer_string,get_text)
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_chat_send@")
        }
    }
