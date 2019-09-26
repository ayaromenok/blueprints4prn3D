translate([10,0,0])
	cube([130,2,1.6]);

for (i = [0:1]){
translate([140*i,0,0])
{	
	translate([3,2,0.8])
		cylinder(0.8,1,0.5, $fn=12);
	difference(){
		cube([10,4,0.8]);
		translate([7,2,0])
		cylinder(0.8,0.7,1.2, $fn=12);
	}
}
}// for i

for (i = [0:2]) {
	translate([i*50,0,0]){
		translate([23,2,0])
			rotate([0,0,60])
				cylinder(1.6,2,2, $fn=3);
		translate([27,2,0])
			rotate([0,0,0])
				cylinder(1.6,2,2, $fn=3);
	} //translate i
} //for i