translate([0,2.8,0])
rotate([90,0,0])
difference() {
	cylinder(5.4,5,5, $fn=30);
	cylinder(7,2.3,2.3, $fn=30);
}


//long
translate([-5,-2,2.4])
		cube([10,4,31]);

//translate([-5,-4,34.4])
//		cube([10,8,10]);

//right
translate([0,7,50])
rotate([90,0,0])
difference() {
	cylinder(4,5,5, $fn=30);
	cylinder(4,2.3,2.3, $fn=30);
}
translate([-5,3,33.5])
		cube([10,2.5,14]);

//left
translate([0,-3,50])
rotate([90,0,0])
difference() {
	cylinder(4,5,5, $fn=30);
	cylinder(4,2.3,2.3, $fn=30);
}
translate([-5,-5.5,33.5])
	cube([10,2.5,14]);

translate([0,3,36.8])
		rotate([0,270,90])
			scale([7,5.71,1])
			linear_extrude(6)
	 		circle(r=1, $fn=3);