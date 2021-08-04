/*The task: Import excel file Wages.xlsx and store it in a permanent SAS data set.*/

libname daily "/home/u41108928/Ron Cody Data";


proc import datafile= "/home/u41108928/Ron Cody Data/Wages.xlsx" 
out = daily.wages
dbms = xlsx
replace;
run;

