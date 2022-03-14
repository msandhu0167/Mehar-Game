// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerIdle()
{
	//what the state does
	CheckInputs();
	CheckCollisionsY();

	//how to exit the state
	if (xDirection != 0)
	{
		state = states.walking;	
	}
	if (place_meeting(x, y + 1, oWall) and (jump))
	{
		state = states.jumping;
	}
	if (place_meeting(x, y + 1, oTurret) and (jump))
	{
		state = states.jumping;
	}

}