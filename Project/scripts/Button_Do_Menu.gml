var get_button = argument0

var get_do = ds_map_find_value(get_button,"function")

var get_menu = ds_map_find_value(menu_names_to_list,get_do)
if !is_undefined(get_menu)
    {
    console("Going to menu: " + get_do)
    ds_stack_push(menu_stack,get_menu)
    return true
    }
