/* Day 3 Challenge Problem 1: 
You have a text file called stocks.txt containing a stock symbol, a price, and the number of shares. 

Using this raw data file, create a SAS data set (call it Portfolio). Choose your own variable names for the stock symbol, price, and number of shares. In addition, create a new variable (call it Value) equal to the stock price times the number of shares. Include a comment in your program describing the purpose of the program, your name, and the date the program was written.
Write the appropriate statements to compute the average price and the average number of shares of your stocks. 
*/


/*
Program Name: Day3_CH1.sas stored in "/home/u41108928/Ron Cody Programming/Day3_CH1.sas"

Purpose of the Program: The program reads in data on stock price and number of shares and computes a value for each stock.

Program written by: Sunayana Pati

Date written: May 2021
*/


data Portfolio;
infile "/home/u41108928/Ron Cody Data/stocks.txt" ;
input Stock_Symbol $ Price Shares;
value = Price* Shares ;
run;

title "Average Price and Average number ";
proc means data = Portfolio mean;
var Price Shares ;
run;


