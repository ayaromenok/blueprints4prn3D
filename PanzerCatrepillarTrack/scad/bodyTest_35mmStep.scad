difference(){
	cube([100,107,10]);
	translate([5,5,-1])
		cube([90,97,12]);
	translate([2,2,1])
		cube([96,103,12]);


	//torsion hole	
	for ( i=[0:2]) {
		
		translate([10+i*35,-5,5])
			rotate([-90,0,0])
				cylinder(20,3,3, $fn=32);
	}
}

for ( i=[0:2]) {
	//torsion fixer
	difference(){
		translate([6.8+i*35,95,0])
			cube([6.4,10,10]);
		translate([8.8+i*35,94,2])
			cube([2.4,12,6]);
		translate([0+i*35,100,5])
			rotate([0,90,0])
				cylinder(20,1,1, $fn=12);
	}
}

