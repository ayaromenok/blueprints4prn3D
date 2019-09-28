size		= 200;
thk			= 3;
thk_arc		= 0.8; //thinkness of support arcs
step_arc	= 10;

difference(){
	translate([0,0,0])
		cube([size,size,(size)]);
	translate([thk,thk,thk])
		cube([size-thk*2,size-thk*2,size-thk*2]);

	translate([(size*3/4), (size/2), size-thk*2])
		cylinder(thk*3,step_arc/2,step_arc/2);
	translate([(size/4), (size/2), size-thk*2])
		cylinder(thk*3,step_arc/2,step_arc/2);

}


translate([size/2, 0, 0])
	cube([thk_arc, size,size]);

for (i=[0:(4)]){
	translate([0,10*i,0])
	difference(){
		cube([size,thk_arc,size]);
		translate([size/2,thk_arc+2,0])
			rotate([90,0,0])
				scale([1,2,1])
					cylinder(thk_arc+4,size/2,size/2,$fn=100);
	} //difference
} //for i