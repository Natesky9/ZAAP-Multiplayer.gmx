var name = argument0
//create a menu, given the name of the menu
//the name will be the name of the file

var menu = ds_list_create()

ds_map_add(menu_names_to_string,menu,name)
ds_map_add(menu_names_to_list,name,menu)

console("Creating menu named '" + name + "'")

show("Created menu named: " + name + " with list value of: " + string(menu))

ds_list_add(menu_list,menu);

return menu
