translate([0,0,0.4])
	linear_extrude(height=2, center=true)
    	import("../dxf/steamengine_wheels.dxf", $fn=50);
translate([0,0,-0.6])
	linear_extrude(height=0.8, center=true)
    	import("../dxf/steamengine_wheels_int.dxf", $fn=50);

translate([0,-9,1])
	cylinder(3,0.4, 0.4, $fn=50);