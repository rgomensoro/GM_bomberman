/// @description Insert description here
// You can write your code in this editor

if (life > 0)
{
	life --;
	x = init_x;
	y = init_y;
	image_blend = c_white;	
	image_alpha = 1;
	morto = false;
	avisar = true;

}
else
{
	if (instance_exists(obj_mapa))
	{
		obj_mapa.num_players --;

	}
}	
