if Action == input_action.null
    {//if it is not selected, select it
    Action = input_action.view
    exit
    }

if Action == input_action.create
    {
    Action_Selection = entity.asteroid
    exit
    }
    
if Action == input_action.view
    {//if it is selected, toggle the sub-action
    show_asteroid = !show_asteroid
    console("Toggled showing asteroids")
    exit
    }

if Action = input_action.delete
    {
    console("click on an entity to delete")
    console("NYI")
    exit
    }
