var text = keyboard_string

console(keyboard_string)

keyboard_string = ""

if string_pos("/",text) == 1
    {
    console("Found command!")
    
    //get the command
    var i = 2 //the slash is 1
    while (string_char_at(text,i) != " ") && (i < string_length(text))
        {
        i += 1
        }
    
    var function = string_copy(text,2,i-1)
    var function_argument = string_delete(text,1,i)
    
    //display the function
    console("----");
    console(function);
    console("----");
    console(function_argument)
    console("----")
    //end displaying the function

    Console_Command(function,function_argument)
    }
