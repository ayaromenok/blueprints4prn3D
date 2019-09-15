difference(){
linear_extrude(3)
	import("../dxf/RPi_3B.dxf", $fn=50);
translate([32,-1,-1])
	cube([55,70,5]);
translate([22,5,-1])
	cube([55,60,5]);

translate([12,12,-1])
	cylinder(5,2.3,2.3, $fn=20);
}

//connectors
for (i =[5:10:30]){
	translate([(i),0,1.5])
		rotate([0,90,0])
			cylinder(4.4,1.5,1.5, $fn=16);
}
for (i =[5:10:20]){
	translate([(i),57,1.5])
		rotate([0,90,0])
			cylinder(4.4,1.5,1.5, $fn=16);
}

