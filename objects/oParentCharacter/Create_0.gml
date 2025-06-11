hsp = 0;
vsp = 0;
grv = 0.3;
walkspd = 4;

// Attack system
firingdelay = 0;

// Respawn system
start_x = pointer_null;
start_y = pointer_null;

// Life system
lives = 3;
max_lives = 3;

// Invincibility system (for oKnight)
invincible = false;
invincible_timer = 0;

// Respawn checkpoint (for oMage)
if (!variable_global_exists("respawn_x")) {
    global.respawn_x = x;
    global.respawn_y = y;
}

function HandleMovementAnimation() {
    // Default basic animation - child objects should override
    if (hsp != 0) image_xscale = sign(hsp);
}

function HandleAttackAnimation() {
    // Child objects will override this with their specific attack sprites
}

function HandleAttack() {
    // Child objects will override this with their specific attack logic
}

function HandleDamage() {
    // Default no damage system - child objects can override
}