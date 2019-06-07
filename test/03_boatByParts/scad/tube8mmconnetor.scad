
difference(){
difference(){
scale([2.4,1.6,1])
	cube (10);

translate([12,8,-0.5])
	cylinder(60,4.1,4.1, $fn=50);
}

translate([1.4,8,16])
rotate([0,90,0])
union(){
translate([11,0,0])sphere(2.9, $fn=30);
rotate([0,90,0])
	cylinder(10,2.4,2.4, $fn=30);
}

translate([22.6,8,16])
rotate([0,90,0])
union(){
translate([11,0,0])sphere(2.9, $fn=30);
rotate([0,90,0])
	cylinder(10,2.4,2.4, $fn=30);
}
}