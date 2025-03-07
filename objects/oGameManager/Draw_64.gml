draw_set_font(FNT_GUI);
draw_set_valign(fa_middle);

if(room == rm_Main)
{
	if(!global.GAMEOVER)
	{
		draw_set_halign(fa_left);
		draw_text(70,50,"Score: " + string(global.SCORE));
		draw_text(display_get_gui_width()/2,50,"Time left:" + string(global.TIMELEFT));
	}
	else
	{
		draw_set_halign(fa_center);
		draw_sprite_stretched(sGameOver,0,0,0,display_get_width(),display_get_height());
		draw_text(display_get_width()/2,display_get_height()/2,"You ran out of time!");
		draw_text(display_get_width()/2,display_get_height()/2+100,"Your final score was: " + string(global.SCORE));
		draw_text(display_get_width()/2,display_get_height()/2+200,"Press space to go back to the menu!");
	}
}
