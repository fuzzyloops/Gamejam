draw_self();

if(!watered && !place_meeting(x,y,oEnemy))
{
	draw_sprite(sGUI_NeedWater,0,x+10,y-10);	
}
else if(place_meeting(x,y,oEnemy))
{
	draw_sprite(sGUI_Danger,0,x+10,y-10);	
}