//code that runs when player is created
canJump = true;

//how many pixels per frame we want the player to move
xSpeed = 5;

//what direction the player is facing ( where 1 = right, -1 = left, 0 0 front/not moving)
xDirection = 0;

//how fast and what direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.4;

jumpForce = -10;

//invincibility
isInvincible = false;

//health points
hp = 5;


//level timer
levelTimer = 40;

//invincibility timer
invTimer = 2;

mouseX = mouse_x;
mouseY = mouse_y;
hookActive = false;

hookAmount =0;
haveHook = false;
global.hookAmount = 0;

enterBoat = false;
enteredBoat = false;

enum states
{
	walking,
	jumping,
	idle
	
}

state = states.idle;

state_array[states.walking] = StatePlayerWalking;
state_array[states.jumping] = StatePlayerJumping;
state_array[states.idle] = StatePlayerIdle;

sprite_array[states.walking] = sPlayerWalking;
sprite_array[states.jumping] = sPlayerJumping;
sprite_array[states.idle] = sPlayerIdle;

debug = false;
key_count = 0;

interaction_offset_x = 0;
interaction_offset_y = -16;
interaction_radius = 25;
