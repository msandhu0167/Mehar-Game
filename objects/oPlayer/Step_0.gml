//code that runs every frame

{
	if (mouse_check_button_pressed(mb_left))
	{
		mouseX = mouse_x;	
		mouseY = mouse_y;
		if (place_meeting(mouseX, mouseY, oWall))
		{
			hookActive = true;	
		}
	}

	if hookActive
	{
		grv = 0.1
		x += (mouseX - x) * 0.1;
		y += (mouseY - y) * 0.1;
	}

	if (mouse_check_button_released(mb_left))
		{
			hookActive = false;	
			haveHook = false;
			grv = 0.4
		}

}
if isInvincible
{
	invTimer -= 1/room_speed;
	if invTimer <= 0
	{
		invTimer = 2;
		isInvincible = false;
	}
}



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