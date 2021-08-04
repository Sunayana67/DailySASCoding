/* The task : To create a new variable that represents age group*/

libname daily "/home/u41108928/Ron Cody Data";

data daily.conditional; 
length Gender $ 1 
Quiz $ 2; 
input Age Gender Midterm Quiz FinalExam; 
if missing(Age) then AgeGroup = .; 
else if Age lt 20 then AgeGroup = 1; 
else if Age lt 40 then AgeGroup = 2; 
else if Age lt 60 then AgeGroup = 3; 
else if Age ge 60 then AgeGroup = 4; 
datalines;
 21 M 80 B- 82 
 . F 90 A 93 
 35 M 87 B+ 85
 48 F . . 76 
 59 F 95 A+ 97 
 15 M 88 . 93 
 67 F 97 A 91 
 . M 62 F 67 
 35 F 77 C- 77 
 49 M 59 C 81 
; 

title "Listing of CONDITIONAL"; 
proc print data= daily.conditional noobs; 
run;



/*The task: Subset Daily.conditional dataset to include the records for females using IF statements*/

data daily.females; 
set daily.conditional;
if Gender eq 'F'; 
run; 
 
title "Listing of FEMALES"; 

proc print data=daily.females noobs;  
run;



/*The task: Create a new variable that represents age group using SELECT statement*/
data daily.conditional_select; 
set daily.conditional;
select; 
 when (missing(Age)) AgeGroup = .; 
 when (Age lt 20) AgeGroup = 1; 
 when (Age lt 40) AgeGroup = 2; 
 when (Age lt 60) AgeGroup = 3; 
 when (Age ge 60) Agegroup = 4; 
otherwise; 
end; 
run; 
 
title "Listing of CONDITIONAL using SELECT"; 
 
proc print data=conditional_select noobs; 
run;



/* The task: Combine various Boolean operators and list all patients whose status is alive, 
have either high cholesterol or high blood pressure or are overweight, 
or are either very heavy smokers or heavy smokers.*/

title "Example of Boolean Expressions";
 
proc print data= sashelp.heart;
   where Status = 'Alive' and
          (Chol_Status = 'High' or 
           BP_Status = 'High'  or 
           Weight_Status = 'Overweight' or 
           Smoking_Status in ('Heavy(16-25)','Very Heavy (>25)')) ;
    var  Status Sex Chol_Status BP_Status Weight_Status Smoking_Status; 
run;



/*The task: Subset Daily.conditional dataset to include the records for females using WHERE statements*/
data daily.females_where; 
 set daily.conditional; 
 where Gender eq 'F'; 
run;

title "Listing of FEMALES using WHERE"; 

 
proc print data= daily.females_where noobs;  
run;
