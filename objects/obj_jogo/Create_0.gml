/// @description Insert description here
// You can write your code in this editor

select = 0;

options = ["1 Player", "2 Players", "3 Players", "4 Players", "Controls"];

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


//Controle P1
scr_insert_control(players.p1, vk_up, vk_down, vk_left, vk_right, vk_space);

//Controle P2
scr_insert_control(players.p2, ord("W"), ord("S"), ord("A"), ord("D"), ord("C"));

//Controle P3

//Controle P4

