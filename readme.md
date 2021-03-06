## 3D printer stuff

### Default settings

#### Printer settings

##### Printer shape

 - suitable for Y right-stop configuration
 - Home X: 0
 - Home Y: 0
 - Home Z: 0
 - X Min: -35
 - Y Min: 0
 - X Max 220
 - Y Max 220
 - Bed Left -51
 - Bed Front 0
 - Print Area Width: 220
 - Print Area Depth: 220
 - Print Area Height: 240


### Additional printer modifications

Control board is (Melzi 3.0 v3](https://reprap.org/wiki/Melzi#Melzi_Version_2.0)

####  Additional extruders

 [Adding a additional extruder](https://www.instructables.com/id/Adding-More-Extruders-to-Any-3d-Printer)
 
 - Need a additional power device/control board for hotbed.
 - Use hotbed power/temp sensor for additional extruder
 - Use XStop with LN298/stepper motor for second extruder
 - Diamond extruder can be installed with X,Y,Z stop and Arduino CNC board
 - [dual Melsi(master-slave) from RepRap tricolor](http://reprapltd.com/reprappro/documentation/mendel-tricolour/multimaterials/index.html)
 - [adding more extruders](https://reprap.org/wiki/Adding_more_extruders)
 - [Diamond hotend](https://reprap.org/wiki/Diamond_Hotend)
 - [Repetier color mix](https://reprap.org/wiki/Repetier_Color_Mixing)
 - [Stepper expander\melzi](https://reprap.org/wiki/Stepper_Expander#Melzi)
 
##### 3 extruders(6 steppers) boards
 
 - [RUMBA board](https://reprap.org/wiki/RUMBA)
 - [Bigtech SKR Pro v1.1 board](https://github.com/bigtreetech/BIGTREETECH-SKR-PRO-V1.1) - with dual Z
 - [RAMPS-FD board](https://reprap.org/wiki/RAMPS-FD)

##### 3+ extruders(6+ steppers) boards

 - [Azteeg X3 PRO - 5 extruders](https://www.aliexpress.com/item/32813649642.html) 

#### Leveling

 [general info about leveling](https://www.youtube.com/watch?v=EcGFLwj0pnA)


### Colors

 - Repetier support color info in [AFM](https://en.wikipedia.org/wiki/Additive_manufacturing_file_format) file, while OpenSCAD don't(yet). 
 - Color setup for Repetier described [here](https://www.reprap.org/wiki/Repetier_Color_Mixing) - Color # in preinter settings is the same, as *material id* in AMF file
	

### Tests:

#### H0 railroad modeling

##### Extruder

Usage of 0.2mm extruder	is highly recomended. Probably, 0.3mm can be used too, but with 0.4mm is almost impossible to recieve suitable quality in size of H0.

##### Targets

	- rails
	- terrain vi heightmap
		
		
#### Gearbox and similar devices
	
### useful links:

[HeightMap of the World](https://tangrams.github.io/heightmapper/#13.024/58.1857/42.1900)
