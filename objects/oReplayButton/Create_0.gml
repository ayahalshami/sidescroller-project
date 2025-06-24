// Button label
label = "REPLAY?";


padding_w = 15;
padding_h = 10;


draw_set_font(ButtonFont);
var text_w = string_width(label);
var text_h = string_height(label);


button_w = text_w + padding_w * 2;
button_h = text_h + padding_h * 2;


x = room_width / 2;
y = room_height / 2 + 65;
