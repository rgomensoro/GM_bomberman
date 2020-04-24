/// @description Insert description here
// You can write your code in this editor


menu_space = string_height(options[0]) * 1.5;
num_options = array_length_1d(options);


if (room == rm_inicio)
{
	
	for (i = 0; i < num_options; i++)
	{
		draw_set_font(fnt_inicio);
		draw_set_halign(fa_center);
		

		if ( i == select)
		{
			cor = c_red;
			cor2 = c_white;
		}
		else
		{
			cor = c_white;
			cor2 = c_teal;			
		}
				
		draw_set_color(cor2);
		draw_text( room_width/2 + 2, (room_height/2) + 2 + (menu_space*i), options[i]);

			
		draw_set_color(cor);
		draw_text( room_width/2, (room_height/2) + (menu_space*i), options[i]);
	
	}
}

if (room == rm_controls)
{

	draw_set_font(fnt_inicio);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	draw_set_color(c_white);

	for (i = 0; i < 7; i++)
	{
		if ( i == menu_options)
		{
			cor = c_red;
			cor2 = c_white;
		}
		else
		{
			cor = c_white;
			cor2 = c_teal;			
		}

		switch(i)
		{
			case 0:

			draw_set_color(cor2);
			draw_text( 142, 102, player_names[select]);
			draw_set_color(cor);
			draw_text( 140, 100, player_names[select]);

			break;

			case 1:
			case 2:
			case 3:
			case 4:
			case 5:

			draw_set_color(cor2);
			draw_text( 322, 207+75*(i-1), key_options[i-1]);
			draw_set_color(cor);
			draw_text( 320, 205+75*(i-1), key_options[i-1]);
	
			break;

			case 6:

			draw_set_color(cor2);
			draw_text( 322, 582, key_confirm);
			draw_set_color(cor);
			draw_text( 320, 580, key_confirm);
	
			break;
	
		}
	}
}

