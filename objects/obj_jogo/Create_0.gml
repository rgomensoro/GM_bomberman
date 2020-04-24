/// @description Insert description here
// You can write your code in this editor

//seletor dos menus
select = 0;

//Menu principal
options = ["1 Player", "2 Players", "3 Players", "4 Players", "Controls"];

// Menu controles
player_names = ["Player 1", "Player 2", "Player 3", "Player 4"];
key_options = ["UP", "DOWN", "LEFT", "RIGHT", "SPACE"];
key_confirm = "OK";
menu_options = 0;
moved = false;

right = 0;
left = 0;

enum players 
{
	p1, p2, p3, p4
}
enum controls
{
	up, down, left, right, bomb
}

global.players_controls = ds_grid_create(4,5);
ds_grid_clear(global.players_controls,0);

global.life = [3,3,3,3];

//Controle P1
scr_insert_control(players.p1, vk_up, vk_down, vk_left, vk_right, vk_space);

//Controle P2
scr_insert_control(players.p2, ord("W"), ord("S"), ord("A"), ord("D"), ord("C"));

//Controle P3

//Controle P4

