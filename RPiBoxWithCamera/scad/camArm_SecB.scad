


translate([0,3,0])
rotate([90,0,0])
difference() {
	cylinder(6,5,5, $fn=30);
	cylinder(7,2.3,2.3, $fn=30);
}


//difference(){
translate([-5,-3,2.2])
	scale([1,0.6,4.2])
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

translate([-5,-5,37.5])
scale([1,0.25,1])
cube(10);
