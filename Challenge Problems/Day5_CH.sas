/* You want to create a test data set. In the DATA step, you want to create a 
new variable, Z, equal to 100 + 50X + 2X^2 – 25Y + Y^2. 
Use the following (X,Y) data pairs: (1,2), (3,6), (5,9), and (9,11). 
*/

data test;
input X Y;
Z= 100 + 50*X + 2*X**2 - 25*Y + Y**2;
datalines;
1 2
3 6
5 9
9 11
;
run;