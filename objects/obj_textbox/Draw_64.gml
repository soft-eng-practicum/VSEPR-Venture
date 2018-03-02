/// @desc draw textbox
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_roundrect(100, 320, 540, 420, false);

draw_set_color(c_white);
draw_set_alpha(1);
draw_roundrect(100, 320, 540, 420, true);

// text
draw_set_font(fnt_large);
draw_text_ext(120, 332, message_draw, 28, 380);