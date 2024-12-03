/// @description Insert description here
// You can write your code in this editor
if(irandom(4) == 3){
	var rat = instance_create_layer(x, y, "Instances", obj_collectible);
	rat.image_xscale = irandom(1) * 2 - 1;
}

