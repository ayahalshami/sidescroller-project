event_inherited();

var _wall_found = check_collision(vel_x * 4, 0);
// Look a few pixels ahead in the direction to check for a wall
if (_wall_found)
{
    vel_x = -vel_x; // changes direction if enemy hits a wall
}

var _ground_ahead = check_collision(sign(vel_x) * 8, 4);
// Looks ahead and slightly downward to check if enemy is on ground

if (!_ground_ahead)
{
    if (grounded)
    {
        vel_x = -vel_x; // enemy turns back from ledges
    }
}

var _inst = instance_place(x + vel_x * 16, y, oParentEnemy);
// check for other enemies
if (_inst != noone)
{
    vel_x = -vel_x; // moves when about to bump into another enemy
}
