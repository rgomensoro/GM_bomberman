/// @description Insert description here
// You can write your code in this editor


morto = false;

// init velocity
vel = 1.6;
velh = 0;
velv = 0;

// grid size init
grid_size = 32;

if (!place_meeting(x + grid_size, y, obj_block))
{
	velh = vel;	
}
else if (!place_meeting(x - grid_size, y, obj_block))
{
	velh = -vel;	
	
}
else if (!place_meeting(x, y + grid_size, obj_block))
{	
	velv = vel;	
}
else if (!place_meeting(x,y - grid_size, obj_block))
{
	velv = -vel;	
}


