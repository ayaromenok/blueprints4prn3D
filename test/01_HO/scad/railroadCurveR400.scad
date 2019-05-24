linear_extrude(height=2, center=true)
    import("../dxf/railroadCurveR400Rails.dxf", $fn=1500);
translate([0,0,-1])
    linear_extrude(height=1, center=true)
        import("../dxf/railroadCurveR400Sleepers.dxf");