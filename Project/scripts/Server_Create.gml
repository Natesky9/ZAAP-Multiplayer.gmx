server_bin = buffer_create(1024,buffer_fixed,1)
server_bout = buffer_create(1024,buffer_fixed,1)

playerlist = ds_list_create()

port = 2244
maxclients = 8

server = network_create_server(network_socket_tcp,port,maxclients)
