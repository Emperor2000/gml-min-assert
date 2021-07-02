///	@function		AssertSmallerThan(describe, lowest, highest);
///	@description	AssertSmallerThan(describe, lowest, highest);
/// @param describe The unit test description
///	@param expected	The expected result
///	@param actual	The actual result
function AssertSmallerThan(describe, expected, actual){

	var result_value = 0;
	var result_notification = 0;
	
	if (describe == undefined) {
	result_value = "ERROR";
	result_notification = "ERROR: <describe> must be defined and a string";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
	}
	
	
	if (expected == undefined || expected == -4) {
		result_value = "ERROR";
		result_notification = "ERROR: <expected> must be defined";
		result_value = describe + " [[" + result_value + "]] ";
		var entry = ds_list_add(global.runner, result_value, result_notification);
		return result_value;

	}
	
	if (actual == undefined || actual == -4) {
		result_value = "ERROR";
		result_notification = "ERROR: <actual> must be defined";
		result_value = describe + " [[" + result_value + "]] ";
		var entry = ds_list_add(global.runner, result_value, result_notification);
		return result_value;
	}
	
	
	
	if (expected >= actual) {
		result_value = "FAIL";
		result_notification = "FAIL: Expected: " + string(expected) + " , actual: " + string(actual);
	}
	if (expected < actual) {
		result_value = "PASS";
		result_notification = "PASS: Expected: " + string(expected) + " , actual: " + string(actual);
	}
	
	result_value = describe + " [[" + result_value + "]] ";
	var entry = ds_list_add(global.runner, result_value, result_notification);
	return result_value;
}




		