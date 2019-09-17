height = 4;
screw = 3;//2.5
screw_nut = 6.4;//5.6
// bottom part
difference(){
	union() {
	translate([-1,-1,0])
		cube([102,82,2.4]);

	translate([10,4,2])
		cylinder(2,4,4, $fn=20);	
	translate([10,62,2])
		cylinder(2,4,4, $fn=20);
	translate([96,4,2])
		cylinder(2,4,4, $fn=20);
	translate([96,62,2])
		cylinder(2,4,4, $fn=20);
	} //end of union - bottom

//holes from bottom for M3 nuts
//*
translate([10,4,-1])
		cylinder(height,screw_nut/2,screw_nut/2, $fn=6);
translate([10,62,-2])
		cylinder(height,screw_nut/2,screw_nut/2, $fn=6);
translate([96,4,-2])
		cylinder(height,screw_nut/2,screw_nut/2, $fn=6);
translate([96,62,-2])
		cylinder(height,screw_nut/2,screw_nut/2, $fn=6);

//holes for screw
translate([10,4,0])
		cylinder(12,screw/2,screw/2, $fn=20);
translate([10,62,0])
		cylinder(12,screw/2,screw/2, $fn=20);
translate([96,4,0])
		cylinder(12,screw/2,screw/2, $fn=20);
translate([96,62,0])
		cylinder(12,screw/2,screw/2, $fn=20);

}//end of difference - bottom


//main part - side part
difference(){
linear_extrude(height+39)
	import("../dxf/JetsonNano_out.dxf", $fn=50);

//microUSB
translate([3,75,height+2.6])
	cube([10,15,6]);
//Ethernet
translate([15,75,height+3.6])
	cube([16,15,16]);

//USB3
translate([33,75,height+3.6])
	cube([15,15,17]);

//USB3
translate([50,75,height+3.6])
	cube([15,15,17]);

//HDMI\DP
translate([67,75,height+3.6])
	cube([19,15,20]);

//Power 5V 
translate([90,75,height+3.6])
	cube([9,15,11]);

//thiner I\o side
translate([-4,82,height+0.6])
	cube([110,90,26]);

//top holes
for (i =[5:10:95]){
	translate([(i),-5,height+34])
		cube([5,90,3]);
	}

// additional cam cable hole(side)
translate([100,20,height+15])
	cube([9,24,10]);

// cooling holes(back)
for (i =[0:20:50]){
	translate([20+i,-8,height+10])
		cube([15,10,20]);
	}

} //end difference - side()






