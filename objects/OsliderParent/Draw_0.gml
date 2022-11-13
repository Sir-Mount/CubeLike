draw_self();

draw_sprite(SsliderButton, 0, x + (value * sprite_width*2), y);


draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(Ftext_Smol);
draw_set_color(c_white);

draw_text(x + sprite_width + 40, y, string(round(value * 100*2)) + "%");


draw_set_halign(fa_right);

draw_text(x - 15, y, name);