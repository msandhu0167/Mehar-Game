/// @description player projectile
// You can write your code in this editor

{
	var bullet = instance_create_layer(x, y, "Instances", oPlayerpojectile)
	with (bullet)
	{
		speed = 6;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	}
}
