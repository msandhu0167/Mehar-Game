// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()

{
	//horizontal movement
	xDirection = right - left;
	xVector = xSpeed * xDirection;
}

function CheckCollisionsY()

{
	//verticle movement
	yVector = yVector + grv;
}


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
		if (place_meeting(x, y + xVector, oTurret))
	{
	//check on pixel to the up or down of us until we collide with oWall
	// ! means "not"
	//"sign" is going to return the positive or negative sign for a value (-1, +1)
	//sign(yVector) if yVector is positive it will return a positive1, and if our yVector is negative, it will retrn a -1 
	while(!place_meeting(x, y + sign(xVector), oTurret))
		{
		//only move 1 pixel at a time ntil you hit a oWall
		x = x + xDirection;
		}
		xVector = 0;
	}
//otherwise move normal
x = x + xVector;