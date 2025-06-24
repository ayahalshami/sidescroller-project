global.respawn_x = x;
global.respawn_y = y - 32; // offset to avoid issues

// Update player's start_x and start_y  
other.start_x = x;
other.start_y = y - 32; // offset to avoid issues

show_debug_message("Checkpoint reached!");

