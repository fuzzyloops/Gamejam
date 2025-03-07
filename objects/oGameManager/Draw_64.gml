draw_set_font(FNT_GUI);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(70,50,"Score: " + string(global.SCORE));
draw_text(70,100,"Time: " + string(global.TIMEPLAYED));