color("lightgray")
    linear_extrude(height=0.4, center=true)
        import("../dxf/clarky_120mm_main.dxf",$fn=50);

translate([59,10,25.2 ])
	color("darkgray")
    	linear_extrude(height=50, center=true)
       		import("../dxf/circle_r4_4.dxf",$fn=50);

translate([-0.9,5,0])
	color("darkgray")	
		cylinder(50,0.2,0.2);


translate([149,5,0])
	color("darkgray")	
		cylinder(50,0.2,0.2);