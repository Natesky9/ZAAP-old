t = Element_Get()

//-----------------------------//
if string_pos("element0",t)
    {//if it's in element 0
    if string_pos("button",global.selection)
        {//if you have a button selected
        i = Button_To_Part(global.selection)
        if inventory[i]
            {//if there is one part to place
            if target.ship_array[global.ix,global.iy] > 0
                {//reclaim the part already there, if any
                inventory[target.ship_array[global.ix,global.iy]] += 1
                }
            //place the new part
            target.ship_array[global.ix,global.iy] = i
            //deduct it from inventory
            inventory[i] -= 1
            Play_Sound(weld)
            }
        else Play_Sound(no)
//        with target
//        Draw_Ship_Surface()
        }
    exit
    }
//-----------------------------//
if string_pos("element1",t)
    {//if it's at least element 1
    global.selection = t
    if string_pos("button",t)
        {//if it's a button
        global.selection = t
        Play_Sound(click_low)
        exit
        }
    
    Play_Sound(whir)
    exit
    }
//----------------------------//
if string_pos("element2",t)
    {//if it's at least element 2
    global.selection = t
    Play_Sound(weld)
/*    if string_pos("button",t)
        {//if it's a button
        global.selection = t
        Play_Sound(click_low)
        exit
        }
there are no buttons in element2 yet
*/
    Play_Sound(weld)
    exit
    }
//----------------------------//
if string_pos("element3",t)
    {//if the mouse is in element 3 (exit)
    audio_stop_all()
    with global.player_ship
    Ship_Undock()
    }
