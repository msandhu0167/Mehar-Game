/// @description Insert description here
// You can write your code in this editor
draw_self();

if (hookActive)
{
	draw_line(x, y, mouseX, mouseY);
}

if(debug)
{
	draw_set_color(c_lime);
	draw_circle(x + interaction_offset_x, y + interaction_offset_y, interaction_radius, true);
	
}

draw_set_color(c_white);