/*
The task: Demonstrate the use of DATALINES.
*/
data demographic_blank;
	input Gender $ Age Height Weight;
	datalines;
 M 50 68 155 
 F 23 60 101 
 M 65 72 220 
 F 35 65 133 
 M 15 71 166 
 ;
run;

Title "Reading data from datalines separated by blanks";

proc print data=demographic_blank;
run;

data demographic_comma;
 infile datalines dsd;
 input Gender $ Age Height Weight;
 datalines;
 "M",50,68,155 
 "F",23,60,101 
 "M",65,72,220 
 "F",35,65,133 
 "M",15,71,166 
 ;
run;

Title "Reading data from datalines separated by comma";

proc print data=demographic_comma;
run;
