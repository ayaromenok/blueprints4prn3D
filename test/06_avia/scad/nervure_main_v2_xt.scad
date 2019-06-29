translate([0,0,0])
	linear_extrude(height=2, center=true)
    	import("../dxf/clarky_120mm_main_v2_16mm.dxf", $fn=50);
//translate([0,0,5.4])
//	linear_extrude(height=10, center=true)
//    	import("../dxf/clarky_120mm_main_v2_ext.dxf", $fn=50);
translate([0,0,1.6])
	linear_extrude(height=3.6, center=true)
    	import("../dxf/clarky_120mm_main_v2_ext2.dxf", $fn=50);