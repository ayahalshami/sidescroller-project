event_inherited();

// movement speed and damage (enemy does one heart of damage by default)

damage = 1;
move_speed = 1;
vel_x = 0;
vel_y = 0;
grav_speed = 0.5;

// makes enemy move back and forth
vel_x = choose(-move_speed, move_speed);

start_x = x;             // Mark spawn point
patrol_range = 64;       // Enemy will move 64 pixels left and right


friction_power = 0;