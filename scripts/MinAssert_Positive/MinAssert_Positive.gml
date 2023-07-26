///	@function			AssertPositive(describe, actual);
///	@description			AssertPositive(describe, actual);
/// @param describe
///	@param {bool} actual
function AssertPositive(describe, actual){
	var result_value = 0;
	var result_notification = 0;
	
	//edge case for noone / -4 (equal at runtime)
	if (actual == -4) {
	result_value = "FAIL";
	result_notification = "FAIL: Actual: " + string(actual) + " is negative or could be noone at runtime!";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	}
	
	if (describe == undefined) {
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
	
	if (is_string(actual)) {
	result_value = "ERROR";
	result_notification = "ERROR: <actual> must be a number";
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value,  result_notification);
	return result_value;
	}
	
	if (actual < 0) {
	result_value = "FAIL";
	result_notification = "FAIL: Actual: " + string(actual) + " is negative and should be positive!";
	}
	
	
	if (actual > 0) {
	result_value = "PASS";
	result_notification = "PASS: Actual: " + string(actual) + " is positive!";
	}
	
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add	(global.runner, result_value, result_notification);
	return result_value;
	
}