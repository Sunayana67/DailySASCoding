/*
The Task: Read data stored in txt file using informats and formats
*/
* Data Used: bank.txt;

data financial;
	infile '/home/u41108928/Ron Cody Data/bank.txt';
	input @1 Subj $3. 
          @4 DOB mmddyy10. 
          @14 Gender $1. 
          @15 Balance 7.;
run;

title "Reading data using informats";

proc print data=financial;
run;

title "Reading data using informats and displaying using formats";

proc print data=financial;
	format DOB mmddyy10. 
           Balance dollar11.2;
run;