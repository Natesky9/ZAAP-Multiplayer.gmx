if Action == input_action.null
    {
    Action = input_action.delete
    exit
    }

if Action == input_action.create
    {
    Action_Selection = entity.asteroid
    console("Implimented!")
    exit
    }

if Action == input_action.view
    {
    show_asteroid = !show_asteroid
    console("Toggled showing asteroids")
    exit
    }

if Action == input_action.delete
    {
    Action_Selection = entity.asteroid
    exit
    }
