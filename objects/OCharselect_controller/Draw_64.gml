var text = "Select Character";
var text_width = string_width(text);
var text_x = (display_get_gui_width() - text_width) / 2;

draw_set_color(c_white);
draw_text(text_x, 150, text);