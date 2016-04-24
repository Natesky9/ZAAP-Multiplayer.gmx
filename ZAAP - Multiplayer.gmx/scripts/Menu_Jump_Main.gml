ds_stack_clear(menu_stack)
var menu = ds_map_find_value(menu_names_to_list,"main_menu")
ds_stack_push(menu_stack,menu)
