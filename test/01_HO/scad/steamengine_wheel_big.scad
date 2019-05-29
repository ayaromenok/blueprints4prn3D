translate([0,0,0])
	linear_extrude(height=0.8, center=true)
    	import("../dxf/steamengine_wheel_big.dxf", $fn=50);
translate([0,0,-0.2])
	linear_extrude(height=0.4, center=true)
    	import("../dxf/steamengine_wheel_big_int.dxf", $fn=50);
translate([0,0,0.8])
	linear_extrude(height=1, center=true)
    	import("../dxf/steamengine_wheel_big_ext.dxf", $fn=50);
translate([0,-9,1])
	cylinder(3,0.4, 0.4, $fn=50);