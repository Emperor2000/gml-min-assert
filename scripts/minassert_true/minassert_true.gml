///	@function			AssertTrue(describe, actual);
///	@description			AssertTrue(describe, actual);
/// @param describe
///	@param {bool} actual
function AssertTrue(describe, actual){
	var result_value = 0;
	var result_notification = 0;
	
	
	
	if (describe == undefined || describe == -4) {
	result_value = "ERROR";
	result_notification = "ERROR: <describe> must be defined and a string";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	}
	if (actual == undefined) {
	result_value = "ERROR";
	result_notification = "ERROR: <actual> must be defined";
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value,  result_notification);
	return result_value;
	}
	
	if (!is_bool(actual) && actual != false && actual != true) {
	result_value = "ERROR";
	result_notification = "ERROR: <actual> must be a value that evaluates to true or false!";
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value,  result_notification);
	return result_value;
	}
	
	if (actual == false) {
	result_value = "FAIL";
	result_notification = "FAIL: Actual: " + string(actual) + " was false and should be true!";
	}
	
	
	if (actual == true) {
	result_value = "PASS";
	result_notification = "PASS: Actual: " + string(actual) + " is true";
	}
	
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	
}