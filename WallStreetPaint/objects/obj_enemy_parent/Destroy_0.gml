/// @description Insert description here
// You can write your code in this editor
switch(obj_player_1.current_level) {
	case 1:
		if(irandom(4) == 3){
			var rat = instance_create_layer(x, y, "Instances", obj_collectible);
			rat.image_xscale = irandom(1) * 2 - 1;
			effect_create_above(ef_star, x, y, 0.25, #fffde3);
		}
		break;
		
	case 2: 
		if(irandom(5) == 3){
			var rat = instance_create_layer(x, y, "Instances", obj_collectible);
			rat.image_xscale = irandom(1) * 2 - 1;
			effect_create_above(ef_star, x, y, 0.25, #fffde3);
		}
		break;
		
	case 3:
		if(irandom(6) == 3){
			var rat = instance_create_layer(x, y, "Instances", obj_collectible);
			rat.image_xscale = irandom(1) * 2 - 1;
			effect_create_above(ef_star, x, y, 0.25, #fffde3);
		}
		break;
		
	case 4:
		if(irandom(7) == 3){
			var rat = instance_create_layer(x, y, "Instances", obj_collectible);
			rat.image_xscale = irandom(1) * 2 - 1;
			effect_create_above(ef_star, x, y, 0.25, #fffde3);
		}
		break;
		
	case 5:
		if(irandom(8) == 3){
			var rat = instance_create_layer(x, y, "Instances", obj_collectible);
			rat.image_xscale = irandom(1) * 2 - 1;
			effect_create_above(ef_star, x, y, 0.25, #fffde3);
		}
		break;
}
		

