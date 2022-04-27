/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
enterBoat = true;

if enterBoat and keyboard_check(vk_alt)
{
	enteredBoat = true;
	instance_change(oBoat, true);
	instance_destroy(other);
	
}