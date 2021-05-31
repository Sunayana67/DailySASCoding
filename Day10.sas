/* The Task: 1. Create a SAS library and permanent data set.
             2. Analyze the descriptor portion.
             3. List all data sets present in the library.
             4. Analyze the data portion.
*/

libname Daily'/home/u41108928/Ron Cody Data';

data Daily.test_scores;
	length ID $ 3;
	input ID $ Score1-Score3;
	datalines;
 1 90 95 98 
 2 78 77 75 
 3 88 91 92 
 ;
run;

title "The Descriptor Portion of Data Set TEST_SCORES";

proc contents data=daily.test_scores;
run;

title "Listing All the SAS Data Sets in a Library";

proc contents data=Daily._all_ nods;
run;

title "Listing of TEST_SCORES";

proc print data=Daily.test_scores;
run;

