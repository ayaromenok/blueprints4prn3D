rotate([180,0,0]) {
difference(){ //road wheel
	union() {	//road wheel
		translate([0,0,5])
			cylinder(4,23,9, $fn=80);
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
		cylinder(20,3.2,3.2, $fn=32);
}//union of road wheel

difference(){ //road wheel internal part
	union() {	//road wheel internal part
		translate([0,0,2])
			cylinder(1,7,9, $fn=50);
		translate([0,0,-11])
			cylinder(13,5,5, $fn=40);
	} //difference of road wheel internal part
	translate([0,0,-15])
		cylinder(40,3.2,3.2, $fn=32);
}//union of road wheel internal part
}//rotate