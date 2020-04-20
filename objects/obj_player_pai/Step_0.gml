/// @description Insert description here
// You can write your code in this editor

if (!morto)
{
	
	bomba = keyboard_check_released(controles[4]);

	if(bomba  && total_bombas > 0)
	{
		var bomba = instance_create_layer((round(x) div grid_size) * grid_size, (round(y) div grid_size) * grid_size,"Level",obj_bomba);
		total_bombas --;
		bomba.potencia = bomba_potencia;
		bomba.pai = self;
	}

//	show_debug_message(string(player_name) + ":" + string(x) + ":" + string(y));

	if (round(x) mod grid_size == 0 && round(y) mod grid_size == 0)
	{
	
		up = keyboard_check(controles[0]);
		down = keyboard_check(controles[1]);
		left = keyboard_check(controles[2]);
		right = keyboard_check(controles[3]);
		
		if (right) face = 0;
		if (left) face = 1;
		if (up) face = 2;
		if (down) face = 3;

		velh = (right - left) * vel;
		velv = (down - up) * vel;

//		show_debug_message(string(player_name) + ":" + string(velh) + ":" + string(velv));

		if (velh !=0 && velv !=0)
		{
			velv = 0;
		}

	//colidindo com o bloco
		if (place_meeting(x + sign(velh) * grid_size, y, obj_block))
		{
			velh = 0;
		}

		if (place_meeting(x, y + sign(velv) * grid_size, obj_block))
		{
			velv = 0;
		}
	
	//colidindo com a bomba
		if (place_meeting(x + sign(velh) * grid_size,y, obj_bomba))
		{
			velh = 0;
		}

		if (place_meeting(x, y + sign(velv) * grid_size, obj_bomba))
		{
			velv = 0;
		}
	
		//Animacao	
		if (velv + velh == 0)
		{
			image_index = 0;
			image_speed = 0;
		}
		else
		{
			image_speed = 1;
		}

		//Escolhendo a sprite certa
	
		if (face == 0) sprite_index = spr_right;
		if (face == 1) sprite_index = spr_left;
		if (face == 2) sprite_index = spr_up;
		if (face == 3) sprite_index = spr_down;
		
	}

	if(vel > 4) vel = 4;

	x += velh;
	y += velv;

//	show_debug_message(string(player_name) + ":" + string(x) + ":" + string(y));

}
else
{	
	//estou morto x__X
	image_blend = c_red;
	
	alpha = lerp(alpha,0.2,0.01);
	image_alpha = alpha;
	
	if (avisar)
	{
		alarm[0] = room_speed;
		avisar = false;
	}	
}
