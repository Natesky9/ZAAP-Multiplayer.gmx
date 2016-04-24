//send a packet from the client to the server
//since the target will always be Connection, there is no arguments
network_send_packet(connection,client_bout,buffer_tell(client_bout))
