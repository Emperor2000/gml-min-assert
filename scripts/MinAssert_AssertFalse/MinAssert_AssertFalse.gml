///	@func			AssertFalse(describe, actual);
///	@desc			AssertFalse(describe, actual);
/// @param describe
///	@param {bool} actual
function AssertFalse(describe, actual){
	var result_value = 0;
	var result_notification = 0;
	
	if (describe == undefined) {
	result_value = "ERROR";
	result_notification = "ERROR: <describe> must be defined and a string";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	}

	if (actual == undefined || actual == -4) {
	result_value = "ERROR";
	result_notification = "ERROR: <actual> must be defined";
	var entry = ds_list_add(global.runner, result_value,  result_notification);
	result_value = describe + " [[" + result_value + "]] ";
	return result_value;
	}
	
	if (!is_bool(actual) && actual != 0 && actual != 1) {
	result_value = "ERROR";
	result_notification = "ERROR: <actual> must be a value that evaluates to true or false!";
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	}
	
	if (actual == false) {
	result_value = "PASS";
	result_notification = "PASS: Actual: " + string(actual) + " was false!";
	}
	
	
	if (actual == true) {
	result_value = "FAIL";
	result_notification = "FAIL: Actual: " + string(actual) + " was true and should be false!";
	}
	
	result_value = describe + " [[" + result_value + "]] ";
	ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	
}
