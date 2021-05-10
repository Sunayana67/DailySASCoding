/*
The task: you have data values in a text file. These values represent Gender (M or F),
Age, Height, and Weight. Each data value is separated from the next by one or more
blanks. You want to produce two reports: one showing the frequencies for Gender (how
many Ms and Fs); the other showing the average age, height, and weight for all the
subjects.
*/
/*
Data used: Mydata.txt
*/
*Code:;

data demographic;
    infile "/home/u41108928/Ron Cody Data/Mydata.txt"; /* Update the file loction accordingly */
	input Gender $ Age Height Weight;
run;

title "Gender Frequencies";

proc freq data=demographic;
	tables Gender;
run;

title "Summary Statistics";

proc means data=demographic;
	var Age Height Weight;
run;