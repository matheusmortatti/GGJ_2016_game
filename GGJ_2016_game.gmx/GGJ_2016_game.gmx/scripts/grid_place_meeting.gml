/// grid_place_meeting(x, y);
var xx = argument[0];
var yy = argument[1];

// Remember position
var xp = x;
var yp = y;

// Update position for bounding box calculations
x = xx;
y = yy;

// Check for x meeting
var x_meeting = (obj_procedural_room.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) ||
                (obj_procedural_room.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);
                
// Check for y meeting
var y_meeting = (obj_procedural_room.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) ||
                (obj_procedural_room.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);
                
// Check for center meeting
var center_meeting = obj_procedural_room.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;
                
// Move back
x = xp;
y = yp;

// Return
return (x_meeting || y_meeting || center_meeting);
