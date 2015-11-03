/// scr_move(collision_object)
/*
Moves the player accordingly. If theres a wall, it will get
as close as possible towards it.
*/
var hSpd = argument0;
var vSpd = argument1;


// Horizontal Collisions
if (place_meeting(x+hSpd, y, obj_parentSolid)){
    while (!place_meeting(x+sign(hSpd), y, obj_parentSolid)){
        x += sign(hSpd);
    }
    
    hSpd = 0;
} 

x += hSpd;

// Vertical Collisions
if (place_meeting(x, y+vSpd, obj_parentSolid)){
    while (!place_meeting(x, y+sign(vSpd), obj_parentSolid)){
        y += sign(vSpd);
    }
    vSpd = 0;
}
y += vSpd;
