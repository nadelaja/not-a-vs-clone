/// @description Insert description here
// You can write your code in this editor
if ( follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x);
y += (yTo - y);

camera_set_view_pos(view_camera[0], x-(camWidth*0.5), y-(camHeight*0.5));
//camera_set_view_pos(view_camera[0],x,y);