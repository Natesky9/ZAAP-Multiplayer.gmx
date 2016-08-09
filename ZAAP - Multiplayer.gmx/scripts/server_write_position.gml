var async_packet = argument0

server_write_f32(async_packet[data.get_x])
server_write_f32(async_packet[data.get_y])
server_write_f32(async_packet[data.get_vector_direction])
server_write_f32(async_packet[data.get_vector_speed])
