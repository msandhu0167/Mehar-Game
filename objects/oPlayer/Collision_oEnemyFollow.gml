/// @description enemy follow collision


//check to see if there is a collision between oPlayer & the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)
	//destroy enemy and bounce in the air 
{
	yVector = jumpForce;
	instance_destroy(other);
	
	}
//otherwise restart level
else
	{
		x = x - xVector*20;
		PlayerHurt();
		
	}

