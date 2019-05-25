union(){
difference(){
color("lightgray")
    linear_extrude(height=10, center=true)
        import("../dxf/profileWith2PartsRight.dxf",$fn=50);

translate([5,9.5,-5.01])
    rotate([90,0,0])    
        color("blue")
            linear_extrude(height=20, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");    
}

translate([5,9.5,4.99])
    rotate([90,0,0])    
        color("blue")
            linear_extrude(height=20, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");
}

union(){
difference(){
color("lightgray")
    linear_extrude(height=10, center=true)
        import("../dxf/profileWith2PartsLeft.dxf",$fn=50);

translate([-13,9.5,-5.01])
    rotate([90,0,0])    
        color("blue")
            linear_extrude(height=20, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");                
}
translate([-13,9.5,4.99])
    rotate([90,0,0])    
        color("blue")
            linear_extrude(height=20, center=true)
                import("../dxf/profileWith2PartsBooleanCut.dxf");
}