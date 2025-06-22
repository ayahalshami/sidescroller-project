if (global.paused) exit;


// player distance 
if (!player_near) {
    var mage = instance_nearest(x, y, oMage);
    var knight = instance_nearest(x, y, oKnight);
    
    var p = noone;

    if (mage != noone && knight != noone) {
        // Choose the closer one
        if (point_distance(x, y, mage.x, mage.y) < point_distance(x, y, knight.x, knight.y)) {
            p = mage;
        } else {
            p = knight;
        }
    } else if (mage != noone) {
        p = mage;
    } else if (knight != noone) {
        p = knight;
    }

    // If a player is found and within range
    if (p != noone && point_distance(x, y, p.x, p.y) < player_trigger_distance) {
        player_near = true;
        alarm[0] = 1; // start moving
    }
}

// begining movement
var _targetX = endX, _targetY = endY;
if (goingToStart) {
	_targetX = startX;
	_targetY = startY;
}

//set movement
hsp = sign(_targetX - x) * currentSpeed;
vsp = sign(_targetY - y) * currentSpeed;
