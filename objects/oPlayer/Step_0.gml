//code that runs every frame
script_execute(state_array[state]);
sprite_index = sprite_array[state];
if (state == states.walking)
	{
		StatePlayerWalking();
	}
else if (state == states.jumping)
	{
		StatePlayerJumping();
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


{
	if (mouse_check_button_pressed(mb_left))
	{
		mouseX = mouse_x;	
		mouseY = mouse_y;
		if (place_meeting(mouseX, mouseY, oWall))
		{
			hookActive = true;	
		}
	}

	if hookActive
	{
		grv = 0.1
		x += (mouseX - x) * 0.1;
		y += (mouseY - y) * 0.1;
	}

	if (mouse_check_button_released(mb_left))
		{
			hookActive = false;	
			haveHook = false;
			grv = 0.4
		}

}

if (levelTimer < 1)
{
	room_restart();
}
if isInvincible
{
	invTimer -= 1/room_speed;
	if invTimer <= 0
	{
		invTimer = 2;
		isInvincible = false;
	}
}


//die in a pit and restart level
if(y>=room_height)

	{
		PlayerDeath();	
	}
if (place_meeting(x, y + 1, oEnemy) and (jump))
{
		yVector = jumpForce;
}

//interaction
var instance = collision_circle(x + interaction_offset_x, y + interaction_offset_y, interaction_radius, oInteractable, false, true);

if(instance != noone) 
{
	switch(instance.type) 
	{
		case ITEMTYPES.key:
			key_count += 1;
			instance_destroy(instance);
		break;
		case ITEMTYPES.door:
			instance_destroy(instance);
		break;	
		case ITEMTYPES.locked_door:
				if(key_count > 0) {
					key_count -=1;
					instance_destroy(instance);
			}
		break;
	
	}
}