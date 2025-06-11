var heart_spacing = 40; 
var start_x = 20;
var y_pos = 20;
for (var i = 0; i < 3; i++) {
    if (i < lives) {
        draw_sprite(sHeart, 0, start_x + i * heart_spacing, y_pos);
    } else {
        draw_sprite(sblackheart, 0, start_x + i * heart_spacing, y_pos);
    }
}