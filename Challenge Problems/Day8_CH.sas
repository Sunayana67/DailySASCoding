/*  You are given a text file called stockprices.txt containing information on the purchase and sale of stocks.
Create a SAS data set (call it Stocks) by reading the data from this file and use formatted input.
Also compute new variables TotalPur TotalSell and Profit*/

data Stocks;
infile "/home/u41108928/Ron Cody Data/stockprices.txt";
input @1 Stock $4.
      @5 PurDate mmddyy10.
      @15 PurPrice dollar6.2
      @21 Number 4.
      @25 SellDate mmddyy10.
      @35 SellPrice dollar6.2;
TotalPur = Number * PurPrice;
TotalSell = Number * SellPrice;
Profit = TotalSell - TotalPur;
run;