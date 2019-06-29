hpTwist = 180;
hpBottomR = 6;
hpColumnR = 1;

for ( angle = [0: 45: 360]) {
translate([0,0,20])
linear_extrude(height = 40, center = true, convexity = 10, twist = -hpTwist, scale=0.2, slices = 40, $fn=10)
	translate([sin(angle)*hpBottomR, cos(angle)*hpBottomR, 0])
	rotate([0, 0, (angle +45)])
	circle(r = hpColumnR, $fn=4);

translate([0,0,20])
linear_extrude(height = 40, center = true, convexity = 10, twist = hpTwist, scale=0.2, slices = 40, $fn=10)
	translate([sin(angle)*hpBottomR, cos(angle)*hpBottomR, 0])
	rotate([0, 0, (angle +45)])
	circle(r = hpColumnR, $fn=4);

}


for ( height = [0: 10: 40]) {
translate([0,0,height])
rotate_extrude(convexity = 10, $fn=80)
	translate([hpBottomR, 0, 0])
		rotate([0,0,45])
			circle(r = 1, $fn=4);

}
