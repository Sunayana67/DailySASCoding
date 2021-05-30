/* You have a CSV file called employee.csv
Use list input to read data from this file. Create a SAS data set
(Employ) from this data file. Use PROC PRINT to list the observations in your data set 
and the appropriate procedure to compute frequencies for the variable Depart. 
*/

data Employ;
infile "/home/u41108928/Ron Cody Data/employee.csv" dsd;
input ID : $3.
      Name : $20.
      Depart : $8.
      DateHire : mmddyy10.
      Salary : dollar8.
      ;
format DateHire date9. Salary dollar8.;
run;
