//Cam V1_3
$fn=50;
difference(){
minkowski()
{
  cube([25,25,1]);
  cylinder(r=2,h=1);
}

linear_extrude(10)
import("../dxf/Cam_V1_3_holes.dxf", $fn=16);
}