/// @description Insert description here
// You can write your code in this editor

if (isInvincible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 2;
		isInvincible = false;
	}
}

turnTimer -= 1/room_speed;
if (turnTimer < 0)
{
		turnTimer = 2.5;
		xDirection = -xDirection
}
xVector = xSpeed * xDirection

if(place_meeting(x + xVector, y, oWall))
{
	xDirection = -xDirection;
	turnTimer = 2.5;
}

if(place_meeting(x + xVector, y, oPlayer))
{
	xDirection = -xDirection;
	turnTimer = 2.5;
}

x = x + xVector;


yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
	//check on pixel to the up or down of us until we collide with oWall
	// ! means "not"
	//"sign" is going to return the positive or negative sign for a value (-1, +1)
	//sign(yVector) if yVector is positive it will return a positive1, and if our yVector is negative, it will retrn a -1 
	while(!place_meeting(x, y + sign(yVector), oWall))
		{
		//only move 1 pixel at a time ntil you hit a oWall
		y = y + sign(yVector);
		}
		yVector = 0;
	}
	
y = y + yVector;

