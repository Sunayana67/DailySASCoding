/* The task: Apply labels to your variables*/

libname daily '/home/u41108928/Ron Cody Data';


data daily.test_scores;
	length ID $ 3 Name $ 15;
	input ID $ Score1-Score3;
	label ID='Student ID' 
	      Score1='Math Score' 
	      Score2='Science Score' 
		  Score3='English Score';
	datalines;
 1 90 95 98 
 2 78 77 75 
 3 88 91 92 
 ;
run;

proc means data =daily.test_scores;
var Score1 Score2 Score3;
run;




/*The Task: Apply user-defined formats*/

proc format;
	value $gender 'M'='Male' 
	              'F'='Female' 
	              ' '='Not entered' 
	              other='Miscoded';
	              
	value age low-29='Less than 30' 
	          30-50='30 to 50' 
	          51-high='51+';
	          
	value $likert '1'='Strongly disagree' 
	              '2'='Disagree' 
	              '3'='No opinion' 
		          '4'='Agree' 
		          '5'='Strongly agree';

run;

data Daily.survey;
	infile "/home/u41108928/Ron Cody Data/survey.txt";
	input ID $ Gender $ Age Salary Ques1 $ Ques2 $ Ques3 $ Ques4 $ Ques5 $;
run;

title "Data Set SURVEY without Formatted Values";

proc print data= daily.survey;
run;

title "Data Set SURVEY with Formatted Values";

proc print data=daily.survey;
	id ID;
	var Gender Age Salary Ques1-Ques5;
	format Gender $gender. 
 Age age. 
 Ques1-Ques5 $likert. 
 Salary dollar11.2;
run;

proc format; 
 value $three '1','2' = 'Disagreement' 
 '3' = 'No opinion' 
 '4','5' = 'Agreement'; 
run;

 proc freq data=daily.survey; 
 title "Question Frequencies Using the $three Format"; 
 tables Ques1-Ques5; 
 format Ques1-Ques5 $three.; 
 run;