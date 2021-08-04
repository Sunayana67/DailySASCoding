/* The task: Compute two new variables—age group (Agegrp) and a value (Grade) computed from 
the midterm and final exam grades using DO Group.*/

data grades; 

length Gender $ 1 
       Quiz $ 2 
       AgeGrp $ 13;
       
infile '/home/u41108928/Ron Cody Data/grades.txt' missover; 

input Age Gender Midterm Quiz FinalExam; 

if missing(Age) then delete; 

if Age le 39 then do; 
 Agegrp = 'Younger group'; 
 Grade = .4*Midterm + .6*FinalExam; 
end; 

else if Age gt 39 then do; 
 Agegrp = 'Older group'; 
 Grade = (Midterm + FinalExam)/2; 
end; 

run; 

title "Listing of GRADES"; 

proc print data=grades noobs; 
run;



/* The task: Create a test data set (Revenue) and attempt to create the cumulative sum */

data revenue; 
input Day : $3. 
Revenue : dollar6.; 
Total + Revenue; 
format Revenue Total dollar8.; 
datalines; 
 Mon $1,000 
 Tue $1,500 
 Wed . 
 Thu $2,000 
 Fri $3,000 
;
run;

title 'Using a sum statement to create a cumulative total';

proc print data= revenue;
run;



/* The task: Create counters using SUM statements.*/

data counter; 
input x; 
if missing(x) then MissCounter + 1; 
datalines; 
 2 
 . 
 7 
 . 
;
run;

title 'Using a sum statement to create a counter';

proc print data= counter;
run;



/* The task: Compute the total amount of money you will have if you start with $100 
and invest it at a 3.75% interest rate for 3 years.*/
data compound; 
Interest = .0375; 
Total = 100; 
do Year = 1 to 3; 
 Total + Interest*Total; 
 output; 
end; 
format Total dollar10.2; 
run;

title 'Total amount every year';

proc print data= compound;
run;



/*The task: Generate a table of the integers from 1 to 10, along with their squares and square
 roots using iterative DO loop.*/
data table; 
do n = 1 to 10; 
 Square = n*n; 
 SquareRoot = sqrt(n); 
 output; 
end; 
run; 

title "Table of Squares and Square Roots"; 

proc print data=table noobs; 
run;



/*The task: You have an equation relating X and Y. Plot a graph of Y versus X for values of X 
from –10 to +10 using iterative DO loop. */

data equation; 
do X = -10 to 10 by .01; 
   Y = (2*X**3)-(5*X**2)+(15*X)-8; 
 output; 
end; 
run; 

symbol value=none interpol=sm width=2; 

title "Plot of Y versus X";
 
proc gplot data=equation; 
 plot Y * X; 
run;

proc print data=equation;
run;



/*The task: Demonstrate nesting of Do loops. */

data easyway; 
do Group = 'Placebo','Active'; 
do Subj = 1 to 5; 
 input Score @; 
 output; 
end; 
end; 
datalines; 
 250 222 230 210 199 
 166 183 123 129 234 
 ;
run;

title 'Nesting of Loops';

proc print data= easyway;
run;
