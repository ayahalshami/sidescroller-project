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


var gold = make_color_rgb(153, 90, 7); // custom color for text shadow

// Set font before any draw_text calls
draw_set_font(ButtonFont);

// Calculate text position
var button_text = "PLAY >>>";
var text_width = string_width(button_text);
var text_height = string_height(button_text);
var text_x = bx + btn_width / 2 - text_width / 2;
var text_y = by + btn_height / 2 - text_height / 2;

// shadow of text
var gold = make_color_rgb(153, 90, 7);
draw_set_color(gold);
draw_text(text_x + 2, text_y + 2, button_text); // offset shadow slightly

// Draw main text
draw_set_color(c_white);
draw_text(text_x, text_y, button_text);

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
