
var xPos = 20;
var yPos = 20;
var barWidth = 200;
var barHeight = 20;


var healthRatio = health / max_health;


draw_set_color(c_black);
draw_rectangle(xPos, yPos, xPos + barWidth, yPos + barHeight, false);


draw_set_color(c_red);
draw_rectangle(xPos, yPos, xPos + (barWidth * healthRatio), yPos + barHeight, false);


draw_set_color(c_white);
draw_rectangle(xPos, yPos, xPos + barWidth, yPos + barHeight, true);


