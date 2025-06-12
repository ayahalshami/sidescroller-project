if (global.paused) exit;


// begining movement
var _targetX = endX, _targetY = endY;
if (goingToStart) {
	_targetX = startX;
	_targetY = startY;
}

//set movement
hsp = sign(_targetX - x) * currentSpeed;
vsp = sign(_targetY - y) * currentSpeed;
