draw_set_color(c_black)
draw_circle(room_width/2,room_height/2,100,true)

for (i = 0;i < ds_list_size(playerlist);i += 1)
    {
    var player = ds_list_find_value(playerlist,i)
    draw_text(room_width/2,room_height/2+8*i,player)
    }
