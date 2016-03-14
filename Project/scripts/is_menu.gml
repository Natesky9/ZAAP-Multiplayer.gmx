var text = argument0

var get_list = ds_map_find_value(menu_names_to_list,text)

if !is_undefined(get_list)
    {
    show("'" + text + "' is a menu!")
    return true
    }
else
    {
    console("'" + text + "' is not a menu!")
    return false
    }
