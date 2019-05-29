//difference(){
translate([0,0,0.6])
	linear_extrude(height=1.2, center=true)
    	import("../dxf/steamengine_wheels_small.dxf", $fn=50);
//translate([1,1,-0.4])
//	cylinder(4,0.4,0.4,$fn=50);
//}
translate([0,0,0.4])
	linear_extrude(height=0.8, center=true)
    	import("../dxf/steamengine_wheels_small_int.dxf", $fn=50);
//translate([21.414,0,-0.8])
//	cylinder(1.2,0.4,0.4,$fn=50);