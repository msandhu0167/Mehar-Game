// @description basic enemy collision


//check to see if there is a collision between oPlayer & the top of oEnemy
if (y <= other.y)
	{
		//destroy enemy and bounce in the air 
		EnemyHurt();
		
	}
//otherwise restart level
else
	{
	
		PlayerHurt();
	}

