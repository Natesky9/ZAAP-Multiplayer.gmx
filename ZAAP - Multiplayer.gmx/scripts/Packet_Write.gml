//for sending packets
//async_packet = 0;
async_packet[data.packet_mode] = Packet_Mode(data.write);
show("Set packet_mode to " + string(async_packet[data.packet_mode]))
async_packet[data.packet_type] = argument[0]

show("Received this many arguments: " + string(argument_count))
for (i = 1;i < argument_count;i += 1)
    {
    var get_arg = data.packet_type + i;
    async_packet[get_arg] = argument[i]
    show("writing argument[" + string(i) + "] as value: " + string(argument[i]))
    }

Packet(async_packet)
