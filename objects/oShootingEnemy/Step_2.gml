// Override parent's sprite flipping if we're shooting
if (shooting && instance_exists(instance_nearest(x, y, oParentCharacter))) {
    var player = instance_nearest(x, y, oParentCharacter);
    if (player.x < x) {
        image_xscale = abs(image_xscale);    
    } else {
        image_xscale = -abs(image_xscale);   
    }
}