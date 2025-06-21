
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var title_text = "Thank you for playing";
draw_set_font(TitleFont);
var title_w = string_width(title_text);
var title_h = string_height(title_text);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var line1 = "Thank you";
var line2 = "for playing";

draw_set_font(TitleFont);


var line1_w = string_width(line1);
var line2_w = string_width(line2);
var title_w = max(line1_w, line2_w);
var title_h = string_height(line1); 

var button_w = 200;
var button_h = 80;
var button_x = room_width / 2;
var button_y = room_height / 2 + 50;

var title_y = button_y - button_h - 60;

var padding = 40;
var content_w = max(title_w, button_w);
var box_left   = button_x - content_w / 2 - padding;
var box_right  = button_x + content_w / 2 + padding;
var box_top    = title_y - title_h - padding; 
var box_bottom = button_y + button_h / 2 + padding;


var glow_color = c_white;
var glow_layers = 3;
var glow_spread = 4;

for (var i = 1; i <= glow_layers; i++) {
    var offset = i * glow_spread;
    var alpha = 0.15 / i;

    draw_set_color(glow_color);
    draw_set_alpha(alpha);
    draw_rectangle(box_left - offset, box_top - offset,
                   box_right + offset, box_bottom + offset, false);
}
draw_set_alpha(1);


draw_set_color(make_color_rgb(0, 50, 150));
draw_set_alpha(0.4);
draw_rectangle(box_left, box_top, box_right, box_bottom, false);
draw_set_alpha(1);


var glow_strength = 1;         
var glow_width = 16;           

draw_set_color(c_white);
draw_set_alpha(glow_strength);
draw_rectangle(box_left - glow_width, box_top, box_left, box_bottom, false);
draw_rectangle(box_right, box_top, box_right + glow_width, box_bottom, false);
draw_set_alpha(1);


var corner_size = 16;
draw_set_color(c_white);
draw_set_alpha(glow_strength);

draw_rectangle(box_left - corner_size, box_top - corner_size,
               box_left + corner_size / 2, box_top + corner_size / 2, false);
draw_rectangle(box_right - corner_size / 2, box_top - corner_size,
               box_right + corner_size, box_top + corner_size / 2, false);
draw_rectangle(box_left - corner_size, box_bottom - corner_size / 2,
               box_left + corner_size / 2, box_bottom + corner_size, false);
draw_rectangle(box_right - corner_size / 2, box_bottom - corner_size / 2,
               box_right + corner_size, box_bottom + corner_size, false);
draw_set_alpha(1);


draw_set_font(TitleFont);
draw_set_color(c_white);
draw_text(button_x, title_y, line1);
draw_text(button_x, title_y + title_h + 10, line2);
