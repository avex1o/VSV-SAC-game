// Set position and size for the dialog box
var _dx = 0;
var _dy = gui_h * 0.7;      
var _boxw = gui_w;        
var _boxh = gui_h - _dy;     

// Draw the background of the dialog box
draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

// Add padding for text inside the box
_dx += 16;
_dy += 16;

// Set font for drawing text
draw_set_font(Font1);

// Get the name of the character speaking
var _name = msgs[current_msg].name;

// Set color for the character name (based on global color mapping)
draw_set_color(global.char_colors[$ _name]);

// Draw the character's name
draw_text(_dx, _dy, _name);

// Reset color to white for message text
draw_set_color(c_white);

// Move vertical position down to start drawing message text
_dy += 40;

// Draw the message text with word wrap inside the dialog box
draw_text_ext(_dx, _dy, draw_msg, -1, _boxw - _dx * 2);
