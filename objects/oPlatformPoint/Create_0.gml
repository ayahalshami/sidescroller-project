if (startingPoint) {
    platformID.startX = x;
    platformID.startY = y;
} else {
    platformID.endX = x;
    platformID.endY = y;

    // Activate the platform only after both start and end are assigned
    instance_activate_object(platformID);
}