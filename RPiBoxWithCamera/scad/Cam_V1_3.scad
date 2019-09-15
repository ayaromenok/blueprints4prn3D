//Cam V1_3
$fn=50;
difference(){
translate([1.5,1.5,0])
minkowski()
{
  cube([22,22,0.35]);
  cylinder(r=3,h=0.35);
}

linear_extrude(10)
import("../dxf/Cam_V1_3_holes.dxf", $fn=16);
}



translate([10,10,10])
rotate([0,90,0])
difference() {
	cylinder(5.4,5,5, $fn=30);
	cylinder(7,2.3,2.3, $fn=30);
}


//long
translate([10,6,0])
		cube([5.4,8,7]);
