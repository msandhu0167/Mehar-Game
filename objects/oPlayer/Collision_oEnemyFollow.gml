/// @description enemy follow collision


//check to see if there is a collision between oPlayer & the top of oEnemy

if (y < other.y )
	//destroy enemy and bounce in the air 
{
	EnemyHurt();
	yVector = jumpForce;
	instance_destroy(other);
	
	}
//otherwise restart level

else
	{
		PlayerHurt();
	}