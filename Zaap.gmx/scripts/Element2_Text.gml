text = argument[0]
//text is the (1st) argument
if argument_count > 1
    {//set the alignment from the (2nd) argument
    style = argument[1]
    if string_pos("top",style)
        {//top
        draw_set_valign(fa_top)
        text_y = shipyard_y1 + 8
        }
    if string_pos("middle",style)
        {//middle
        draw_set_valign(fa_middle)
        text_y = mean(shipyard_y1,shipyard_y2)
        }
    if string_pos("bottom",style)
        {//bottom
        draw_set_valign(fa_bottom)
        text_y = shipyard_y2 - 8
        }
    if string_pos("left",style)
        {
        draw_set_halign(fa_left)
        text_x = shipyard_x2 + 8
        }
    if string_pos("center",style)
        {
        draw_set_halign(fa_center)
        text_x = mean(shipyard_x2,shipyard_x2 + element2x)
        }
    if string_pos("right",style)
        {
        draw_set_halign(fa_right)
        text_x = shipyard_x2 + element2x - 8
        }
    }
else
    {//default to top-left
    draw_set_halign(fa_left)
    text_x = shipyard_x2 + 8
    draw_set_valign(fa_top)
    text_y = shipyard_y1 + 8
    }
if argument_count > 2
    {//set the color from the (3rd) argument
    draw_set_color(argument[2])
    }
else
    {//default color is blue
    draw_set_color(c_blue)
    }
    
if string_pos("button",text)
    {//if it's a button, localize it
    name = Part_Localize(text)
    }
else
    {//display the raw name
    name = text
    }

draw_text(text_x,text_y,name)
