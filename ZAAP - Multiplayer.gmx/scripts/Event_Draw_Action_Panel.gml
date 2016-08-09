draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var get_text

draw_input_action_panel()



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
        
        draw_set_alpha(.5)
        text = "projectile"
        if show_projectile
            {
            draw_set_alpha(1)
            text += '[' + string(ds_list_size(entity_projectile_list)) + ']'
            }
        draw_text(0,128,text)
        
        draw_set_alpha(.5)
        text = "object"
        if show_object
            {
            draw_set_alpha(1)
            text += '[' + string(ds_list_size(entity_object_list)) + ']'
            }
        draw_text(0,128+16,text)
        
        draw_set_alpha(.5)
        text = "asteroid"
        if show_asteroid
            {
            draw_set_alpha(1)
            text += '[' + string(ds_list_size(entity_asteroid_list)) + ']'
            }
        draw_text(0,128+32,text)
        
        draw_set_alpha(.5)
        text = "ship"
        if show_ship
            {
            draw_set_alpha(1)
            text += '[' + string(ds_list_size(entity_ship_list)) + ']'
            }
        draw_text(0,128+48,text)
        
        draw_set_alpha(.5)
        text = "station"
        if show_station
            {
            draw_set_alpha(1)
            text += '[' + string(ds_list_size(entity_station_list)) + ']'
            }
        draw_text(0,128+64,text)
        
        draw_set_alpha(.5)
        text = "star"
        if show_star
            {
            draw_set_alpha(1)
            text += '[' + string(ds_list_size(entity_star_list)) + ']'
            }
        draw_text(0,128+64+16,text)
        
        draw_set_alpha(.5)
        text = "vortex"
        if show_vortex
            {
            draw_set_alpha(1)
            text += '[' + string(ds_list_size(entity_vortex_list)) + ']'
            }
        draw_text(0,128+64+32,text)
        //end drawing
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
                get_text = "entity.null"
                draw_text(mouse_x,mouse_y+32,get_text)
                break
                }
            //
            case entity.asteroid:
                {
                if !mouse_check_button(mb_left)
                    {
                    get_text = "entity.asteroid"
                    draw_text(mouse_x,mouse_y+32,get_text)
                    }
                break
                }
            //
            case entity.ship:
                {
                get_text = "entity.ship"
                draw_text(mouse_x,mouse_y+32,get_text)
                break
                }
            //
            case entity.vortex:
                {
                get_text = "entity.vortex"
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
