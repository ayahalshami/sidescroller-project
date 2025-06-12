if (global.paused) {
    exit;
}


event_inherited();

// override functions
function HandleMovementAnimation() {
    // don't override sprite if we're currently attacking
    if (firingdelay > 0) {
        return;
    }
    
    // platform collision 
    if (!place_meeting(x, y + 1, oWall) && !place_meeting(x, y + 1, oPlatformMoving)) {
        sprite_index = sMageA;
        image_speed = 0;
        image_index = (sign(vsp) > 0) ? 1 : 0;
    } else {
        image_speed = 1;
        if (hsp == 0) {
            sprite_index = sMageI;
        } else {
            sprite_index = sMageR;
        }
    }
    if (hsp != 0) image_xscale = sign(hsp);
}


function HandleAttackAnimation() {
    sprite_index = MageRangedAttack;
}

function HandleAttack() {
    var proj_dir = image_xscale;
    with (instance_create_layer(x, y, "Projectiles", oMagic)) {
        hsp = 10 * proj_dir;
        image_xscale = proj_dir;
    }
}