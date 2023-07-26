/// @description Add tests here
global.minassert_isverbose = true; //whether the unit tests are printed in the console.
global.runner = ds_list_create();
increment = 50;
scrollvalue = 200;
xdraw = 0;

//=========
//EXAMPLE TESTS
//=========
var condition = 2
AssertPositive("condition should be positive", condition);
AssertEquals("condition should be 2", 2, condition);
//===========================
//ADD YOUR UNIT TESTS HERE OR IN A CUSTOM OBJECT, ALTERNATIVELY USE A "WITH GML_MIN_ASSERT" STATEMENT:
//===========================


//===========
//PRINT TESTS
//===========
show_debug_message("===========GML MIN ASSERT==========");
for (var i = 0; i < ds_list_size(global.runner); i++) {
	show_debug_message(global.runner[| i]);	
}
show_debug_message("===========UNIT TESTS COMPLETE==========");