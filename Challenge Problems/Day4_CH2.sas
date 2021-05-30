/* Day 4 Challenge Problem 2: 
You are given a text file company.txt where dollar signs were used as delimiters. To indicate missing values, 
two dollars signs were entered. Values in this file represent last name, employee number, and annual salary. 
Using this data file as input, create a SAS data set called Company with the variables LastName (character), EmpNo (character), and Salary (numeric). 
*/

data Company;
infile "/home/u41108928/Ron Cody Data/company.txt" dlm = '$';
input LastName $ EmpNo $ Salary;
run;
