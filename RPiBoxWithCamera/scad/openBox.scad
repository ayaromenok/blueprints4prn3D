linear_extrude(2)
	import("../dxf/RPi_3A.dxf", $fn=50);

//support fo 2.5mm scolls
translate([3.5,3.5,0])
difference(){
		cylinder(10,2.5,2.5, $fn=50);
		cylinder(12,1.35,1.35, $fn=50);
}

translate([3.5,52.5,0])
difference(){
		cylinder(10,2.5,2.5, $fn=50);
		cylinder(12,1.35,1.35, $fn=50);
}

translate([61.5,3.5,0])
difference(){
		cylinder(10,2.5,2.5, $fn=50);
		cylinder(12,1.35,1.35, $fn=50);
}

translate([61.5,52.5,0])
difference(){
		cylinder(10,2.5,2.5, $fn=50);
		cylinder(12,1.35,1.35, $fn=50);
}
