linear_extrude(height=2.4, center=true)
  	import("../dxf/EleksMakerBoard__v3_2_bot.dxf", $fn=50);
translate([0,0,3])
linear_extrude(height=4, center=true)
  	import("../dxf/EleksMakerBoard__v3_2_bot_ext.dxf", $fn=50);