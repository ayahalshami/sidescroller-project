event_inherited();

// Find player
var _player = instance_nearest(x, y, oParentCharacter);
var player_detected = false;

if (_player != noone)
{
    var _dist = point_distance(x, y, _player.x, _player.y);

    // los check
    var _can_see = !collision_line(x, y, _player.x, _player.y, oWall, false, true);

    if (_dist < 100 && _can_see)  // detection radius and line of sight
    {
        player_detected = true;
    }
}

// if player is detected, stop moving
if (player_detected)
{
    vel_x = 0;
}
else
{
    // no player detected, resume patrol behavior
    if (x < start_x - patrol_range)
    {
        vel_x = move_speed;
    }
    else if (x > start_x + patrol_range)
    {
        vel_x = -move_speed;
    }
}
