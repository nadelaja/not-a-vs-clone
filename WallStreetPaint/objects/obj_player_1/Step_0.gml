/*
if (keyboard_check(vk_left))
{
    x = x - 2;
	image_angle = 180;
}
else if (keyboard_check(vk_right))
{
    x = x + 2;
	image_angle = 0;
}
else if (keyboard_check(vk_up))
{
    y = y - 2;
	image_angle = 90;
}
else if (keyboard_check(vk_down)) */
var _left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var _right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var _up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var _down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0)
{
	switch(sprite_index) {
		case character_blue:
		sprite_index = character_blue_walk;
		break;
		case character_yellow:
		sprite_index = character_yellow_walk;
		break;
		case character_red:
		sprite_index = character_red_walk;
		break;
	}
		
	
    var _spd = 1.3;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
	if(_right >= _left){
		
		image_xscale=1
	}
	else
	{
		
		image_xscale=-1
	}
} else {
	switch(sprite_index) {
		case character_blue_walk:
		sprite_index = character_blue;
		break;
		case character_yellow_walk:
		sprite_index = character_yellow;
		break;
		case character_red_walk:
		sprite_index = character_red;
		break;
	}
}

move_wrap(true, true, 0);

depth = -bbox_bottom;