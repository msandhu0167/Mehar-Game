// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerWalking()
{
	
	//what does the state do?
	CheckCollisionsX();
	CheckCollisionsY();
	
	//animations for the state
	
	//conditions for leaving the state
	if (place_meeting(x, y + 1, oWall) and (jump))
	{
		state = states.jumping
	}
	if (place_meeting(x, y + 1, oTurret) and (jump))
	{
		state = states.jumping;
	}
}