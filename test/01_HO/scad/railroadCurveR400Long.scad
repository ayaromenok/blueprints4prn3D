linear_extrude(height=2, center=true)
    import("../dxf/railroadCurveR400RailsLong.dxf",$fn=1500);
    //import("../dxf/circleArcTest.dxf", $fn=1500);
translate([0,0,-1])
    linear_extrude(height=1, center=true)
        import("../dxf/railroadCurveR400Sleepers.dxf");
        
//for tarrain modeling extaction from raster file can be a good option
//scale([1, 1, 0.1])
//  surface(file = "../png/railroadCurveR400RailsLong.png", center = true);

        