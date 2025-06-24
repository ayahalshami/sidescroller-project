// positions character at start of game
var spawn_x = 10656;
var spawn_y = 2144;


// spawn selected character
if (global.playerChoice == 1) {
    instance_create_layer(spawn_x, spawn_y, "Instances", oKnight);
} 
else if (global.playerChoice == 2) {
    instance_create_layer(spawn_x, spawn_y, "Instances", oMage);
} 
else {
    instance_create_layer(spawn_x, spawn_y, "Instances", oKnight);
}

// destroy controller once done
instance_destroy();