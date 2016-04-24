var get_sss = argument[0]
//async_packet = 0;
var packet_mode = Packet_Mode(data.read);
async_packet[data.packet_mode] = packet_mode;

async_packet[data.packet_sss] = get_sss;
Packet(async_packet)
