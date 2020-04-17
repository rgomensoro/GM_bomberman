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


