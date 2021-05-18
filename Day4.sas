/*
The Task: You have data in different external files; each using different delimiter. 
Create SAS dataset for each file. 
Write procedure to list all observations in the datasets.
Create a fileref and use it in the INFILE statement; instead of mentioning the file path there.
*/
/* 
Data Used: 1. Mydata.txt
           2. mydata.csv
           3. mydata_colon.txt
           4. mydata_tab.txt
*/


filename blnakref "/home/u41108928/Ron Cody Data/Mydata.txt"  ;
data demographic_Blank;
	infile bl_ref;
	input Gender $ Age Height Weight;
run;

Title "Reading data from blank separated text file";
proc print data= demographic_Blank;
run;


filename csv_ref "/home/u41108928/Ron Cody Data/mydata.csv"  ;
data demographic_comma;
	infile csv_ref dsd;
	input Gender $ Age Height Weight;
run;

Title "Reading data from comma separated CSV file" ;
proc print data= demographic_comma;
run;


filename colonref "/home/u41108928/Ron Cody Data/mydata_colon.txt"  ;
data demographic_colon;
	infile colonref dlm= ':';
	input Gender $ Age Height Weight;
run;

Title "Reading data from colon separated text file" ;
proc print data= demographic_colon;
run;


filename tab_ref "/home/u41108928/Ron Cody Data/mydata_tab.txt"  ;
data demographic_tab;
	infile tab_ref dlm= '09'x;
	input Gender $ Age Height Weight;
run;

Title "Reading data from tab separated text file" ;
proc print data= demographic_tab;
run;