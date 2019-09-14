//linear_extrude(2)
//	import("../dxf/RPi_3B.dxf", $fn=50);
difference(){
translate([-5,-5,0])
	cube([95,66,25]);
translate([-4,-4,1])
	cube([93,64,25]);
translate([-6,-4,3])
	cube([10,64,20]);
translate([20,55,3])
	cube([60,10,10]);

translate([90,17,1])
	cube([10,20,10]);

}

//support fo 2.5mm scolls
//*
height = 3;
translate([3.5,3.5,0])
difference(){
		cylinder(height,2.5,2.5, $fn=20);
		cylinder(12,1.35,1.35, $fn=20);
}

translate([3.5,52.5,0])
difference(){
		cylinder(height,2.5,2.5, $fn=20);
		cylinder(12,1.35,1.35, $fn=20);
}

translate([61.5,3.5,0])
difference(){
		cylinder(height,2.5,2.5, $fn=20);
		cylinder(12,1.35,1.35, $fn=20);
}

translate([61.5,52.5,0])
difference(){
		cylinder(height,2.5,2.5, $fn=20);
		cylinder(12,1.35,1.35, $fn=20);
}
//*/