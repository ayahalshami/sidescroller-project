function check_collision(_move_x, _move_y) 
{
    // check if this instance would collide with oWall
    return place_meeting(x + _move_x, y + _move_y, oWall);
}