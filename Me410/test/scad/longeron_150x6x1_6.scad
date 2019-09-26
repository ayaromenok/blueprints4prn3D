length 	= 150; // 50, 100, 150, 200
step 	= 50; //don't change
difference(){
	translate([10,0,0])
		cube([length-20,6,1.6]);

	for (i = [0:step:(length-step)]) {
		translate([i,0,0]){
			translate([23.8,3,0])
				cube([2.4,4,2]);
		} //translate i
	} //for i

	for (i = [0:step:(length-step*2+1)]) {
		translate([i,0,0]){
			translate([27,1,0])
				cube([step-4,4,2]);				
		} //translate i
	} //for i

	translate([11,1,0])
			cube([12,4,2]);

	translate([length-23,1,0])
			cube([12,4,2]);
} //difference

for (i = [0:1]){
translate([(length-10)*i,0,0])
{	
	translate([3,2,0.8])
		cylinder(0.8,0.8,0.3, $fn=12);
	difference(){
		cube([10,4,0.8]);
		translate([7,2,0])
		cylinder(0.8,0.7,1.2, $fn=12);
	}
}
}// for i

