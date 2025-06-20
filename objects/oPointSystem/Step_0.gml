// detect if score increased (coin collected)
if (global.score > previous_score) {
    is_animating = true;     // start animation
    anim_index = 0;        // reset animation to first frame
}
previous_score = global.score;

// only update animation when it is playing
if (is_animating) {
    anim_index += anim_speed;
    
    if (anim_index >= sprite_get_number(sCoin)) {
        anim_index = 0;
        is_animating = false;  // stop animation
    }
}