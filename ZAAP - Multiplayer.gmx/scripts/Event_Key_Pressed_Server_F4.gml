if Action == input_action.null
    {
    Action = input_action.move
    exit
    }

if Action == input_action.create
    {
    Action_Selection = entity.star
    console("NYI")
    exit
    }

if Action == input_action.view
    {
    show_star = !show_star
    console("Toggled showing stars")
    exit
    }

if Action == input_action.delete
    {
    console("Click on an entity to delete")
    console("NYI")
    exit
    }
