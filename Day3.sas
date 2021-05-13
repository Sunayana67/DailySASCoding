/*
The task: To compute a new variable based on given variables ie. height and weight.
Also add meaningful comments for the readers to understand the code.
Data used: Mydata.txt
*/

/*
Program Name: Day2.sas stored in "/home/u41108928/Ron Cody Programming/Program2.2.sas"

Purpose of the Program: The program reads in data on height and weight (in inches and pounds, respectively) and computes a body 
mass index (BMI) for each subject.

Program written by: Sunayana Pati

Date written: May 2021
*/

data demographic;
    infile "/home/u41108928/Ron Cody Data/Mydata.txt"; /* Update the file loction accordingly */
    input Gender $ Age Height Weight;
    BMI =  (Weight / 2.2) / (Height*.0254)**2;
run;

