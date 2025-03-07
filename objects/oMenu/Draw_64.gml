draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FNT_GUI);

var centerX = display_get_gui_width()/2;
var centerY = display_get_gui_height()/2;

draw_text(centerX,centerY-50,"No more room for mushrooms!");
draw_text(centerX,centerY+150,"Press space to begin!");

draw_text(centerX+500,centerY+450,"fuzzyloops.itch.io");