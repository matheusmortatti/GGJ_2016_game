/// grid_place_meeting(x, y, cell_type);
var xx = argument[0];
var yy = argument[1];
var cellType = argument[2];

// Remember position
var xp = x;
var yp = y;

// Update position for bounding box calculations
x = xx;
y = yy;

// Check for x meeting
var x_meeting = (obj_level_generator.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != cellType) ||
                (obj_level_generator.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != cellType);
                
// Check for y meeting
var y_meeting = (obj_level_generator.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != cellType) ||
                (obj_level_generator.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != cellType);
                
// Check for center meeting
var center_meeting = obj_level_generator.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != cellType;
                
// Move back
x = xp;
y = yp;

// Return
return x_meeting || y_meeting || center_meeting;
