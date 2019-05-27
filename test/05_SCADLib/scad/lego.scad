use <../../../MCAD/lego_compatibility.scad>

translate([0,10,0])
	block(1,2,1/3,reinforcement=false,flat_top=true);
translate([0,20,0])
	block(1,2,1/3,reinforcement=true);
translate([0,30,0])
	block(1,2,1,reinforcement=true);
translate([0,40,0])
	block(1,2,1,reinforcement=false);
translate([0,50,0])
	block(1,2,1,axle_hole=true, circular_hole=true, reinforcement=false,hollow_knob=true, flat_top=true);
translate([0,60,0])
	block(1,2,5,reinforcement=tfalse,hollow_knob=true);
