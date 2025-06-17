#macro _WAVE 0
#macro _TYPE 1
#macro _SPAWN 2
#macro DELAY 3

// Define spawn location
var spawn_x = x;
var spawn_y = y;

// Check selection and spawn correct child
if (global.playerChoice == "mage") {
    instance_create_layer(spawn_x, spawn_y, "Instances", oMage);
}
else if (global.playerChoice == "knight") {
    instance_create_layer(spawn_x, spawn_y, "Instances", oKnight);
}
else {
    // Default fallback
    instance_create_layer(spawn_x, spawn_y, "Instances", oKnight);
}

// Destroy spawner after use
instance_destroy();

triggered = false;
timer = 0;
current_wave = 0;

