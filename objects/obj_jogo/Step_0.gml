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
				scr_room_transition(rm_controls);				
				break;
			
		}
	}
}

if (room == rm_controls)
{
	right = keyboard_check_pressed(vk_right);
	left = keyboard_check_pressed(vk_left);
	
	if (right || left)
	{
		
		if (right)
		{
			players_count ++;
		
			if (select == array_length_1d(player_names))
				players_count = 0;
		}
		
		if (left)
		{
			players_count --;
		
			if (select == array_length_1d(player_names))
				players_count = 0;
		}

		var player = [];

		switch (players_count)
		{
		
			case 0:
				scr_define_control(player, players.p1);
				break;			
			case 1:
				scr_define_control(player, players.p1);
				break;			
			case 2:
				scr_define_control(player, players.p1);
				break;			
			case 3:
				scr_define_control(player, players.p1);
				break;			
		}

		show_debug_message( string(player.controles[0]));
		show_debug_message( string(player.controles[1]));
		show_debug_message( string(player.controles[2]));
		show_debug_message( string(player.controles[3]));
		show_debug_message( string(player.controles[4]));
	}

	
	
	
}