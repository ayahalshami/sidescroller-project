draw_set_font(TitleFont); 

var text = "Select Character";
var text_width = string_width(text);
var text_x = (display_get_gui_width() - text_width) / 2;
var gold = make_color_rgb(153, 90, 7); // custom color for bg of text

// sets glow/filter on top to make title look nicer/more professional

var title = "Select Character";
var title_width = string_width(title);
var text_x = (display_get_gui_width() - title_width) / 2;
var text_y = 150;

draw_set_font(TitleFont);

var glow = make_color_rgb(255, 204, 102); // light gold
draw_set_color(glow);
draw_set_alpha(0.5); // softens glow

for (var i = -2; i <= 2; i++) {
    for (var j = -2; j <= 2; j++) {
        if (i != 0 || j != 0) {
            draw_text(text_x + i, text_y + j, title);
        }
    }
}


// shadow of text
draw_set_color(gold);
draw_text(text_x + 4, 152, "Select Character");

draw_set_color(c_white);
draw_text(text_x, 150, text);

draw_set_alpha(1.0); // resets alpha to avoid graphics issues
