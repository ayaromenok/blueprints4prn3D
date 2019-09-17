bottom_thickness = 4;
side_thickness = 2;
box_height = 30;
screw_size = 2.5; //M2.5

mnk_r_main = 4; // must be > 3
mnk_r_front = 2;
mnk_r_right = 1;
mnk_r_left = 2;

difference(){
linear_extrude(box_height)
	minkowski(){
		square([79,50]);
		circle(mnk_r_main+side_thickness, $fn=40);
	}//minkowski external 

translate([0,0,bottom_thickness])
linear_extrude(box_height)
	minkowski(){
		square([79,50]);
		circle(mnk_r_main, $fn=24);
	}//minkowski internal


//SD card + DSI(Display)
translate([-8,19.5-mnk_r_left,0])
	minkowski(){
		cube([10,14,14]);
		sphere(mnk_r_left, $fn=mnk_r_left*8);
	}
//power\hdmi\audio
translate([5,-(mnk_r_main+side_thickness ),3])
	minkowski(){
		cube([12,10,8]);
		sphere(mnk_r_front,$fn=mnk_r_front*8);
	}

translate([22,-(mnk_r_main+side_thickness),4])
	minkowski(){
		cube([21,10,12]);
		sphere(mnk_r_front,$fn=mnk_r_front*8);
	}

translate([53.5,-(side_thickness),8])
	rotate([90,0,0])
		cylinder(10,4,4, $fn=32);


//Ethernet
translate([80,1,4])
	minkowski(){
		cube([10,17-mnk_r_right*2,18-mnk_r_right*2]);//Z=13.5
		sphere(mnk_r_right,$fn=mnk_r_right*8);
	}
//USBx2
translate([80,19,4])
	minkowski(){
		cube([10,16-mnk_r_right*2,20-mnk_r_right*2]);//Z=16.0
		sphere(mnk_r_right,$fn=mnk_r_right*8);
	}
//USBx2
translate([80,36,4])
	minkowski(){
		cube([10,16-mnk_r_right*2,20-mnk_r_right*2]);//Z=16.0
		sphere(mnk_r_right,$fn=mnk_r_right*8);
	}

// holes position: 58, 49
translate([0, 0, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([0, 49, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([58, 0, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([58, 49, -1])
	cylinder(bottom_thickness*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);

// Nut holes from bottom, position: 58, 49
translate([0, 0, -1])
	cylinder(3, screw_size*2, screw_size*2, $fn=6);
translate([0, 49, -1])
	cylinder(3, screw_size*2, screw_size*2, $fn=6);
translate([58, 0, -1])
	cylinder(3, screw_size*2, screw_size*2, $fn=6);
translate([58, 49, -1])
	cylinder(3, screw_size*2, screw_size*2, $fn=6);

} //difference box

//holes position
/*
translate([0, 0, 0])
translate([0, 49, 0])
translate([58, 0, 0])
translate([58, 0, 0])
*/

