difference(){
for (angle=[0:90:360]){
rotate([90,0,angle])
translate([1,0,0])
linear_extrude(0.5)        
	polygon( points=[[0,0],[2,1],[1,2],[1,3],[3,4],[0,5]] );
}
cylinder(4,1.5,1.5, $fn=100);
}