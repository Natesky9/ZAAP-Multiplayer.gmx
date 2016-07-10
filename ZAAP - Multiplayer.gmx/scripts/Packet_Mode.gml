//universal packet send/read script
var packet_mode = argument[0]
var engine_mode = ds_stack_top(menu_stack)

switch engine_mode
    {
//--------------------------------//
    case "Client_Window":
        {
        switch packet_mode
            {
            case data.read:
                {
                show("data.client_read")
                show(string(data.client_read))
                return data.client_read
                }
            case data.write:
                {
                show("data.client_write")
                show(string(data.client_write))
                return data.client_write
                }
            }
        exit
        }
//--------------------------------//
    case "Server_Window":
        {
        switch packet_mode
            {
            case data.read:
                {
                show("data.server_read")
                show(string(data.server_read))
                return data.server_read
                }
            case data.write:
                {
                show("data.server_write")
                show(string(data.server_write))
                return data.server_write
                }
            }
        exit
        }
//--------------------------------//
    default:
        {
        show("Error at Packet Script, engine not in a valid mode!")
        show("Current engine mode: " + engine_mode)
        exit
        }
//--------------------------------//
    }
