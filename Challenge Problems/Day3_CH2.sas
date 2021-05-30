/* Day 3 Challenge Problem 2: 
You are given an equation to predict electromagnetic field (EMF) strength, as follows:
EMF = 1.45 x V + (R/E) x V^3 – 125.
If your SAS data set contains variables called V, R, and E, write a SAS assignment statement to compute the EMF strength. 
*/


data a;
EMF = 1.45 * V + (R/E) * V**3 - 125;
run;

/* Let V = 5 R= 50 E=2*/

data a;
EMF = 1.45 * 5 + (50/2) * 5**3 - 125;
run;