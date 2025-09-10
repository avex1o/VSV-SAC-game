// Base position for the bars
var _dx = 16;
var _dy = 16;

// Size of the bars
var _barw = 256;
var _barh = 32;

// Set font and text alignment (centered)
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Calculate health bar width proportional to current HP
var _health_barw = _barw * (hp/hp_total);

// Draw the empty health bar background
draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);

// Draw the filled portion of the health bar 
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);

// Draw the "HEALTH" text centered over the bar
draw_text(_dx + _barw /2, _dy + _barh /2, "HEALTH");

// Calculate XP bar width proportional to current XP
var _xp_barw = _barw * (xp / xp_require);

// Move vertical position down for the XP bar
_dy += _barh + 8;

// Draw the empty XP bar background
draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);

// Draw the filled portion of the XP bar 
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_aqua, 0.6);

// Draw the level text centered over the XP bar
draw_text(_dx + _barw /2, _dy + _barh /2, $"LEVEL {lvl}");

// Reset text alignment to top-left for other drawing
draw_set_halign(fa_left);
draw_set_valign(fa_top);
