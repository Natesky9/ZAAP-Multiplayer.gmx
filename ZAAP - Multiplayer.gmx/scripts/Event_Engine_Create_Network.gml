//Networking
ssn_map = create_map()
sss_map = create_map()
playerlist = ds_list_create()
client_bin = buffer_create(1024,buffer_grow,1)
client_bout = buffer_create(1024,buffer_grow,1)
server_bin = buffer_create(1024,buffer_grow,1)
server_bout = buffer_create(1024,buffer_grow,1)
async_packet = 0

entity_ship_controllers = create_map()
//entity_station_controllers = create_map()
