//send server packet to all connected players
for (i = 0;i < ds_list_size(playerlist);i += 1)
        {
        var send_to_socket = ds_list_find_value(playerlist,i)
        server_send_packet(send_to_socket)
        }
