difference(){
	cube([100,100,80]);
	translate([5,5,1])
		cube([90,90,80]);

//upper part
	for (i = [0:10.5:100]){
		for (j = [0:10.5:100]){
			translate([-0.1+i,-0.1+j,75])
				cube([6,6,6]);
		} //j
	} //i
	//windows front
	for (i = [0,20,40]) {
		translate([15+i,4,55])
			rotate([90,0,0])
				cylinder(5,5,5, $fn=16);
		translate([10+i,-1,40])
			cube([10,5,15]);
	} //windows front

	//windows left
	for (i = [0,20,40]) {
		translate([-1,15+i,,55])
			rotate([0,90,0])
				cylinder(5,5,5, $fn=16);
		translate([-1,10+i,40])
			cube([5,10,15]);
	} //windows left

}


//stairs
//front
	for (i = [0:2:20]){
		translate([40+i*1.5,-10,i])
			cube([70-i*1.5,10,3]);

	}
//right
	for (i = [0:2:52]){
		translate([100, i*1.5,,20+i])
			cube([10,100-i*1.5,3]);

	}
translate([100,0,0])
	cube([10,100,20]);


//windows front support
for (i = [0,20,40]) {
	translate([10+i,-2,37])
		cube([10,2,3]);
} //windows front support

//windows left support
for (i = [0,20,40]) {
	translate([-2,10+i,37])
			cube([2,10,3]);
} //windows left support