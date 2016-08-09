if Action == input_action.null
    {//if it is not selected, select it
    Action = input_action.copy
    console("NYI")
    exit
    }
    
if Action == input_action.view
    {
    show_star = !show_star
    console("Toggled showing stars")
    exit
    }
    
if Action == input_action.create
    {
    Action_Selection = entity.star
    exit
    }

if Action == input_action.delete
    {
    Action_Selection = entity.star
    console("NYI")
    exit
    }
