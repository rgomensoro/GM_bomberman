///@desc scr_room_transition(var target_room)
///@param target_room

target = argument0;

var transition = instance_create_layer(0,0,"Transition",obj_transition);
transition.target_room = target;
