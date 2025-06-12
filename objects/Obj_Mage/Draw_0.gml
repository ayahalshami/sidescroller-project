// Set scale based on selection
var scale = (global.playerChoice == my_choice) ? 1.6 : 1; // 1.6x scale if selected

// Calculate drawing position to keep it centered
var draw_w = sprite_width * scale;
var draw_h = sprite_height * scale;
var draw_x = x + (sprite_width - draw_w) / 2;
var draw_y = y + (sprite_height - draw_h) / 2;

// Draw the sprite scaled
draw_sprite_ext(sprite_index, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
