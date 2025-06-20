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
    var attack_dir = image_xscale;
    image_index = 0;
    image_speed = 1;
    
    // Adjust these values to make hitbox bigger/better positioned
    var xOffset = 32 * attack_dir; // Increased from 24 - reaches further
    var yOffset = -24; // Moved up more - covers more vertical area
    with (instance_create_layer(x + xOffset, y + yOffset, "Instances", oSwordAttack)) {
        image_xscale = attack_dir * 1.5; // Makes hitbox 1.5x wider
        image_yscale = 1.5; // Makes hitbox 1.5x taller
    }
}

