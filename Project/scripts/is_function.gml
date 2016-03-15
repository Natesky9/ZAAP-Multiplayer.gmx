var text = argument0

if ds_list_find_index(function_list,text) >= 0
    {
    show("'" + text + "' is a valid function!")
    return true
    }
else
    {
    console("'" + text + "' is not a function")
    return false
    }
