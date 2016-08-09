if Action == input_action.null
    {//if it is not selected, select it
    Action = input_action.edit
    exit
    }
        
if Action == input_action.view
    {
    show_station = !show_station
    console("Toggled showing stations")
    exit
    }

if Action == input_action.create
    {
    Action_Selection = entity.station
    console("Stations NYI")
    exit
    }

if Action == input_action.delete
    {
    Action_Selection = entity.station
    console("NYI")
    exit
    }
