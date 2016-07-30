var value = 10

if keyboard_check(vk_shift)
    {
    value = 100

    if keyboard_check(vk_control)
        {
        var get_width = view_wview[0]/10;
        var get_height = view_hview[0]/10;
        
        view_xview[0] -= get_width
        view_yview[0] -= get_height
        view_wview[0] += get_width*2
        view_hview[0] += get_height*2
        
        exit
        }
    }

view_xview[0] -= value
view_yview[0] -= value
view_wview[0] += value*2
view_hview[0] += value*2

show("mouse wheel up")
