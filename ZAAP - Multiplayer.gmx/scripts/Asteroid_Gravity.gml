var get_entity = argument0

//change this to use the primary instead of gravitating toward any list


if asteroid_gravity_affects_asteroid
Gravitate(get_entity,entity_asteroid_list)

if asteroid_gravity_affects_ship
Gravitate(get_entity,entity_ship_list)

if asteroid_gravity_affects_station
Gravitate(get_entity,entity_station_list)

if asteroid_gravity_affects_vortex
Gravitate(get_entity,entity_vortex_list)
