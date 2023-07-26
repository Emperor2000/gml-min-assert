/// @description Add tests here
global.minassert_isverbose = true; //whether the unit tests are printed in the console.
global.runner = ds_list_create();
increment = 50;
scrollvalue = 200;
xdraw = 0;

//=========
//EXAMPLE TESTS
//=========
var condition = 1
AssertEquals("It should help your workflow!", true, condition);
var condition_false = false;
AssertEquals("It helps you keep your codebase bug free!", true, condition);
var number_of_bugs = 0;
AssertTrue("this test fails on purpose!", number_of_bugs);
AssertTrue("It you are a rockstar!", condition);
AssertNotEquals("It is not equal to 1", 0, condition);
AssertTrue("it filters out errors!", "yep");
AssertGreaterThan("24 is more than 12", 24, 12);
AssertSmallerThan("1 is less than 6", 1, 6);
AssertPositive("1 is a positive number", 1);
AssertNegative("-1 is a negative number", -1);
AssertNegative("-4 is a valid assertion", -4);
AssertNegative("undefined is not a valid assertion", undefined);
AssertNegative("noone is -4 during runtime", noone);
AssertPositive("-4 is positive", -4);
AssertNegative("-4 is negative", -4);


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