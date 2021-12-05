libname daily '/home/u41108928/Ron Cody Data';

/* The Task: To read dates using different SAS date informats. */

data daily.four_dates; 
infile '/home/u41108928/Ron Cody Data/dates.txt' truncover; 
input @1 Subject $3. 
      @5 DOB mmddyy10.
      @16 VisitDate mmddyy8.
      @26 TwoDigit mmddyy8.
      @34 LastDate date9.; 
run;

title 'Read dates from raw data';

proc print data=daily.four_dates;
run;


/* The Task: To add formats to stored SAS dates. */

data daily.four_dates_format; 
set daily.four_dates;
format DOB VisitDate date9. 
       TwoDigit LastDate mmddyy10.; 
run;

title 'Adding a FORMAT statement to format each of the date values';

proc print data= daily.four_dates_format;
run;


/* The Task: To calculate difference between years */

data daily.ages; 
set daily.four_dates_format; 
Age = yrdif(DOB,VisitDate,'Actual'); 
run;
 
title "Listing of AGES"; 

proc print data= daily.ages; 
 id Subject; 
 var DOB VisitDate Age; 
run;


/*The Task: To read Date as a constant*/

data daily.ages_constant; 
set daily.four_dates_format; 
Age = yrdif(DOB,'01Jan2006'd,'Actual'); 
run; 

title "Listing of AGES"; 

proc print data=daily.ages_constant; 
 id Subject; 
 var DOB Age; 
 format Age 5.1; 
run;


/*The Task: To compute the current date in SAS.*/

data daily.ages_current; 
set daily.four_dates_format; 
Age = yrdif(DOB,today(),'Actual');
run;

title "Listing of AGES"; 

proc print data=daily.ages_current; 
 id Subject; 
 var DOB Age; 
 format Age 5.1; 
run;

