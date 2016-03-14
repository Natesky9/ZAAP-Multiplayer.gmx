ini_open("Config.ini");

var i = 0;
while ini_key_exists("menu","Menu number " + string(i))
    {
    i += 1;
    }
var name = ds_map_find_value(menu_names_to_string,argument0);
show("proving = " + name);
ini_write_string("menu","Menu number " + string(i),name);
ini_close();
