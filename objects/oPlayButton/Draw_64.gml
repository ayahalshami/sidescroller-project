draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_set_color(make_color_rgb(93, 115, 89));
draw_rectangle(x - button_w / 2, y - button_h / 2,
               x + button_w / 2, y + button_h / 2, false);


draw_set_font(ButtonFont);
draw_set_color(c_white);
draw_text(x, y, label);
