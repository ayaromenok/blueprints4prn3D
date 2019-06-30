hpTwist 			= 120;
hpTopR 				= 10;
hpBottomR 			= 30;

hpColumnR 			= 2;
hpColumnHeight 	= 120;
hpColumnStep 		= 22.5;
hpColumnScale 		= (hpTopR/hpBottomR);

hpNumOfColumn 		= 8;

for ( angle = [0: (360/hpNumOfColumn): 360]) {
translate([0,0,(hpColumnHeight/2)])
linear_extrude(height = hpColumnHeight, center = true, convexity = 10, twist = -hpTwist, scale=hpColumnScale, slices = hpColumnHeight, $fn=10)
	translate([sin(angle)*hpBottomR, cos(angle)*hpBottomR, 0])
	rotate([0, 0, (angle +45)])
	circle(r = hpColumnR, $fn=4);

translate([0,0,(hpColumnHeight/2)])
linear_extrude(height = hpColumnHeight, center = true, convexity = 10, twist = hpTwist, scale=hpColumnScale, slices = hpColumnHeight, $fn=10)
	translate([sin(angle)*hpBottomR, cos(angle)*hpBottomR, 0])
	rotate([0, 0, (angle +45)])
	circle(r = hpColumnR, $fn=4);

}


for ( height = [0: hpColumnStep: hpColumnHeight]) {
lvScale = (hpBottomR-(hpBottomR-hpTopR)*(height/hpColumnHeight))/hpBottomR;
translate([0,0,height])
rotate_extrude(convexity = 10, $fn=80)
	translate([hpBottomR*lvScale, 0, 0])
		rotate([0,0,45])
			circle(r = 1*lvScale, $fn=4);

}

translate([0,0,hpColumnHeight])
rotate_extrude(convexity = 10, $fn=80)
	translate([hpTopR, 0, 0])
		rotate([0,0,45])
			circle(r = 1, $fn=4);

