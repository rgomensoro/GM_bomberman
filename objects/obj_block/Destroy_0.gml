/// @description Insert description here
// You can write your code in this editor
if(destructable)
{
	var chance = irandom(100);
	if (chance > 80)
	{
		instance_create_layer(x,y,"Level",obj_powerup);
	}
	
	global.total_blocks --;

	show_debug_message(string(global.total_blocks));
	
	if (global.total_blocks == 0) 	global.total_blocks --;
}