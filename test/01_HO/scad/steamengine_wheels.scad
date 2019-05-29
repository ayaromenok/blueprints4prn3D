translate([0,0,0.8])
	linear_extrude(height=2.4, center=true)
    	import("../dxf/steamengine_wheels.dxf", $fn=50);
translate([0,0,-0.2])
	linear_extrude(height=0.4, center=true)
    	import("../dxf/steamengine_wheels_int.dxf", $fn=50);

translate([0,-9,1])
	cylinder(3,0.4, 0.4, $fn=50);