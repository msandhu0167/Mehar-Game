// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckInputs()
{
	//keyboard check and inputs
	right = keyboard_check(vk_right);
	left = keyboard_check(vk_left);
	jump = keyboard_check_pressed(vk_up);
}