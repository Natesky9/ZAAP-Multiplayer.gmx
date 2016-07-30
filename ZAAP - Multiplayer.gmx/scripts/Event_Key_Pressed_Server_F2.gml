if Action == input_action.null
    {//if it is not selected, select it
    Action = input_action.create
    exit
    }
if Action == input_action.create
    {
    Action_Selection = entity.ship
    exit
    }

if Action == input_action.view
    {
    show_ship = !show_ship
    console("Toggled showing ships")
    exit
    }

if Action == input_action.delete
    {
    console("click on an entity to delete")
    console("NYI")
    exit
    }
