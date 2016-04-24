var players = ds_list_size(playerlist)
var mode = ds_stack_top(menu_stack)
var xoff

panel_playerlist_x1 = 0
panel_playerlist_y1 = 0
panel_playerlist_x2 = 192
panel_playerlist_y2 = max(32*players,64)

//draw the background
draw_set_color(c_teal)
draw_rectangle(panel_playerlist_x1,panel_playerlist_y1,
panel_playerlist_x2,panel_playerlist_y2,false)


draw_set_halign(fa_left)
draw_set_valign(fa_middle)
for (i = 0;i < players;i += 1)
    {
    var pos = mouse_y div 32 
    if pos == i
        {
        if mode == "Server_Window"
            {
            xoff = 32
            draw_set_color(c_lime)
            draw_rectangle(0 + xoff,32*i + 8,192,32*i + 24,false)
            draw_set_color(c_red)
            panel_playerlist_kick_icon(0,32*i,32,32*i+32)
            
            }
        if mode == "Client_Window"
            {
            xoff = 0
            draw_set_color(c_lime)
            draw_rectangle(0,32*i + 8,192,32*i + 24,false)
            }
        }
    else
        {
        xoff = 0
        draw_set_color(c_green)
        draw_rectangle(0,32*i + 8,192,32*i + 24,false)
        }
    
    
    var get_sss = ds_list_find_value(playerlist,i)
    var get_player = ds_map_find_value(sss_map,get_sss)
    
    if get_sss == SSS
        {
        draw_set_color(c_dkgray)
        }
    else
        {
        draw_set_color(c_ltgray)
        }
    var text = "Player[" + string(get_sss) + "]"
    draw_text(0 + xoff,32*i+16,text)
    var text = "Ping: " + string(ds_map_find_value(get_player,"Ping"))
    draw_text(112,32*i+16,text)
    }

//draw the background border
draw_set_color(c_black)
draw_rectangle(panel_playerlist_x1,panel_playerlist_y1,
panel_playerlist_x2,panel_playerlist_y2,true)
//end background border
