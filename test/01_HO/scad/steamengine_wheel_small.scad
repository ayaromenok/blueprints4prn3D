translate([0,0,0.6])
	linear_extrude(height=2, center=true)
    	import("../dxf/steamengine_wheel_small.dxf", $fn=50);
translate([0,0,-0.2])
	linear_extrude(height=0.4, center=true)
    	import("../dxf/steamengine_wheel_small_int.dxf", $fn=50);
