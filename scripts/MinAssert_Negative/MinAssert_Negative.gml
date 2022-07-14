///	@function			AssertNegative(describe, actual);
///	@description			AssertNegative(describe, actual);
/// @param describe
///	@param {bool} actual
function AssertNegative(describe, actual){
	var result_value = 0;
	var result_notification = 0;
	
	//edge case for noone / -4 (equal at runtime)
	if (actual == -4) {
	result_value = "PASS";
	result_notification = "PASS: Actual: " + string(actual) + " is negative, but could be noone during runtime!";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	}
	
	//describe must be defined and a string
	if (describe == undefined) {
	result_value = "ERROR";
	result_notification = "ERROR: <describe> must be defined and a string";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	}
	
	//actual must be defined
	if (actual == undefined) {
	result_value = "ERROR";
	result_notification = "ERROR: <actual> must be defined";
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value,  result_notification);
	return result_value;
	}
	
	//actual must be a number
	if (is_string(actual)) {
	result_value = "ERROR";
	result_notification = "ERROR: <actual> must be a number";
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value,  result_notification);
	return result_value;
	}
	
	//fail
	if (actual > 0) {
	result_value = "FAIL";
	result_notification = "FAIL: Actual: " + string(actual) + " is positive and should be negative!";
	}
	
	//pass
	if (actual < 0) {
	result_value = "PASS";
	result_notification = "PASS: Actual: " + string(actual) + " is negative!";
	}
	
	//result
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	
}