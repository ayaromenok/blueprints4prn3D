linear_extrude(height=2, center=true)
    import("../dxf/railroadStraitRails.dxf");
translate([0,0,-1])
    linear_extrude(height=1, center=true)
        import("../dxf/railroadStraitSleepers.dxf");