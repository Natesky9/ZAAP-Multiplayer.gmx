draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var get_text


var get_width = view_wview[0]/10
draw_set_color(c_lime)
draw_rectangle(get_width*2,0,get_width*9,32,false)
draw_set_color(c_black)
draw_rectangle(get_width*2,0,get_width*9,32,true)
//
draw_set_alpha(.5)
if Action == input_action.view
    draw_set_alpha(1)
get_text = "view"
draw_text(get_width*3,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.create
    draw_set_alpha(1)
get_text = "create"
draw_text(get_width*4,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.delete
    draw_set_alpha(1)
get_text = "delete"
draw_text(get_width*5,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.move
    draw_set_alpha(1)
get_text = "move"
draw_text(get_width*6,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.edit
    draw_set_alpha(1)
get_text = "edit"
draw_text(get_width*7,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.copy
    draw_set_alpha(1)
get_text = "copy"
draw_text(get_width*8,16,get_text)
//



switch Action
    {
    //--------//
    case input_action.null:
        {
        get_text = "action.null"
        draw_text(mouse_x,mouse_y,get_text)
        
        break;
        }
    //--------//
    case input_action.view:
        {
        get_text = "action.view"
        draw_text(mouse_x,mouse_y,get_text)
        
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        var text
        
        draw_set_alpha(1)
        if !show_projectile
        draw_set_alpha(.5)
        text = "projectile"
        draw_text(0,128,text)
        
        draw_set_alpha(1)
        if !show_object
        draw_set_alpha(.5)
        text = "object"
        draw_text(0,128+16,text)
        
        draw_set_alpha(1)
        if !show_asteroid
        draw_set_alpha(.5)
        text = "asteroid"
        draw_text(0,128+32,text)
        
        draw_set_alpha(1)
        if !show_ship
        draw_set_alpha(.5)
        text = "ship"
        draw_text(0,128+48,text)
        
        draw_set_alpha(1)
        if !show_station
        draw_set_alpha(.5)
        text = "station"
        draw_text(0,128+64,text)
        
        draw_set_alpha(1)
        if !show_star
        draw_set_alpha(.5)
        text = "star"
        draw_text(0,128+64+16,text)
        
        draw_set_alpha(1)
        if !show_vortex
        draw_set_alpha(.5)
        text = "vortex"
        draw_text(0,128+64+32,text)
        
        draw_set_alpha(1)
        
        
        break
        }
    //--------//
    case input_action.create:
        {
        get_text = "action.create"
        draw_text(mouse_x,mouse_y,get_text)
        
        switch Action_Selection
            {
            //
            case entity.null:
                {
                get_text = "F keys to choose entity"
                draw_text(mouse_x,mouse_y+32,get_text)
                break
                }
            //
            case entity.asteroid:
                {
                if !mouse_check_button(mb_left)
                    {
                    get_text = "click and drag"
                    draw_text(mouse_x,mouse_y+32,get_text)
                    }
                break
                }
            //
            case entity.ship:
                {
                get_text = "define a ship grid first!"
                draw_text(mouse_x,mouse_y+32,get_text)
                break
                }
            //
            case entity.vortex:
                {
                get_text = "define a mass first!"
                draw_text(mouse_x,mouse_y+32,get_text)
                break
                }
            }
        break
        }
    //--------//
    case input_action.delete:
        {
        get_text = "action.delete"
        draw_text(mouse_x,mouse_y,get_text)
        break
        }
    //--------//
    }
