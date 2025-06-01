//Get inputs
key_right = keyboard_check(vk_right) | keyboard_check(ord("D"));
key_left = keyboard_check(vk_left)| keyboard_check(ord("A"));
key_jump = keyboard_check_pressed( vk_space ) | keyboard_check(ord("W"));

// calculate movement
var move = key_right - key_left;

hsp = move * walkspd;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
	
}

// horizontal collison

if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	
}

x = x + hsp;

// vertical collison

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	
}

y = y + vsp;

// Animation

if (!place_meeting(x,y+1,oWall))
{ 
	sprite_index = sPlayerA; 
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
	
	}


else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else 
	{
		sprite_index = sPlayerR;
		
		
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);


// Attack
firingdelay -= 1;

if (keyboard_check(ord("K"))) {
    sprite_index = MageRangedAttack;
}

var onGround = place_meeting(x, y + 1, oWall); // Ground check

if (keyboard_check(ord("K")) && firingdelay < 0 && onGround) {
    firingdelay = 50;

    var proj_dir = image_xscale; // +1 = right, -1 = left

    with (instance_create_layer(x, y, "Projectiles", oMagic)) {
        hsp = 10 * proj_dir;
        image_xscale = proj_dir;
    }
}







