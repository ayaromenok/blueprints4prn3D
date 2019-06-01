difference(){
cylinder(20,35,35, $fn=200);
	translate([0,0,0.8]) cylinder(20,34.2,34.2, $fn=200);
	translate([-40,0,17]) rotate([0,90,0]) cylinder(80, 2,2, $fn=200);
	translate([0,40,17]) rotate([90,0,0]) cylinder(80, 2,2, $fn=200);
}


