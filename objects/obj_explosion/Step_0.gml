/// @description Insert description here
// You can write your code in this editor

if (image_index > image_number-1) instance_destroy();

var col = instance_place(x , y, obj_bomba);

if (col)
{
	if (col.alarm[0] >= 2)
	{
		col.alarm[0] = 1;
	}
}

//colidindo com a parede
var col = instance_place(x , y, obj_block);
			
if (col)
{
				
	if (col.destructable)
	{
		instance_destroy(col);		
		instance_destroy();
	}
	else
	{
		instance_destroy();
		
	}
	
}


part_emitter_region(global.part_sys, global.em, x + sprite_width/2,x + sprite_width/2,y + sprite_width/2,y + sprite_width/2, 0, 0);
part_emitter_burst(global.part_sys, global.em,global.particula,2);


//colidindo com o player
var player = instance_place (x, y, obj_player_pai);

if (player)
{
	player.morto = true;
	player.image_speed = 0; //para de se mexer
}

