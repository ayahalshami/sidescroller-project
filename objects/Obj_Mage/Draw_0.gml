// Draw the icon normally
draw_self();

// If selected, draw the selection overlay
if (global.playerChoice == my_choice) {
   draw_sprite_ext(sCharSelect, 0, x, y, 4, 4, 0, c_white, 1);
}