hpTwist = 180;
hpTopR = 5;
hpBottomR = 10;

hpColumnR = 1;
hpColumntHeight=50;
hpColumntStep=10;
hpColumntScale = 0.25;

for ( angle = [0: 45: 360]) {
translate([0,0,(hpColumntHeight/2)])
linear_extrude(height = hpColumntHeight, center = true, convexity = 10, twist = -hpTwist, scale=hpColumntScale, slices = hpColumntHeight, $fn=10)
	translate([sin(angle)*hpBottomR, cos(angle)*hpBottomR, 0])
	rotate([0, 0, (angle +45)])
	circle(r = hpColumnR, $fn=4);

translate([0,0,(hpColumntHeight/2)])
linear_extrude(height = hpColumntHeight, center = true, convexity = 10, twist = hpTwist, scale=hpColumntScale, slices = hpColumntHeight, $fn=10)
	translate([sin(angle)*hpBottomR, cos(angle)*hpBottomR, 0])
	rotate([0, 0, (angle +45)])
	circle(r = hpColumnR, $fn=4);

}


for ( height = [0: hpColumntStep: hpColumntHeight]) {
translate([0,0,height])
rotate_extrude(convexity = 10, $fn=80)
	translate([hpBottomR*((1-height/hpColumntHeight)+hpColumntScale), 0, 0])
		rotate([0,0,45])
			circle(r = 1, $fn=4);

}
