/// movement_script(hor_speed, vert_speed);

var hspd = argument[0];
var vspd = argument[1];

// Horizontal collision
if(grid_place_meeting(x + hspd, y, FLOOR))
{
    while(!grid_place_meeting(x + sign(hspd), y, FLOOR)) x += sign(hspd);
    hspd = 0;
}

// Move Horizontally
x += hspd;

// Vertical collision
if(grid_place_meeting(x, y + vspd, FLOOR))
{
    while(!grid_place_meeting(x, y+ sign(vspd), FLOOR)) y += sign(vspd);
    vspd = 0;
}

// Move vertically
y += vspd;
