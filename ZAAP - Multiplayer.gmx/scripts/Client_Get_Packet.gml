//client receive packet
//get the source and buffer
sss = ds_map_find_value(async_load,"id")


//the type is now read

switch type
    {

//----------------------------------------------------------------//
    case packet.chat_send:
        {exit}
//----------------------------------------------------------------//
//----------------------------------------------------------------//


//----------------------------------------------------------------//
    case packet.sss_add:
        {
        var new_sss = buffer_read(client_bin,buffer_u8)
        ds_list_add(playerlist,new_sss)
        console("Added to playerlist: " + string(new_sss))
        exit
        }
//----------------------------------------------------------------//
    case packet.sss_remove:
        {
        var old_sss = buffer_read(client_bin,buffer_u8)
        var pos = ds_list_find_index(playerlist,old_sss)
        if pos != -1
            {
            ds_list_delete(playerlist,pos)
            console("A player has disconnected!")
            }
        else
            {
            show("ERROR! This SSS did not exist!")
            console("An error has been encountered with a disconnecting socket")
            }
        exit
        }
    }
