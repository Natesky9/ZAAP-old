//zoom is the target width to zoom to
zoom = global.zoom
//pix is the number to zoom by
pix = 1
//view_w[0]
global.camera_mode = "zooming"


if zoom > view_wview[0]
    {
    view_xview[0] -= pix
    view_yview[0] -= pix
    view_wview[0] += pix*2
    view_hview[0] += pix*2
    }
    
if zoom < view_wview[0]
    {
    view_xview[0] += pix
    view_yview[0] += pix
    view_wview[0] -= pix*2
    view_hview[0] -= pix*2
    }

if view_wview[0] == zoom
&& view_hview[0] == zoom
    {
    global.camera_mode = "still"
    }
