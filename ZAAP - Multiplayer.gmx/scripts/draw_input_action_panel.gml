draw_set_font(Courier)
var get_width = display_get_gui_width()
var get_width_10 = get_width/10
var get_width_11 = get_width/11

draw_set_color(c_lime)
draw_rectangle(get_width_10*2,0,get_width_10*9,32,false)
draw_set_color(c_black)
draw_rectangle(get_width_10*2,0,get_width_10*9,32,true)
//
draw_set_alpha(.5)
if Action == input_action.view
    draw_set_alpha(1)
get_text = "view"
draw_text(get_width_10*3,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.create
    draw_set_alpha(1)
get_text = "create"
draw_text(get_width_10*4,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.delete
    draw_set_alpha(1)
get_text = "delete"
draw_text(get_width_10*5,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.move
    draw_set_alpha(1)
get_text = "move"
draw_text(get_width_10*6,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.edit
    draw_set_alpha(1)
get_text = "edit"
draw_text(get_width_10*7,16,get_text)
//
draw_set_alpha(.5)
if Action == input_action.copy
    draw_set_alpha(1)
get_text = "copy"
draw_text(get_width_10*8,16,get_text)
//

draw_set_alpha(1)
draw_set_color(c_lime)
draw_rectangle(get_width_11*2,32,get_width_11*10,64,false)
draw_set_color(c_black)
draw_rectangle(get_width_11*2,32,get_width_11*10,64,true)
//

//
draw_set_alpha(.5)
if Action_Selection == entity.projectile
    draw_set_alpha(1)
get_text = "projectile"
draw_text(get_width_11*3,48,get_text)
//
draw_set_alpha(.5)
if Action_Selection == entity.object
    draw_set_alpha(1)
get_text = "object"
draw_text(get_width_11*4,48,get_text)
//
draw_set_alpha(.5)
if Action_Selection == entity.asteroid
    draw_set_alpha(1)
get_text = "asteroid"
draw_text(get_width_11*5,48,get_text)
//
draw_set_alpha(.5)
if Action_Selection == entity.ship
    draw_set_alpha(1)
get_text = "ship"
draw_text(get_width_11*6,48,get_text)
//
draw_set_alpha(.5)
if Action_Selection == entity.station
    draw_set_alpha(1)
get_text = "station"
draw_text(get_width_11*7,48,get_text)
//
draw_set_alpha(.5)
if Action_Selection == entity.star
    draw_set_alpha(1)
get_text = "star"
draw_text(get_width_11*8,48,get_text)
//
draw_set_alpha(.5)
if Action_Selection == entity.vortex
    draw_set_alpha(1)
get_text = "vortex"
draw_text(get_width_11*9,48,get_text)
//
draw_set_alpha(1)
