/// @description Insert description here
// You can write your code in this editor

if (!morto)
{
	
//	show_debug_message(string(player_name) + ":" + string(x) + ":" + string(y));

	if (round(x) mod grid_size == 0 && round(y) mod grid_size == 0)
	{
	
//		show_debug_message(string(player_name) + ":" + string(velh) + ":" + string(velv));


		if (velv !=0)
		{
			if (!place_meeting(x + grid_size, y, obj_block))
			{
				chance = random(100);
				
				if (chance > 50)
				{
					velh = vel;	
					velv = 0;
				}
			}
			else if (!place_meeting(x - grid_size, y, obj_block))
			{
				chance = random(100);
				
				if (chance > 50)
				{
					velh = -vel;	
					velv = 0;
				}					
			}
		}

		if (velh !=0)
		{
			if (!place_meeting(x , y + grid_size, obj_block))
			{
				chance = random(100);
				
				if (chance > 80)
				{
					velv = vel;	
					velh = 0;
				}
			}
			else if (!place_meeting(x , y - grid_size, obj_block))
			{
				chance = random(100);
				
				if (chance > 80)
				{
					velv = -vel;	
					velh = 0;
				}					
			}
		}


		if (velh !=0 && velv !=0)
		{
			velv = 0;
		}

	//colidindo com o bloco
		if (place_meeting(x + sign(velh) * grid_size, y, obj_block))
		{
			velh *= -1;
		}

		if (place_meeting(x, y + sign(velv) * grid_size, obj_block))
		{
			velv *= -1;
		}
	
	//colidindo com a bomba
		if (place_meeting(x + sign(velh) * grid_size,y, obj_bomba))
		{
			velh *= -1;
		}

		if (place_meeting(x, y + sign(velv) * grid_size, obj_bomba))
		{
			velv *= -1;
		}
	
	//colidindo com o inimigo
		if (place_meeting(x + sign(velh) * grid_size,y, obj_creep))
		{
			velh *= -1;
		}

		if (place_meeting(x, y + sign(velv) * grid_size, obj_creep))
		{
			velv *= -1;
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
	
		if (velh > 0) sprite_index = spr_right;
		if (velh < 0) sprite_index = spr_left;
		if (velv < 0) sprite_index = spr_up;
		if (velv > 0) sprite_index = spr_down;
	
		
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
}
