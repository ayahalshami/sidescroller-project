hsp = 0;
vsp = 0;
grv = 0.3;
walkspd = 4;
firingdelay = 0;

// respawn for checkpoint

if (!variable_global_exists("respawn_x")) {
    global.respawn_x = x;
    global.respawn_y = y;
}
start_x = pointer_null;
start_y = pointer_null;


// Life system setup
lives = 3;
max_lives = 3;
