// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerJumping()
{
		//what does the state do?
		CheckCollisionsX()
	
	
	if (canJump)
	{
		yVector = jumpForce;
		canJump = false;
	}
		//if we are touching oWall and we press the jump key, fly like an eagle 
	if (place_meeting(x, y + 1, oWall) and (jump))
	{
			yVector = jumpForce;
	}

	if (place_meeting(x, y + 1, oTurret) and (jump))
	{
			yVector = jumpForce;
	}

	CheckCollisionsY();


	
	//conditions for leaving the state
	if(place_meeting(x, y + 1, oWall))
	{
		state = states.walking
		canJump = true;
	}
	
	if(place_meeting(x, y + 1, oTurret))
	{
		state = states.walking;
		canJump = true;
	}


}
