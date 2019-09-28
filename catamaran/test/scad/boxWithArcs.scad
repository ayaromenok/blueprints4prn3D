size		= 100;
height      = size;
thk			= 3;
thk_arc		= 0.8; //thinkness of support arcs
step_arc	= 10;
bolt_M      = 3.6;

difference(){
	translate([0,0,0])
		cube([size,size,height]);

	translate([thk,thk_arc,thk])
		cube([size-thk*2,size-thk_arc*2,(height-thk-thk_arc)]);
    
//holes on top
	translate([(size/3), (size/2), size-thk*2])
		cylinder(thk*3,step_arc*2,step_arc*2, $fn=64);
	translate([(size*2/3), (size/2), size-thk*2])
		cylinder(thk*3,step_arc*2,step_arc*2, $fn=64);

//horizontal holes
    translate([(size/3-bolt_M/2), size, size-thk*10])
        rotate([90,0,0])
            cylinder(size+thk*10,(bolt_M/2),(bolt_M/2), $fn=24);    
	translate([(size*2/3+bolt_M/2+thk_arc*2), size, size-thk*10])
        rotate([90,0,0])
            cylinder(size+thk*10,(bolt_M/2),(bolt_M/2), $fn=24);    	
}

//horizontal holes - internal stucture
difference(){
    translate([(size/3-bolt_M/2), size, size-thk*10])
    	rotate([90,0,0])
       	cylinder(size,(bolt_M/2+thk_arc),(bolt_M/2+thk_arc), $fn=24);    
    translate([(size/3-bolt_M/2), size, size-thk*10])
        rotate([90,0,0])
            cylinder(size+thk*10,(bolt_M/2),(bolt_M/2), $fn=24);    

}
difference(){
    translate([(size*2/3+bolt_M/2+thk_arc*2), size, size-thk*10])
    	rotate([90,0,0])
       	cylinder(size,(bolt_M/2+thk_arc),(bolt_M/2+thk_arc), $fn=24);    
    translate([(size*2/3+bolt_M/2+thk_arc*2), size, size-thk*10])
        rotate([90,0,0])
            cylinder(size+thk*10,(bolt_M/2),(bolt_M/2), $fn=24);    

}

//vertical splitters
translate([size/3, 0, 0])
	cube([thk_arc, size, height]);
translate([size*2/3, 0, 0])
	cube([thk_arc, size, height]);

//arcs
for (i=[0:(size/step_arc-1)]){
	translate([0,10*i,0])
	difference(){
		cube([size,thk_arc,size]);
		translate([size/2,thk_arc+2,0])
			rotate([90,0,0])
				scale([1,2,1])
					cylinder(thk_arc+4,size/2,size/2,$fn=100);
	} //difference
} //for i