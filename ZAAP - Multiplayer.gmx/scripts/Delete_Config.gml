ini_open("Config.ini")

var i = 0
while ini_key_exists("menu","Menu number " + string(i))
    {
    var name = ini_read_string("menu","Menu number " + string(i),"ERROR")
    show("I got " + name)
    file_delete(name + ".ini")
    show("Deleting " + name + ".ini")
    i += 1
    }
ini_close()
file_delete("Config.ini")

//clear the resources
var num = ds_list_size(menu_list)
show("Menu_list is " + string(num) + " long!")
for (var i = 0;i < num;i += 1)
    {
    console("num " + string(i))
    var get_menu = ds_list_find_value(menu_list,i)
    for (var j = 0;j < ds_list_size(get_menu);j += 1)
        {
        var get_map = ds_list_find_value(get_menu,0)
        console("deleting " + string(get_map))
        ds_map_destroy(get_map)
        ds_list_delete(get_menu,0)
        }
    }
console("Resources Cleared!")

for (var i = 0;i < num;i += 1)
    {//delete the menu
    var get_menu = ds_list_find_value(menu_list,i)
    menu_destroy(get_menu)
    }
ds_list_clear(menu_list)

Config_Generate()
