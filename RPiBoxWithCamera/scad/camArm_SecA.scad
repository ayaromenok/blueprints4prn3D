


translate([0,3,0])
rotate([90,0,0])
difference() {
	cylinder(6,5,5, $fn=30);
	cylinder(7,2.3,2.3, $fn=30);
}

translate([0,3,86])
rotate([90,0,0])
difference() {
	cylinder(6,5,5, $fn=30);
	cylinder(7,2.3,2.3, $fn=30);
}

difference(){
translate([-4,-3,3])
	scale([1,0.75,10])
		cube(8);

translate([-3.2,0,3])
	scale([0.8,0.75,10])
		cube(8);

translate([-3.2,-7,3])
	scale([0.8,0.75,10])
		cube(8);
}