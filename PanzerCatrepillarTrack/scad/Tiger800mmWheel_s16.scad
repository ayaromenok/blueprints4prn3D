difference(){ //road wheel
	union() {	//road wheel
		translate([0,0,5])
			cylinder(4,23,8, $fn=80);
		translate([0,0,4])
			cylinder(1,25,23, $fn=80);
		translate([0,0,1])
			cylinder(3,25,25, $fn=80);
		translate([0,0,0])
			cylinder(1,23,25, $fn=80);
	}//union of road wheel
	translate([0,0,-0.5])
		cylinder(4,23,8, $fn=80);
	translate([0,0,-5])
		cylinder(20,3,3, $fn=32);
}//union of road wheel

translate([60,0,0])
rotate_extrude(angle=360, convexity=120, $fn=100)
	rotate([0,0,90])	
		import("../dxf/Tiger800mmWheel_s16.dxf", $fn=60);