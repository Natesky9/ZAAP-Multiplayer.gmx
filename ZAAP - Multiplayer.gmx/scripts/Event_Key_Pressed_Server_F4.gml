if Action == input_action.null
    {
    Action = input_action.move
    exit
    }
    
if Action == input_action.view
    {
    show_ship = !show_ship
    console("Toggled showing ships")
    exit
    }
    
if Action == input_action.create
    {
    Action_Selection = entity.ship
    console("Halfway Implimented")
    exit
    }



if Action == input_action.delete
    {
    Action_Selection = entity.ship
    console("NYI")
    exit
    }
