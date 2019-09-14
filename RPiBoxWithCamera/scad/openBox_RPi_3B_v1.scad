linear_extrude(2)
	import("../dxf/RPi_3B.dxf", $fn=50);
difference(){
linear_extrude(7)
	import("../dxf/RPi_3B_out.dxf", $fn=50);
translate([-8,20,-2])
	cube([10,14,10]);


translate([5,55,4])
	cube([10,10,5]);

translate([22,55,4])
	cube([20,10,10]);

translate([52,55,4])
	cube([5,10,5]);


translate([80,1,4])
	cube([10,18,20]);

translate([80,21.5,4])
	cube([10,15,20]);

translate([80,39,4])
	cube([10,15,20]);
}



/*
translate([90,56,0])
rotate([0,0,180])
difference(){
translate([-5,-5,0])
	cube([95,66,25]);
translate([-4,-4,1])
	cube([93,64,25]);


}
//*/
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