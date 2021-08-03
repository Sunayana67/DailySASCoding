/*
The task: Print the output of PDV everytime datastep writes data into 
demographic sas dataset.

Data used: Mydata.txt
*/


data demographic;
        infile "/home/u41108928/Ron Cody Data/Mydata.txt"; /* Update the file loction accordingly */
	input Gender $ Age Height Weight;
	putlog "PDV after INPUT Statement";
        putlog _all_;
run;



