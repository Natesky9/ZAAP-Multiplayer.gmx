client_socket = network_create_socket(network_socket_tcp)
var ip = argument0
console("Attempting connection at " + ip + "...")
connection = network_connect(client_socket,ip,2244)
if connection >= 0
    {
    show("Client created network socket with id of: " + string(connection))
    console("Connection Successful!")
    return true
    }
else
    {
    console("Connection Failed!")
    return false
    }

