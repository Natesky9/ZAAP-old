if element2x != 0
    {
    draw_set_color(c_blue)
    draw_rectangle(shipyard_x2,shipyard_y1 + 1,shipyard_x2 + element2x,shipyard_y2,false)
    draw_set_color(c_gray)
    if element2x > 16
        {
        draw_rectangle(shipyard_x2 + 8,shipyard_y1 + 8,shipyard_x2 + element2x - 8,shipyard_y2 - 8,false)
        }
    }

