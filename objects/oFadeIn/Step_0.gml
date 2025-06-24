alpha -= 0.1; // fade in
if (alpha <= 0) {
    alpha = 0;
    instance_destroy(); // remove fade object when done
}