
c = global.camera_focus
view_xview[0] = c.x+1-view_wview[0]/2
view_yview[0] = c.y+1-view_hview[0]/2
global.camera_x1 = view_xview[0]
global.camera_y1 = view_yview[0]
global.camera_x2 = global.camera_x1 + view_wview[0]
global.camera_y2 = global.camera_y1 + view_hview[0]
