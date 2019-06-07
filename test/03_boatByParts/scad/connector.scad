difference(){
union(){
translate([-1,0,0])sphere(2.6, $fn=30);
translate([11,0,0])sphere(2.6, $fn=30);
rotate([0,90,0])
	cylinder(10,2,2, $fn=30);
}

translate([-4.5,0.5,-5])
rotate([90,0,0])
scale([8,10,1])
	cube(1);


translate([6.5,0.5,-5])
rotate([90,0,0])
scale([8,10,1])
	cube(1);
}

//translate([-1,2.5,-2.55]) cylinder(0.41,2,2, $fn=20);
//translate([-1,-2.5,-2.55]) cylinder(0.41,2,2, $fn=20);
//translate([11,2.5,-2.55]) cylinder(0.41,2,2, $fn=20);
//translate([11,-2.5,-2.55]) cylinder(0.41,2,2, $fn=20);


translate([-2,1,-2.6]) scale([4,10,1]) cube(0.41);
translate([-2,-5,-2.6]) scale([4,10,1]) cube(0.41);
translate([10,1,-2.6]) scale([4,10,1]) cube(0.41);
translate([10,-5,-2.6]) scale([4,10,1]) cube(0.41);

translate([-2,4.69,-2.6]) scale([33,1,1]) cube(0.41);
translate([-2,-5,-2.6]) scale([33,1,1]) cube(0.41);