linear_extrude(2)
	import("../dxf/RPi_3B.dxf", $fn=50);
difference(){
linear_extrude(30)
	import("../dxf/RPi_3B_out.dxf", $fn=50);
//SD card
translate([-8,21,-2])
	cube([10,14,10]);

//power\hdmi\audio
translate([5,55,3])
	cube([12,10,8]);

translate([22,55,4])
	cube([21,10,12]);

translate([53.5,65,8])
	rotate([90,0,0])
		cylinder(10,4,4);


//net\USB
translate([80,1,4])
	cube([10,16,20]);

translate([80,19,4])
	cube([10,16,20]);

translate([80,37,4])
	cube([10,17,18]);

//top holes
for (i =[5:10:75]){
	translate([(i),-5,25])
		cube([5,70,3]);
	}

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