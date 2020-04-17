/// @description Insert description here
// You can write your code in this editor


//limpando os sistemas

part_system_clear(global.part_sys);
part_emitter_clear(global.part_sys, global.em);
part_type_clear(global.particula);

//destruindo os objetos

part_type_destroy(global.particula);
part_emitter_destroy(global.part_sys,global.em);
part_system_destroy(global.part_sys);