//this code is unused/uncalled for now

function tutorial_setup(){
    
// tutorial_setup.gml
// Creates a proper tutorial level with solid floor and floating platforms

// === MAIN FLOOR  ===
// Create a long solid floor covering full screen width (40 blocks * 32 pixels = 1280px)
for (var i = 0; i < 40; i++) {
    instance_create_layer(i * 32, 400, "Instances", oWall);
}

// === LEFT FLOATING PLATFORM (for heart) ===
// Platform at x=192 to x=320 (4 blocks wide)
for (var i = 6; i < 10; i++) {
    instance_create_layer(i * 32, 272, "Instances", oWall);
}
// Place heart ABOVE left platform 
instance_create_layer(8 * 32, 240, "Instances", oHeart);

// === RIGHT FLOATING PLATFORM (for token) ===
// Platform at x=768 to x=896 (4 blocks wide) 
for (var i = 24; i < 28; i++) {
    instance_create_layer(i * 32, 272, "Instances", oWall);
}
// Place token ABOVE right platform
instance_create_layer(26 * 32, 240, "Instances", oToken);

// === ENEMY PLACEMENT ===
// Place enemy on main floor, right side
instance_create_layer(30 * 32, 368, "Instances", oEnemy);

// === EXIT DOOR ===
// Place exit at the far right of the floor
instance_create_layer(38 * 32, 368, "Instances", oExit);

// === PLAYER SPAWN ===
// Spawn player on left side of main floor
instance_create_layer(3 * 32, 368, "Instances", oPlayer);

}