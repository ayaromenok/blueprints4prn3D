color("lightgray")
    linear_extrude(height=1.2, center=true)
        import("../dxf/clarky_120mm_main.dxf",$fn=50);

translate([59,10,2.5 ])
	color("darkgray")
    	linear_extrude(height=5, center=true)
       		import("../dxf/circle_r5.dxf",$fn=50);

