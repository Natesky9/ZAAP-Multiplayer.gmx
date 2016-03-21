//searches through the current menu for the function
//returns the first value found of said function

var search = argument0

var current_menu = ds_stack_top(menu_stack)

for (i = 0;i < ds_list_size(current_menu);i += 1)
    {
    var button = ds_list_find_value(current_menu,i)
    var get_function = ds_map_find_value(button,"function")
    if get_function == search
        {
        var value = ds_map_find_value(button,"value")
        return value
        }
    }
return ""
