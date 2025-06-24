if (global.paused) exit;

event_inherited();
defeated_object = oSlimeDefeated; 

// find player
var _player = instance_nearest(x, y, oParentCharacter);
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

// check if defeated:
if (hp <= 0) {
    instance_create_layer(x, y, layer, defeated_object);
    instance_destroy();
}

// flip sprite based on direction
if (vel_x < 0) {
    image_xscale = -1;
} else if (vel_x > 0) {
    image_xscale = 1;
}