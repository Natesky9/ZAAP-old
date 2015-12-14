if element3y != 0
    {
    draw_set_color(c_red)
    draw_rectangle(shipyard_x1+1,shipyard_y1,shipyard_x2-1,shipyard_y1 - element3y,false)
    draw_set_color(c_gray)
    if element3y > 16
        {
        draw_rectangle(shipyard_x1 + 8,shipyard_y1 - 8,shipyard_x2 - 8,shipyard_y1 - element3y + 8,false)
        //draw the abort button
        if element3y > 32
            {
            draw_set_color(c_red)
            draw_roundrect(shipyard_x1 + 16,shipyard_y1 - 16,
                            shipyard_x2 - 16,shipyard_y1 - element3y + 16,false)
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            draw_set_font(blockfont)
            draw_set_color(c_white)
            if element3y > (16 + string_height("ABORT"))
                {
            draw_text(mean(shipyard_x1,shipyard_x2),mean(shipyard_y1,shipyard_y1 - element3y),"ABORT")
                }
            }
        }
    }

