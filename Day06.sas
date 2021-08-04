/*
The task: To read data from fixed columns file.
*/
* Data Used: bank.txt;

data financial;
	infile '/home/u41108928/Ron Cody Data/bank.txt';
	input Subj $ 1-3 
	      DOB $ 4-13 
	      Gender $ 14 
	      Balance 15-21;
run;

Title "Reading data from fixed column" ;
proc print data= financial;
run;