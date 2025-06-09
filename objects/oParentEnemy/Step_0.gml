// Handles horizontal movement

var _move_count = abs(vel_x);          // Number of pixels to move horizontally
var _move_once = sign(vel_x);          // Direction: +1 (right) or -1 (left)

repeat (_move_count)
{
    var _collision_found = check_collision(_move_once, 0);  // Check if there's a collision 1px ahead

    if (!_collision_found)
    {
        x += _move_once;  // Move 1 pixel in direction of velocity
    }
    else
    {
        vel_x = 0;        // Stop horizontal movement if blocked
        break;            // Exit the loop early
    }
}

// Handles vertical movement

var _move_count = abs(vel_y);          // Number of pixels to move vertically
var _move_once = sign(vel_y);          // Direction: +1 (down) or -1 (up)

// Flip direction if moved too far from starting point
if (x < start_x - patrol_range || x > start_x + patrol_range) {
    vel_x = -vel_x;
}

repeat (_move_count)
{
    var _collision_found = check_collision(0, _move_once);  // Check if there's a collision 1px up/down

    if (!_collision_found)
    {
        y += _move_once;  // Move 1 pixel in direction of velocity
    }
    else
    {
        vel_y = 0;        // Stop vertical movement if blocked
        break;            // Exit the loop early
    }
}