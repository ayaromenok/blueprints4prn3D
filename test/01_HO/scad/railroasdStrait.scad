translate([0,0,0.5])
	linear_extrude(height=1.5, center=true)
    	import("../dxf/railroadStraitRails.dxf");
//translate([0,0,-1])
//	linear_extrude(height=0.4, center=true)
//    	import("../dxf/railroadStraitRails.dxf");
translate([2,0,-0.7])
    linear_extrude(height=1, center=true)
        import("../dxf/railroadStraitSleepers.dxf");