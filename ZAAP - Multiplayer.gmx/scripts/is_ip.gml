var get_ip = argument0

//if it contains NO letters
if string_letters(get_ip) == ""
//if it is in the correct format
&& string_count(".",get_ip) == 3
//if it has at least one number
&& real(string_digits(get_ip)) > 0
    {
    //--------------------------------
    //step one verification
    show("step one verification passed")
    var last_pos = 0
    for (i = 1;i <= string_length(get_ip);i += 1)
        {
        show("Got: " + string_copy(get_ip,i,1))
        if string_char_at(get_ip,i) == "."
            {
            last_pos = i
            if string_char_at(get_ip,i+1) == "."
                {
                show("found error! Two dots next to each other")
                }
            }
        else
            {
            var text = string_copy(get_ip,last_pos+1,i-last_pos)
            show("current string is: " + text)
            if real(text) < 0 || real(text) > 255
                {
                show("found error! at " + text)
                return false
                }
            }
        }
    return true
    //--------------------------------
    }
else
    {
    show("INVALID IP")
    return false
    }
    
    

