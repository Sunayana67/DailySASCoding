/* Day 4 Challenge Problem 1:
You are given a CSV file called political.csv containing state, political party, and age.

Write a SAS program to create a SAS data set called Vote. Use the variable names State, Party, and Age. Age should be stored as a numeric variable; State and Party should be stored as character variables.
Include a procedure to list the observations in this data set.
Include a procedure to compute frequencies for Party. 

*/

data Vote;
infile "/home/u41108928/Ron Cody Data/political.csv" dsd; 
input State $ Party $ Age;
run;

title "Listing all observation in data set Vote.";
proc print data = Vote;
run;

title "Frequency of Party variable";
proc freq data= Vote;
 table Party;
run;
  
