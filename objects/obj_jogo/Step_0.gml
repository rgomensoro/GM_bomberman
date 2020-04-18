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
	if (keyboard_check_pressed(vk_right))
	{
		players_count ++;
		
		if (select == array_length_1d(player_names))
			players_count = 0;

		var player;

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


	}

	
	
	
}