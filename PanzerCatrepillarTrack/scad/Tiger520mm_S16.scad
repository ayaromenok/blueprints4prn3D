intersection(){
linear_extrude(6)	import("../dxf/Tiger520mm.dxf", $fn=20);

translate([34,0,4]) rotate([0,-90,0])
color("green")
linear_extrude(35)	import("../dxf/Tiger520mm_side.dxf", $fn=20);

}

translate([22,2,5])
scale([1,4,4])
cube(1);

translate([10,2,5])
scale([1,4,4])
cube(1);
//translate([0,-2,-40]) rotate([-90,0,0])
//color("blue")
//linear_extrude(12)	import("../dxf/Tiger520mm_front.dxf", $fn=20);

