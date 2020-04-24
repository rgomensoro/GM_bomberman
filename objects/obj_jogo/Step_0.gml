/// @description Insert description here
// You can write your code in this editor

if (room == rm_inicio)
{
	if (keyboard_check_pressed(vk_down))
	{
			select ++;
		
			if (select == array_length_1d(options))
				select = 0;
	}

	if (keyboard_check_pressed(vk_up))
	{
			select --;
		
			if (select < 0)
				select = array_length_1d(options) - 1;
	}

	if (keyboard_check_pressed(vk_enter))
	{
		
		switch (select)
		{

			case 0:
				global.active_players = [true, false, false, false];
				scr_room_transition(rm_level);
				break;
			
			case 1:
				global.active_players = [true, true, false, false];
				scr_room_transition(rm_level);
				break;
				
			case 2:
				global.active_players = [true, true, true, false];
				scr_room_transition(rm_level);
				break;
				
			case 3:
				global.active_players = [true, true, true, true];
				scr_room_transition(rm_level);
				break;

			case 4:
				select = 0; //reseta cursos do menu
				//carrega player 1
				
				for (i = 0; i < array_length_1d(key_options); i ++)
				{
					key_options[i] = scr_converte_tecla(global.players_controls[# select, i]);
				}
						
				room_goto(rm_controls);				
				break;
			
		}
	}
}

if (room == rm_controls)
{

	up = keyboard_check_pressed(vk_up);
	down = keyboard_check_pressed(vk_down);

	if (up)
	{
		menu_options --;

		if (menu_options < 0)
			menu_options = 6;	
	}

	if (down)
	{
		menu_options ++;

		if (menu_options > 6)
			menu_options = 0;	
	}


	switch (menu_options)
	{
		// menu player
		case 0:

			right = keyboard_check_pressed(vk_right);
			left = keyboard_check_pressed(vk_left);
	
			if (right || left)
			{
		
				if (right)
				{
					select ++;
		
					if (select == array_length_1d(player_names))
						select = 0;			
				}
		
				if (left)
				{
					select --;
		
					if (select < 0)
						select = array_length_1d(player_names) - 1;
				}

				for (i = 0; i < array_length_1d(key_options); i ++)
				{
					key_options[i] = scr_converte_tecla(global.players_controls[# select, i]);
				}
			}

		break;	
		
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
				
			if (keyboard_key)
			{			
				key_options[menu_options-1] = scr_converte_tecla(keyboard_key);		
				global.players_controls[# select, menu_options-1] = keyboard_key;
			}
			//room_goto(rm_inicio);

			break;
		
		case 6:

			enter = keyboard_check_pressed(vk_enter);
			
			if (enter)
			{
				//retorna
				room_goto(rm_inicio);
			}
		
			break;

	}
}