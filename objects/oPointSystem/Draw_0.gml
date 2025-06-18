var screen_center_x = display_get_gui_width() / 2;
var text_y = 20;
var padding = 8;

if (!variable_global_exists("score")) {
    global.score = 0;
}

var score_text = "Score: " + string(global.score);

var tw = string_width(score_text);
var th = string_height(score_text);

// Draw black rectangle background
draw_set_color(c_black);
draw_rectangle(screen_center_x - tw/2 - padding, text_y - padding/2, screen_center_x + tw/2 + padding, text_y + th + padding/2, false);

// Draw white text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(screen_center_x, text_y, score_text);
