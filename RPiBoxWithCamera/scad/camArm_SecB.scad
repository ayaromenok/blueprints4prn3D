


translate([0,2.8,0])
rotate([90,0,0])
difference() {
	cylinder(5.4,5,5, $fn=30);
	cylinder(7,2.3,2.3, $fn=30);
}


//long
translate([-5,-2,2.4])
	scale([1,0.4,4])
		cube(10);
translate([-5,-4,34.4])
	scale([1,0.8,1])
		cube(10);

//right
translate([0,7,50])
rotate([90,0,0])
difference() {
	cylinder(4,5,5, $fn=30);
	cylinder(4,2.3,2.3, $fn=30);
}
translate([-5,3,37.5])
	scale([1,0.25,1])
		cube(10);

//left
translate([0,-3,50])
rotate([90,0,0])
difference() {
	cylinder(4,5,5, $fn=30);
	cylinder(4,2.3,2.3, $fn=30);
}

translate([-5,-5.5,37.5])
scale([1,0.25,1])
cube(10);
