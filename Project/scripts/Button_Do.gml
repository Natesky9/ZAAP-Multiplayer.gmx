var get_button = argument0
var done

if keyboard_check(vk_shift)
    {
    //edit the button
    var edit_menu = ds_map_find_value(menu_names_to_list,"edit_menu")
    ds_stack_push(menu_stack,edit_menu)
    selected_button = get_button
    var name = ds_map_find_value(selected_button,"text")
    console("Now editing button named '" + name + "' with value of '" + string(selected_button))
    exit
    }

//find the menu it's pointing to
done = Button_Do_Menu(get_button)
show("Button_Do_Menu is " + string(done))

if !done 
done = Button_Do_Function(get_button)
show("Button_Do_Function is " + string(done))
   
if !done show_debug_message("This button doesn't do anything!")
