/* The task: How many years you need to keep your $100 in the bank at 3.75% interest 
to double your money. Use DO UNTIL */

data double; 
Interest = .0375; 
Total = 100; 
do until (Total ge 200); 
 Year + 1; 
 Total = Total + Interest*Total; 
 output; 
end; 
format Total dollar10.2; 
run;

title "Listing of DOUBLE"; 

proc print data=double noobs; 
run;



/*The task: Demonstrate that DO UNTIL loop always executes at least once.*/

data double; 
Interest = .0375; 
Total = 300; 
do until (Total gt 200); 
 Year + 1; 
 Total = Total + Interest*Total; 
 output; 
end; 
format Total dollar10.2; 
run;



/* The task: How many years you need to keep your $100 in the bank at 3.75% interest 
to double your money. Use DO WHILE. */
data double; 
Interest = .0375; 
Total = 100; 
do while (Total le 200); 
 Year + 1; 
 Total = Total + Interest*Total; 
 output; 
end; 
format Total dollar10.2; 
run;

proc print data=double noobs; 
title "Listing of DOUBLE"; 
run;



/*The task: Demonstrate that DO WHILE loops are evaluated at the top */

data double; 
Interest = .0375; 
Total = 300; 
do while (Total lt 200); 
 Year + 1; 
 Total = Total + Interest*Total; 
 output; 
end; 
format Total dollar10.2; 
run;



/* The task: Combining a DO UNTIL and iterative DO loop to prevent infinite loop*/

data double; 
Interest = .0375; 
Total = 100; 
do Year = 1 to 100 until (Total gt 200); 
 Total = Total + Interest*Total; 
 output; 
end; 
format Total dollar10.2; 
run;



/* The task: Demonstrating the LEAVE statement*/

data leave_it; 
Interest = .0375; 
Total = 100; 
do Year = 1 to 100; 
 Total = Total + Interest*Total; 
 output; 
 if Total ge 200 then leave; 
end; 
format Total dollar10.2; 
run;



/* The task: Demonstrating a CONTINUE statement*/

data continue_on; 
Interest = .0375; 
Total = 100; 
do Year = 1 to 100 until (Total ge 200); 
 Total = Total + Interest*Total; 
 if Total le 150 then continue; 
 output; 
end; 
format Total dollar10.2; 
run;