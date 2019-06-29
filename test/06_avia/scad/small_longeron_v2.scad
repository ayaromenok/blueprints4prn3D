translate([0,0,0])
	linear_extrude(height=2, center=true)
    	import("../dxf/small_longeron_v2.dxf", $fn=50);