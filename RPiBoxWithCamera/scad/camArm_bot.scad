translate([0,0,0])
rotate([0,0,0])
difference() {
	cylinder(2,7,7, $fn=40);
	cylinder(3,2.3,2.3, $fn=40);
}
translate([0,5,11])
rotate([90,0,0])
difference() {
	cylinder(2,5,5, $fn=30);
	cylinder(3,2.3,2.3, $fn=30);
}
translate([-4,3,0])
	scale([1,0.25,1])
		cube(8);

translate([0,-3,11])
rotate([90,0,0])
difference() {
	cylinder(2,5,5, $fn=30);
	cylinder(3,2.3,2.3, $fn=30);
}

translate([-4,-5,0])
scale([1,0.25,1])
cube(8);