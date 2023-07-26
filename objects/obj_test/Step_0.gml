/// @description Insert description here
// You can write your code in this editor
image_angle += 0.01;
x+= 0.01;
y+= 0.01;

if (countdown > 0) {
	//run tests
	AssertPositive("obj_test - image angle should be positive.",image_angle);
	AssertEquals("x should be greater than y", y, x);
}

countdown -= 1;