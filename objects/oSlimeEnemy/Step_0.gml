event_inherited();


// find player
var _player = instance_nearest(x, y, oMage);

if (_player != noone)
{
    var _dist = point_distance(x, y, _player.x, _player.y);
    
    if (_dist < 192)  // chase radius 
    {
        // chases player
        if (_player.x < x)
        {
            vel_x = -move_speed;
        }
        else if (_player.x > x)
        {
            vel_x = move_speed;
        }
    }
    else
    {
        // once player leaves range, goes off patrol
        if (x < start_x - patrol_range)
        {
            vel_x = move_speed;
        }
        else if (x > start_x + patrol_range)
        {
            vel_x = -move_speed;
        }
    }
}
else
{
    // no player found, keeps patroling
    if (x < start_x - patrol_range)
    {
        vel_x = move_speed;
    }
    else if (x > start_x + patrol_range)
    {
        vel_x = -move_speed;
    }
}