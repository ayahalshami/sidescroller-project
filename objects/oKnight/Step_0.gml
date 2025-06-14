if (global.paused) {
    exit;
}


event_inherited();

// override functions 

function HandleMovementAnimation() {
    // Don't override sprite if we're currently attacking
    if (firingdelay > 0) {
        return;
    }
    
    // Animation 
    if (!place_meeting(x, y + 1, oWall) && !place_meeting(x, y + 1, oPlatformMoving)) { 
        sprite_index = WarriorJump2; 
        image_speed = 0;
        image_index = (sign(vsp) > 0) ? 1 : 0;
    } else {
        image_speed = 1;
        if (hsp == 0) {
            sprite_index = warrioridle;
        } else {
            sprite_index = WarriorRun;
        }
    }
    if (hsp != 0) image_xscale = sign(hsp);
}

function HandleAttackAnimation() {
    sprite_index = warriorMelee; // melee attack animation
}

function HandleAttack() {
    var attack_dir = image_xscale; // +1 = right, -1 = left
    // start animation from beginning
    image_index = 0;
    image_speed = 1;
    
    // spawns hitbox for melee attack
    var xOffset = 24 * attack_dir; 
    var yOffset = -16; // moves hitbox up as it was previously in the ground
    with (instance_create_layer(x + xOffset, y + yOffset, "Instances", oSwordAttack)) {
        image_xscale = attack_dir;
    }
}
// note to self later i think this needs to be in the parent class but i forgot to add it and i need to leave
// -ash

function HandleDamage() {
    // damage check with invincibility system
    if (!invincible) {
        var enemy = instance_place(x, y, oParentEnemy);
        if (enemy != noone) {
            lives -= 1;
            invincible = true;
            invincible_timer = 60; // 1 second invincibility
            // knockback
            var dir = (x < enemy.x) ? -1 : 1;
            hsp = dir * -4;
            vsp = -4;
        }
    }
}

