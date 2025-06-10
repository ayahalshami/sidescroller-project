// collision event for player with checkpoint

// collision event in checkpoint with player

// Update global respawn position (checkpoint position)
global.respawn_x = x;
global.respawn_y = y;

// Update player's start_x and start_y
other.start_x = x;
other.start_y = y;

show_debug_message("Checkpoint reached!");
