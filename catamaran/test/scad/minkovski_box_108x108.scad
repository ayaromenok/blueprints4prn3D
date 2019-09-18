difference(){
minkowski()
{
cube(100);
translate([0,0,0])
	sphere(4, $fn=40);
}
translate([-5,70,40])
	rotate([0,90,0])
		cylinder(110,2,2, $fn=10);
translate([-5,30,40])
	rotate([0,90,0])
		cylinder(110,2,2, $fn=10);
translate([-5,50,70])
	rotate([0,90,0])
		cylinder(110,2,2, $fn=10);
}