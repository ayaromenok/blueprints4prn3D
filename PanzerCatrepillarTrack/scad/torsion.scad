translate([0,3,2.8])
	rotate([90,0,0])
		cylinder(50,2.8,2.8, $fn=32);


translate([30,15,2.8])
	rotate([90,0,0])
		cylinder(15,2.8,2.8, $fn=32);

difference(){
translate([29.2,15,0])
	cube([1.6,95,5.6]);
translate([29,105,2.8])
	rotate([90,0,90])
		cylinder(4,1,1, $fn=12);
}


translate([0,3,5])
	rotate([90,0,0])
		cylinder(4,5,5, $fn=50);
translate([0,0,2])
	cube([30,3,6]);

translate([30,4,5])
	rotate([90,0,0])
		cylinder(4.4,5,5, $fn=50);

