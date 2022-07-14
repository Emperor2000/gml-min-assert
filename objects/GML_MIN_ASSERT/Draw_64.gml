/// @description Rendering
draw_set_halign(fa_left);
draw_set_font(GML_MIN_ASSERT_FONT);
var j = 0;
draw_text((room_width/3)+xdraw, 100, "===========GML MIN ASSERT==========");
for (var i = 0; i < ds_list_size(global.runner); i++) {
	j = scrollvalue + increment * i;
	
	if (string_count("PASS", ds_list_find_value(global.runner, i))) {
		draw_set_color(c_green);
	}
	if (string_count("FAIL", ds_list_find_value(global.runner, i))) {
		draw_set_color(c_red);	
	}
	if (string_count("ERROR", ds_list_find_value(global.runner, i))) {
		draw_set_color(c_orange);	
	}
	
	draw_text((room_width/3)+xdraw, j,global.runner[| i]);	
	
	draw_set_color(c_white);
}
draw_text((room_width/3)+xdraw, 100+j,"===========UNIT TESTS COMPLETE==========");


draw_set_halign(fa_left);
draw_set_font(font_default);
