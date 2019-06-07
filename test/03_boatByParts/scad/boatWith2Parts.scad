difference(){
color("lightgray")
    linear_extrude(height=6, center=true)
        import("../dxf/profileWith2PartsRight.dxf",$fn=50);

translate([5,9.5,-3.01])
    rotate([90,0,0])    
        color("blue")
            linear_extrude(height=20, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");    
}

translate([5,9.5,2.99])
    rotate([90,0,0])    
        color("blue")
			scale([0.8,0.8,1.0])
            linear_extrude(height=19, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");

difference(){
color("lightgray")
    linear_extrude(height=6, center=true)
        import("../dxf/profileWith2PartsLeft.dxf",$fn=50);

translate([-13,9.5,-3.01])
    rotate([90,0,0])    
        color("blue")
            linear_extrude(height=20, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");                
}
translate([-13,9.5,2.99])
    rotate([90,0,0])    
        color("blue")
			scale([0.7,0.7,1.0])
            linear_extrude(height=19, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");
