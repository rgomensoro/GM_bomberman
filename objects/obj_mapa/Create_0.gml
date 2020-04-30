/// @description Insert description here
// You can write your code in this editor

//Criando os blocos externos (Linhas e colunas)
grid_size = 32;
creeps = 1;

randomize();

show_debug_message("Create obj_mapa");

num_players = 0;
global.total_blocks = 0;


for (i = 0; i < 4; i ++)
{
	if (global.active_players[i]) num_players++;
}

randomise();

var tam = 8 + (global.level);

room_width = tam * grid_size;
room_height = tam * grid_size;

//camera_set_view_size(view_camera[0],room_width, room_height);

var col = tam;
var lin = tam;


for (var i = 0; i < col; i++)
{

	for (var j = 0; j < lin; j++)
	{
		
		var player_1 = !((i == 1 && j == 1) || (i == 1 && j == 2) || (i==2 && j == 1));
		var player_2 = !((i == col-2 && j == 1) || (i == col-2 && j == 2) || (i==col-3 && j == 1));
		var player_3 = !((i == 1 && j == lin-2) || (i == 1 && j == lin-3) || (i==2 && j == lin-2));
		var player_4 = !((i == col-2 && j == lin-2) || (i == col-2 && j == lin-3) || (i==col-3 && j == lin-2));

		var posso = (player_1 && player_2 && player_3 && player_4);
		var parede = ((i==0) || (j==0) || (i==col-1) || (j==lin-1));
		var meio = (( i mod 1.5 == 0) && (j mod 1.5 == 0));
		var bordas = ((i==1) || (j==1) || (i==col-2) || (j==lin-2));

		//Criando as paredes externas		
		if (parede || meio && posso && !bordas)
		{		
			var block = instance_create_layer(i*grid_size, j*grid_size, "Level", obj_block);	
			block.destructable = false;
		}
		else
		{	
			//criando os blocos inquebráveis internos
			if (posso)	
			{	
				var newblocks = irandom(100);

				if (newblocks < 50)
				{
					var block = instance_create_layer(i*grid_size, j*grid_size, "Level", obj_block);
					block.destructable = true;
					
					show_debug_message("Num Blocks:" + string(global.total_blocks));
					global.total_blocks++;
				
				}
				else
				{
					show_debug_message("Espaco livre");
					if (creeps != 0)
					{
						var newcreeps = irandom(100);

						if (newcreeps < 10)
						{
							show_debug_message("Tem creeps " + string(creeps));
							creeps --;
							instance_create_layer(i*grid_size, j*grid_size, "Player", obj_creep);
						}
						else
							show_debug_message("Espaco livre");
					}
				
				}
				
			}
		}
	}	
}

// Posições iniciais dos players	
//criando players 
//P1
if (global.active_players[0])
{
	o_player1 = instance_create_layer(1*grid_size, 1*grid_size, "Player", obj_player_1);
	scr_define_control(o_player1, players.p1);
}
		
//P2
if (global.active_players[1])
{
	o_player2 = instance_create_layer((col-2)*grid_size, (lin-2)*grid_size, "Player", obj_player_2);	
	scr_define_control(o_player2, players.p2);
}
		
//P3
if (global.active_players[2])
{
	o_player3 = instance_create_layer(1*grid_size, (lin-2)*grid_size, "Player", obj_player_3);		
	scr_define_control(o_player3, players.p3);
}
		
//P4
if (global.active_players[3])
{
	o_player4 = instance_create_layer((col-2)*grid_size, 1*grid_size, "Player", obj_player_4);			
	scr_define_control(o_player4, players.p4);
}

instance_create_layer((col-2)*grid_size, (lin-2)*grid_size, "Player", obj_creep);	