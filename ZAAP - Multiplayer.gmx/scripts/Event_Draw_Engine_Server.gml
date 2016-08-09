draw_set_color(c_black)
draw_circle(room_width/2,room_height/2,100,true)
//move this to debug window
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
var text = "[maps: " + string(number_of_maps) + " ]"
draw_set_color(c_black)
draw_text(room_width/2,room_height/2,text)

