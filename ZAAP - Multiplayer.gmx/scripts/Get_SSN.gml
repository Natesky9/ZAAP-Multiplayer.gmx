var get_ssn = ds_map_find_value(Ship_Control,"ssn")
if is_undefined(get_ssn)
    {
    show("Error, this ship does not have a SSN")
    return false
    }
return get_ssn
