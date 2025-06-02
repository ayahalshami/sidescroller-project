draw_sprite(sMage, 0, x, y);

// If selected, draw highlight
if (global.playerChoice == my_choice) {
    draw_set_color(c_lime);
    draw_rectangle(x, y, x + sprite_width, y + sprite_height, false);
}
