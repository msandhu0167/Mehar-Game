//code that runs every frame


if isInvincible
{
	invTimer -= 1/room_speed;
	if invTimer <= 0
	{
		invTimer = 2;
		isInvincible = false;
	}
}

levelTimer -= 1/room_speed;

if (levelTimer < 0)
{
	room_restart();	
}
//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_up);

//horizontal movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//check to see if there is a wall, and if there is, stop movement, if there isn't co

if (place_meeting(x+ xVector, y,oWall)) 
	{
	//check on pixel to the left or right of us until we collide with oWall
	// ! means "not"
	while(!place_meeting(x + xVector, y,oWall))
		{
		//only move 1 pixel at a time ntil you hit a oWall
		x = x + xDirection;
		}
		xVector = 0;
	}	
//otherwise move normal
x = x + xVector;

//verticle movement
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
	
	if (place_meeting(x, y + yVector, oTurret))
	{
	//check on pixel to the up or down of us until we collide with oWall
	// ! means "not"
	//"sign" is going to return the positive or negative sign for a value (-1, +1)
	//sign(yVector) if yVector is positive it will return a positive1, and if our yVector is negative, it will retrn a -1 
	while(!place_meeting(x, y + sign(yVector), oTurret))
		{
		//only move 1 pixel at a time ntil you hit a oWall
		y = y + sign(yVector);
		}
		yVector = 0;
	}
	if (place_meeting(x, y + yVector, oTurret))
	{
	//check on pixel to the up or down of us until we collide with oWall
	// ! means "not"
	//"sign" is going to return the positive or negative sign for a value (-1, +1)
	//sign(yVector) if yVector is positive it will return a positive1, and if our yVector is negative, it will retrn a -1 
	while(!place_meeting(x, y + sign(yVector), oTurret))
		{
		//only move 1 pixel at a time ntil you hit a oWall
		y = y + sign(yVector);
		}
		yVector = 0;
	}
//otherwise move normal
y = y + yVector;

//if we are touching oWall and we press the jump key, fly like an eagle 
if (place_meeting(x, y + 1, oWall) and (jump))
{
		yVector = jumpForce;
}

if (place_meeting(x, y + 1, oTurret) and (jump))
{
		yVector = jumpForce;
}

//die in a pit and restart level
if(y>=room_height)

	{
		PlayerDeath();	
	}
if (place_meeting(x, y + 1, oEnemy) and (jump))
{
		yVector = jumpForce;
}