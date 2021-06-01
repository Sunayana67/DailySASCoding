/* The task: Use existing SAS data set to create a new one and calculate the average for Score1, Score2 and Score3. */
/* Data Used: Daily.test_scores*/
libname Daily'/home/u41108928/Ron Cody Data';

data new;
	set Daily.test_scores;
	AveScore=mean(score1,score2,score3);
run;

title "Listing of Data Set NEW";

proc print data=new;
	var ID Score1-Score3 AveScore;
run;