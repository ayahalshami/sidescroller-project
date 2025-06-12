// Set button position
var bx = x;
var by = y;

// Check if mouse is hovering over the button
var hovered = point_in_rectangle(mouse_x, mouse_y, bx, by, bx + btn_width, by + btn_height);

// Set color based on hover
if (hovered) {
    draw_set_color(btn_color_hover);
} else {
    draw_set_color(btn_color_default);
}

// Draw button rectangle (you can change false → true if you want it filled)
draw_rectangle(bx, by, bx + btn_width, by + btn_height, true);

// Set text properties
draw_set_color(c_black); // make text stand out on white background
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Optional: set a font size if you created a custom font
// draw_set_font(fnt_button); // only if you've made one

// Draw the word "PLAY" centered in the button
draw_text(bx + btn_width / 2, by + btn_height / 2, "PLAY");

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
