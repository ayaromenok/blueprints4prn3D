fN = 1;

rWing = 20;
lWingCenter =30;
lWingOuter = 80;
lWingNervure = 20;
lWingEngine = 30;
aWingEngine = 30;//angle

rFus=10;
lFus=150;

rEngine = 5;
lEngine = 60;

lBlade = lWingEngine*cos(aWingEngine);

module engine(){
	color("green")
		translate([rFus+lWingCenter,0,0])
			rotate([0,aWingEngine,0])
				scale([0.1,1,1])
					cylinder(lWingEngine,lWingNervure,lWingNervure*1.3,$fn=rWing*fN);

	color("lightgreen")
		translate([rFus+lWingCenter,-lEngine/2,0])
			rotate([-90,aWingEngine-90,0])
				translate([lWingEngine,0,0])
					cylinder(lEngine,rEngine,rEngine,$fn=2*rEngine*fN);

	color("red")
		translate([rFus+lWingCenter,-lEngine/2-rEngine,0])
			rotate([-90,aWingEngine-90,0])
				translate([lWingEngine,0,0])
					cylinder(rEngine,rEngine,rEngine,$fn=2*rEngine*fN);

	for (i=[0:2]){
		color("darkred")
			translate([rFus+lWingCenter,-lEngine/2-rEngine/2,0])
				rotate([-90,aWingEngine-90,0])
					translate([lWingEngine,0,0])
						rotate([0,90,i*120])
							scale([0.1,1,1])
								cylinder(lBlade,rEngine,rEngine,$fn=2*rEngine*fN);
	}//for-blades
}//engines

module dualEngine(){
	color("blue")
		translate([rFus+lWingCenter,0,0])
			rotate([0,90,0])
				scale([0.1,1,1])
					cylinder(lWingOuter,lWingNervure,lWingNervure*0.5,$fn=rWing*fN);

	engine();
	
	mirror([0,0,1])
		engine();
}//dualEngine

module centerWing(){
	translate([rFus,0,-rFus])
		rotate([0,70,0])
			scale([0.1,1,1])
				cylinder(lWingCenter,lWingNervure,lWingNervure,$fn=rWing*fN);
	translate([-rFus,0,-rFus])
		rotate([0,-70,0])
			scale([0.1,1,1])
				cylinder(lWingCenter,lWingNervure,lWingNervure,$fn=rWing*fN);
}//center Wing

module stabilizer(){
	color("grey")
	translate([rFus,lFus/2,-rFus])
		rotate([0,60,0])
			scale([0.1,1,1])
				cylinder(lWingCenter*2,lWingNervure*0.5,lWingNervure*0.5,$fn=0.5*rWing*fN);
	color("grey")
	translate([-rFus,lFus/2,-rFus])
		rotate([0,-60,0])
			scale([0.1,1,1])
				cylinder(lWingCenter*2,lWingNervure*0.5,lWingNervure*0.5,$fn=0.5*rWing*fN);
}//stabilizer

module fuselage(){
translate([00,-lFus/2,-rFus])
	rotate([-90,0,0])
		scale([1,2,1])
			cylinder(lFus,rFus,rFus,$fn=2*rFus*fN);
}//fuselage


translate([0,0,-rFus])
fuselage();
centerWing();
stabilizer();
dualEngine();
mirror([1,0,0])
	rotate([-45,0,0])
	dualEngine();


