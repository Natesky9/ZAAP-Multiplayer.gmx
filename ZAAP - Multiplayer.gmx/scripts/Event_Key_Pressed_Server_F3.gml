if Action == input_action.null
    {
    Action = input_action.delete
    exit
    }

if Action == input_action.create
    {
    Action_Selection = entity.vortex
    exit
    }

if Action == input_action.view
    {
    show_vortex = !show_vortex
    console("Toggled showing vortexes")
    exit
    }

if Action == input_action.delete
    {
    console("Click on an entity to delete")
    console("NYI")
    exit
    }
