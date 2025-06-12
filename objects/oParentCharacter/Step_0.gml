key_right = keyboard_check(vk_right) | keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) | keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space) | keyboard_check(ord("W"));

// Only allow movement input if not attacking
var move = 0;
if (firingdelay <= 0) {
    move = key_right - key_left;
}
hsp = move * walkspd;

// Gravity and Vertical Movement
vsp += grv;
vsp = clamp(vsp, -12, 12); // Prevent phasing through platforms

// Jumping (includes both walls and moving platforms)
if ((place_meeting(x, y + 1, oWall) || place_meeting(x, y + 1, oPlatformMoving)) && key_jump && firingdelay <= 0) {
    vsp = -7;
}

// Horizontal collision
if (place_meeting(x + hsp, y, oWall)) {
    while (!place_meeting(x + sign(hsp), y, oWall)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// Moving Platform Collision
var _movingPlatform = instance_place(x, y + max(1, vsp), oPlatformMoving);
if (_movingPlatform && vsp >= 0 && bbox_bottom <= _movingPlatform.bbox_top + 1) {
    // Pixel-perfect collision fix
    while (!place_meeting(x, y + sign(vsp), oPlatformMoving) && sign(vsp) != 0) {
        y += sign(vsp);
    }
    vsp = 0;
    // Move with platform
    x += _movingPlatform.hsp;
    y += _movingPlatform.vsp;
}

// Vertical collision
if (place_meeting(x, y + vsp, oWall)) {
    while (!place_meeting(x, y + sign(vsp), oWall)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// Attack input handling
firingdelay -= 1;
if (keyboard_check(ord("K"))) {
    // child objects will override this for their specific attack sprites
    HandleAttackAnimation();
}

var onGround = place_meeting(x, y + 1, oWall) || place_meeting(x, y + 1, oPlatformMoving); // Includes platforms
if (keyboard_check(ord("K")) && firingdelay < 0 && onGround) {
    firingdelay = 50;
    HandleAttack();
}

// Death on water
if (place_meeting(x, y, oDeathBlock)) {
    if (lives > 0) {
        lives -= 1;
        x = start_x;
        y = start_y;
    }
}

// Invincibility countdown
if (invincible) {
    invincible_timer -= 1;
    if (invincible_timer <= 0) {
        invincible = false;
    }
}

// Handle movement animations - child objects will override this
HandleMovementAnimation();

// Handle damage - child objects can override for different damage systems
HandleDamage();