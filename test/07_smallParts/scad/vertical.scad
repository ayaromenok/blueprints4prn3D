translate([0.,0.,0])
	cylinder(0.8,4,4, $fn=50);
translate([0.,0.,0])
	cylinder(10,0.6,0.6, $fn=50);

translate([10,0.,0])
	cylinder(0.8,4,4, $fn=50);
translate([10,0.,0])
	cylinder(10,0.8,0.8, $fn=50);


translate([20,0.,0])
	cylinder(0.8,4,4, $fn=50);
translate([20,0.,0])
difference(){
		cylinder(10,1.2,1.2, $fn=50);
		cylinder(12,0.8,0.8, $fn=50);
}

translate([30,0.,0])
	cylinder(0.8,4,4, $fn=50);
translate([30,0.,0])
difference(){
		cylinder(10,1.6,1.6, $fn=50);
		cylinder(12,0.8,0.8, $fn=50);
}