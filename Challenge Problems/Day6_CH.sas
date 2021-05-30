/* You have a text file called bankdata.txt. Create a SAS data set called Bank using this data file. 
Use column input to specify the location of each value. 
Include in this data set a variable called Interest computed by multiplying Balance by Rate. 
List the contents of this data set using PROC PRINT.
*/

data Bank;
infile "/home/u41108928/Ron Cody Data/bankdata.txt";
input Name $ 1-15
      Acct $ 16-20
      Balance 21-26
      Rate 27-30;
Interest = Balance * Rate;
run;

title "Listing all observation in the data set Bank";

proc print data= Bank;
run;
      