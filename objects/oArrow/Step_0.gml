// move the arrow horiaontally
x += hsp;

// destroy if it hits wall
if (place_meeting(x, y, oWall)) {
    instance_destroy();
}

// Destroy if goes off screen so it doesnt build up 3 billion instances
if (x < -50 || x > room_width + 50 || y < -50 || y > room_height + 50) {
    instance_destroy();
}