difference() {
linear_extrude(10)	import("../dxf/test_2x8mm.dxf", $fn=100);
translate([0,-0.3,0])cube(2.8);
translate([0,-0.3,5])cube(2.8);

translate([5.4,-0.3,2.4])cube(2.6);
translate([5.4,-0.3,7.4])cube(2.6);
}

translate([3,2,4.5])
	scale([1,1,0.5])
		cube(2);