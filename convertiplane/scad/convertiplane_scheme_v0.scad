fN = 1;

rWing = 20;
lWingCenter = 20;
lWingOuter = 60;
lWingNervure = 20;
lWingEngine = 30;
aWingEngine = 30;//angle

rFus=10;
lFus=100;

rEngine = 5;
lEngine = 60;

lBlade = rEngine*8;

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


color("darkred")
translate([rFus+lWingCenter,-lEngine/2-rEngine,0])
	rotate([-90,aWingEngine-90,0])
		translate([lWingEngine,0,0])
			rotate([0,90,0])
				scale([0.1,1,1])
				cylinder(lBlade,rEngine,rEngine,$fn=2*rEngine*fN);

}//engines

translate([00,-lFus/2,0])
	rotate([-90,0,0])
		scale([1,1,1])
			cylinder(lFus,rFus,rFus,$fn=2*rFus*fN);


translate([rFus,0,0])
	rotate([0,90,0])
		scale([0.1,1,1])
			cylinder(lWingCenter,lWingNervure,lWingNervure,$fn=rWing*fN);

color("darkgreen")
translate([rFus+lWingCenter,0,0])
	rotate([0,90,0])
		scale([0.1,1,1])
			cylinder(lWingOuter,lWingNervure,lWingNervure*0.5,$fn=rWing*fN);

engine();