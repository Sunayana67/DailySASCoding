/* The task: To store the user-defined formats permanently.*/

libname myfmts "/home/u41108928/Ron Cody Data";

proc format library = myfmts;
  value $gender 'M'   = 'Male'
                'F'   = 'Female'
                ' '   = 'Not Entered'
                other = 'Miscoded';
  value age low-29   = 'Less than 30'
            30-50    = '30 to 50'
            51-high  = '51+';
  value $likert '1' = 'Strongly Disagree'
                '2' = 'Disagree'
                '3' = 'No opion'
                '4' = 'Agree'
                '5' = 'Strongly Agree';
run;


/* The task: Use the permanently stored formats and cross-check the same using PROC CONTENTS*/

libname daily "/home/u41108928/Ron Cody Data";
libname myfmts "/home/u41108928/Ron Cody Data"; 
options fmtsearch= (myfmts);


data daily.survey;
 infile "/home/u41108928/Ron Cody Data/survey.txt"  pad;
 input ID : $3.
       Gender : $1. 
       Age
       Salary
       (Ques1-Ques5) (:$1.);
 format Gender $gender.
        Age age.
        Ques1-Ques5 $likert.
        Salary dollar10.0;
 label ID = "Subject ID"
       Gender = "Gender"
       Age = "Age as of 1/1/2006"
       Salary = "Yearly Salary"
       Ques1 = "The governor is doing a good job?"
       Ques2 = "The property tax should be lowered"
       Ques3 = "Guns should be banned"
       Ques4 = "Expand the green acre program"
       Ques5 = "The school needs to be expanded";
run;


title "Data set SURVEY";

proc contents data = daily.survey varnum;
run;


/* The task : Compute frequencies on the variables Ques1–Ques5 in the permanent SAS data set Survey*/

libname daily "/home/u41108928/Ron Cody Data";
libname myfmts "/home/u41108928/Ron Cody Data";  
options fmtsearch=(myfmts);
 
title "Using User-defined Formats";
 
proc freq data= daily.survey; 
 tables Ques1-Ques5 / nocum; 
run;


/* The task : Display the definitions of all the formats in your Myfmts library */
 
title "Format Definitions in the MYFMTS Library"; 
proc format library=myfmts fmtlib; 
run;
