/// @description Insert description here
// You can write your code in this editor

if (isInvincible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvincible = false;
	}
}

xDirection = sign(oPlayer.x - x);
xVector = xSpeed * xDirection;


if (abs(oPlayer.x - x) < 128 )
{
	
x = x + xVector;

}

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