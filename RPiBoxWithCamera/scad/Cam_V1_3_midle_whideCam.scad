//Cam V1_3
$fn=50;
difference(){
translate([1.5,1.5,0])
minkowski()
{
  cube([22,14,0.35]);
  cylinder(r=3,h=0.35);
}

linear_extrude(10)
import("../dxf/Cam_V1_3_holes.dxf", $fn=16);
translate([0,5,-0.5])
	cube([25,7,2]);
}
