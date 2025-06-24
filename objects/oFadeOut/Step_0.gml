alpha += 0.05; 
if (alpha >= 1) {
    alpha = 1;
    room_goto(rm_endscreen);
}