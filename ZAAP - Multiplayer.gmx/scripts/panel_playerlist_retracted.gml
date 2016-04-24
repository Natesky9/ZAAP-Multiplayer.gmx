var players = ds_list_size(playerlist)

panel_playerlist_x1 = 0
panel_playerlist_y1 = 0
panel_playerlist_x2 = 64
panel_playerlist_y2 = 64

draw_set_color(c_teal)
draw_rectangle(panel_playerlist_x1,panel_playerlist_y1,
panel_playerlist_x2,panel_playerlist_y2,false)
draw_set_color(c_black)
draw_rectangle(panel_playerlist_x1,panel_playerlist_y1,
panel_playerlist_x2,panel_playerlist_y2,true)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(32,16,"~")
var text = "[" + string(players) + "]#Players"
draw_text(32,48,text)
