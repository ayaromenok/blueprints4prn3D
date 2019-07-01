difference(){
union(){
translate([0,0,0])
scale([1,1,65])
	cylinder(r=1.2, $fn=10);

translate([0,0,0])
scale([1,1,35])
	cylinder(r=1.6, $fn=10);

}
translate (0,0,-0.1)
scale([1,1,66])
	cylinder(r=1.05, $fn=10);
}