


port = 2244
maxclients = 8

server = network_create_server(network_socket_tcp,port,maxclients)
console("Created Server with socket id " + string(server))
