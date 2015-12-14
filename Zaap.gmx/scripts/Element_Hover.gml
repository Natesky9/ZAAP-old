draw_set_color(c_white)
draw_set_font(standard)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

//test the elements
//----------------------//
t = Element_Get()

Element2_Text(t)
if button_last != t && string_pos("button",t)
    {//play the sound once
    audio_play_sound(beep,1,false)
    }
button_last = t
/*
for (i = 1; i <= element1spots;i += 1)
    {
    if t = "element1button" + string(i)
        {
    draw_text(shipyard_x2 + 16,shipyard_y1 + 16,t)

        }
//    global.selection = t
    }
*/

if t == "element1"
    {//default text
    draw_set_color(c_dkgray)
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
    draw_text(shipyard_x2 + 16,shipyard_y1 + 16, "Choose a button,#dummy!")
    }
