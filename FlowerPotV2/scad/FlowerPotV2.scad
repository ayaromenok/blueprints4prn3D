difference(){
	cube([100,100,80]);
	translate([5,5,1])
		cube([90,90,80]);

	for (i = [0:10.5:100]){
		for (j = [0:10.5:100]){
			translate([-0.1+i,-0.1+j,75])
				cube([6,6,6]);
		} //j
	} //i
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
