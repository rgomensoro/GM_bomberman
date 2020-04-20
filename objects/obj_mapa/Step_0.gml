/// @description Insert description here
// You can write your code in this editor

//Criando os blocos externos (Linhas e colunas)
grid_size = 32;

if (num_players == 0)
{
	game_restart();
}

if (global.total_blocks < 0)
{
	global.level++;
	show_debug_message("Level:" + string(global.level));

	room_restart();	
}
