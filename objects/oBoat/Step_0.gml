/// @description Insert description here
// You can write your code in this editor

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);


yDirection = down - up;
yVector = 4 * yDirection;	
xDirection = right - left;
xVector = xSpeed * xDirection;

if (place_meeting(x + xVector, y, oWall))
	{
		////check on pixel to the left or right of us until we collide with oWall
		// ! means "not"
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel at a time until you hit oWall
			x = x + xDirection;
			}
			xVector = 0;
	}
	
x = x + xVector;

if (place_meeting(x, y + yVector, oWall)) 
	{
		//check one pixel to the up or down of us until we collide with oWall
		//! means "not"
		//"sign" is going to return the positive or negative sign for a value (-1, +1
		//sign(yVector) if yVector is positive it will return a positive 1, and if our yVector is negative, it will return a -1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move 1 pixel at a time ntil you hit a oWall
			y = y + sign(yVector);
			}
			yVector = 0;
	}

y = y + yVector + grv;

if isInvincible
{
	invTimer -= 1/room_speed;
	if invTimer <=0
	{
		invTimer = 2;
		isInvincible = false;
	}
}
