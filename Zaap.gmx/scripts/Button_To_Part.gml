t = argument0
p = string_digits(string_copy(t,
        string_pos("button",t),
        string_length(t)-string_pos("button",t)+1))
return real(p)
