bottom_thickness = 4;
side_thickness = 2;
box_height = 30;
screw_size = 2.5; //M2.5

mink_radius = 4; // must be > 3

difference(){
linear_extrude(box_height)
	minkowski(){
		square([79,50]);
		circle(mink_radius+side_thickness, $fn=40);
	}//minkowski external 

translate([0,0,bottom_thickness])
linear_extrude(box_height)
	minkowski(){
		square([79,50]);
		circle(mink_radius, $fn=24);
	}//minkowski internal

// holes position: 58, 49
translate([0, 0, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([0, 49, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([58, 0, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([58, 49, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
} //difference box

//holes position
/*
translate([0, 0, 0])
translate([0, 49, 0])
translate([58, 0, 0])
translate([58, 0, 0])
*/