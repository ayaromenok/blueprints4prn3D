//bottom
translate([0,0,-1])
rotate([0,0,0])
difference() {
	cylinder(3,12,10, $fn=40);
	cylinder(4,2.3,2.3, $fn=40);
}
//right
translate([0,7,11])
rotate([90,0,0])
difference() {
	cylinder(4,5,5, $fn=30);
	cylinder(4,2.3,2.3, $fn=30);
}
translate([-4,5,0])
	scale([1,0.25,1])
		cube(8);
translate([-4,6,0])
	scale([1,0.25,0.5])
		cube(8);
//left
translate([0,-3,11])
rotate([90,0,0])
difference() {
	cylinder(4,5,5, $fn=30);
	cylinder(4,2.3,2.3, $fn=30);
}

translate([-4,-7,0])
scale([1,0.25,1])
cube(8);

translate([-4,-8,0])
scale([1,0.25,0.5])
cube(8);