//for sending packets
//async_packet = 0;
async_packet[data.packet_mode] = Packet_Mode(data.write);
show("Set packet_mode to " + string(async_packet[data.packet_mode]))

var packet_type = argument[0];
async_packet[data.packet_type] = packet_type

var packet_format = argument[1]

switch packet_format
    {
    //
    case data.position:
        {
        //this reserves x,y,vec_dir,vec_spd
        async_packet[data.get_x] = argument[2]
        async_packet[data.get_y] = argument[3]
        async_packet[data.get_vector_direction] = argument[4]
        async_packet[data.get_vector_speed] = argument[5]
        break
        }
    //
    default:
        {
        //for any other cases that aren't defined yet
        show("Received this many arguments: " + string(argument_count))
        for (i = 1;i < argument_count;i += 1)
            {
            var get_arg = data.packet_type + i;
            async_packet[get_arg] = argument[i]
            show("writing argument[" + string(i) + "] as value: " + string(argument[i]))
            }
        break
        }
    //
    }


Packet(async_packet)
