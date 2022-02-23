/// @description Insert description here
// You can write your code in this editor

shotTimer -= 1/room_speed;

if (shotTimer < 0)
{
	shotTimer = 3;
	var bullet = instance_create_layer(x, y, "Instances", oProjectile)
	with (bullet)
	{
		speed = 6;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	}
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
