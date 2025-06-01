// Check if the object is colliding with the ground
grounded = check_collision(0, 1);

if (grounded)
{
    // If grounded, store the current position
    grounded_x = x;
    grounded_y = y;
}

if (round(vel_x) != 0)
{
    // Apply friction if there's horizontal movement (velocity is not 0)
    
    var _friction_applied = sign(vel_x) * friction_power;

    // Reduce horizontal velocity by the friction amount
    vel_x -= _friction_applied;
}
else
{
    // If velocity is close to 0, stop horizontal movement completely
    vel_x = 0;
}

// Apply gravity to vertical velocity (object is falling or rising)
vel_y += grav_speed;