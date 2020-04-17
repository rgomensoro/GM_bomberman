/// @description Insert description here
// You can write your code in this editor

if (!dark)
{
	alpha +=0.02;
}
else
{
	alpha -=0.02;
}

if ( (alpha >= 1) && !dark)
{
	room_goto(target_room);
}
	
if ( (alpha <= 0) && dark)
{
	instance_destroy();
}