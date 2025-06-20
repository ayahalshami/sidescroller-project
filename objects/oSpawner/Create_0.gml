#macro _WAVE 0
#macro _TYPE 1
#macro _SPAWN 2
#macro DELAY 3
// Define spawn location
var spawn_x = x;
var spawn_y = y;

// hi ali,
// if i forget to message you about this,
// i had to grey out this code because it was messing with the character select really badly
// i don't want to delete it or break anything, but this current iteration of the spawner is buggy
// sorry! -ash
//if (global.playerChoice == 2) {  // Changed from "mage" to 2
//    instance_create_layer(spawn_x, spawn_y, "Instances", oMage);
//}
//else if (global.playerChoice == 1) {  // Changed from "knight" to 1
//    instance_create_layer(spawn_x, spawn_y, "Instances", oKnight);
//}
//else {
//    // Default fallback
//    instance_create_layer(spawn_x, spawn_y, "Instances", oKnight);
//}


// Destroy spawner after use
instance_destroy();
triggered = false;
timer = 0;
current_wave = 0;
