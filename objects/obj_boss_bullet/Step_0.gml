var inst = instance_place(x, y, obj_wall_prt);

if (inst != noone && inst.solid) {
	instance_destroy();	
}