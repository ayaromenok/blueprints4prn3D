difference(){
	cube([100,100,90]);
	translate([50,50,3])
//		cube([90,90,90]);
		rotate([0,0,45])
			cylinder(90,62,65,$fn=4);

//upper part
	for (i = [0:10.5:100]){
		for (j = [0:10.5:100]){
			translate([-0.1+i,-0.1+j,85])
				cube([6,6,6]);
		} //j
	} //i
	//windows front
	for (i = [0,20,40]) {
		translate([15+i,3,60])
			rotate([90,0,0])
				cylinder(5,4,4, $fn=16);
		translate([11+i,-2,48])
			cube([8,5,12]);
	} //windows front

	//windows left
	for (i = [0,20,40]) {
		translate([-2,(15+i),60])
			rotate([0,90,0])
				cylinder(5,4,4, $fn=16);
		translate([-2,11+i,48])
			cube([5,8,12]);
	} //windows left

	//windows right
	for (i = [0,20,20]) {
		translate([97,15+i,,68])
			rotate([0,90,0])
				cylinder(5,4,4, $fn=16);
		translate([97,11+i,56])
			cube([5,8,12]);
	} //windows right


	//doors front
		translate([18,3,18])
			rotate([90,0,0])
				cylinder(5,7,7, $fn=32);
		translate([11,-2,0])
			cube([14,5,18]);

		translate([81,3,40])
			rotate([90,0,0])
				cylinder(5,7,7, $fn=32);
		translate([74,-2,22])
			cube([14,5,18]);
	//doors front

	//door right
		translate([97,83,65])
			rotate([0,90,0])
				cylinder(5,7,7, $fn=32);
		translate([97,76,47])
			cube([5,14,18]);
	//door right

	//holes in the back
		translate([50,102,55])
			rotate([90,0,0])
				scale([1,2,1])
					cylinder(5,4,6, $fn=32);

	//holes forwater
		translate([30,105,10])
			rotate([90,0,0])
					cylinder(15,2,2, $fn=8);
		translate([70,105,10])
			rotate([90,0,0])
					cylinder(15,2,2, $fn=8);

}


//stairs
//front
	for (i = [0:2:20]){
		translate([40+i*1.5,-10,i])
			cube([70-i*1.5,10,3]);

	}
//right
	for (i = [0:2:25]){
		translate([100, 30+i*1.5,,20+i])
			cube([10,70-i*1.5,3]);

	}
translate([100,0,0])
	cube([10,100,23]);


//windowsill front 
for (i = [0,20,40]) {
	translate([10+i,0,46])
		rotate([0,90,0])
			cylinder(10,3,3,$fn=3);
} //windows front support

//windowsill left support
for (i = [0,20,40]) {
	translate([0,10+i,46])
		rotate([0,90,90])
			cylinder(10,3,3,$fn=3);
} //windows left support

//windowsill right support
for (i = [0,20,20]) {
	translate([100,10+i,54])
		rotate([0,90,90])
			cylinder(10,3,3,$fn=3);
} //windows right support

