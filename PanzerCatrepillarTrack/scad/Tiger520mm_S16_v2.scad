difference(){
//main section
union(){
translate([0,8,0])
	rotate([0,90,0])
		cylinder(32,1.5,1.5, $fn=16);
translate([0,0,0])
	rotate([0,90,0])
		cylinder(32,1.5,1.5, $fn=16);
translate([0,0,-1.5])
	cube([32,8,3]);
}

//right cut
translate([0,6,-3])
	cube([5,5,6]);
translate([9,6,-3])
	cube([5,5,6]);
translate([18,6,-3])
	cube([5,5,6]);
translate([27,6,-3])
	cube([5,5,6]);

//left cut
translate([4.5,-3,-3])
	cube([5,5,6]);
translate([13.5,-3,-3])
	cube([5,5,6]);
translate([22.5,-3,-3])
	cube([5,5,6]);

//holes
translate([-1,0,0])
	rotate([0,90,0])
		cylinder(34,0.5,0.5, $fn=12);
translate([-1,8,0])
	rotate([0,90,0])
		cylinder(34,0.5,0.5, $fn=12);

}
//upper part
translate([11,4,1.5])
	scale([1,2,1])
		cylinder(3,1,0.5, $fn=10);

//upper part
translate([21,4,1.5])
	scale([1,2,1])
		cylinder(3,1,0.5, $fn=10);

