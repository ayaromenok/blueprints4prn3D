difference(){
linear_extrude(3)
	minkowski(){
		square([10,36]);
		circle(2, $fn=16);
	}

translate([3,3,-0.5])
	cylinder(5, 2.4, 2.4, $fn=20);
translate([3,27,-0.5])
	cylinder(5, 2.4, 2.4, $fn=20);

translate([7,10,-0.5])
	cube([2,10,5]);
translate([7,24,-0.5])
	cube([2,10,5]);

translate([5.5,7.5,-3.5])
	cube([5,29,5]);
}