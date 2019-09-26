difference(){
	cube([200,110,14]);
	translate([5,5,-1])
		cube([190,100,16]);
//	translate([5,5,1])
//		cube([98.4,105.4,15]);


	//torsion hole	
	for ( i=[0:5]) {
		
		translate([10+i*35,-5,7])
			rotate([-90,0,0])
				cylinder(20,3.2,3.2, $fn=32);
	}
	
//torsion hole	
	for ( i=[0:5]) {
		translate([16.4+i*35,100,7])
			rotate([-90,0,0])
				cylinder(20,3.2,3.2, $fn=32);
	}

}//body


for ( i=[0:5]) {
	//torsion fixer
	translate([5.6+i*35,95,3.5]) {
		rotate([0,30,0])
		difference(){
			translate([0,0,0])
				cube([4.4,10,9]);
			translate([1,-11,2])
				cube([2.4,12,6]);
			translate([-5,5,5])
				rotate([0,90,0])
					cylinder(20,1,1, $fn=12);
		}
	}
}


for ( i=[0:5]) {
	//torsion fixer
	translate([12+i*35,5,3.5]) {
		rotate([0,30,0])
		difference(){
			translate([0,0,0])
				cube([4.4,10,9]);
			translate([1,-1,2])
				cube([2.4,12,6]);
			translate([-5,5,5])
				rotate([0,90,0])
					cylinder(20,1,1, $fn=12);
		}
	}
}

