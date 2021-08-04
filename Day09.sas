/*
The Task: Reading data stored in csv file and txt file with missing data; using informats and formats
*/
* Data Used: List.csv
             list.txt;


data financial_CSV;
	infile '/home/u41108928/Ron Cody Data/List.csv' dsd;
	input Subj   : $3. 
	      Name   : $20. 
	      DOB    : mmddyy10. 
          Salary : dollar8.;
	format DOB date9. Salary dollar8.;
run;

title "Reading data stored in CSV file using informats and formats";
proc print data=financial_CSV;
run;



data financial_text; 
 infile '/home/u41108928/Ron Cody Data/list.txt'; 
 input Subj   : $3. 
       Name   & $20. 
       DOB    : mmddyy10. 
       Salary : dollar8.; 
 format DOB date9. Salary dollar8.;
run;

title "Reading data stored in text file with missing value using informats and formats";
proc print data=financial_text;
run;
