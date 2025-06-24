hsp = 0;
vsp = 0;
grv = 0.3;
walkspd = 4;
global.fading = false; // for ui fade out

// Attack system
firingdelay = 0;

// Respawn system
start_x = pointer_null;
start_y = pointer_null;
global.respawn_x = x;
global.respawn_y = y;

// Life system
lives = 3;
max_lives = 3;

// invincibility timer
invincible = false;
invincible_timer = 0;

// respawn
respawn_x = x;
respawn_y = y;

// functions to be overriden by children

function HandleMovementAnimation() {
    if (hsp != 0) image_xscale = sign(hsp);
}

function HandleAttackAnimation() {
}

function HandleAttack() {
}

function HandleDamage() {
}