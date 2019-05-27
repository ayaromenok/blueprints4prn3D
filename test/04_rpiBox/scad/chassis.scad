translate([0,0,0])
	linear_extrude(height=2, center=true)
    	import("../dxf/boardBottom.dxf",$fn=50);
translate([0,0,2])
    linear_extrude(height=4, center=true)
        import("../dxf/boardHoles.dxf",$fn=50);