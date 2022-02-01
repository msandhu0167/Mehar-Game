// @description basic enemy collision


//check to see if there is a collision between oPlayer & the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)
	{
		//destroy enemy and bounce in the air 
		yVector = 0.5*jumpForce;
		EnemyHurt();
		
	}
//otherwise restart level
else
	{
	
		PlayerHurt();
			x = x - xVector*20;
	}

