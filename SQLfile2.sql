show databases;
use credit_card_database;
Select * from customer_detail;
Select * from credit_card_detail;
SELECT COUNT(*) as total_rows_of_customer_detail FROM customer_detail;
SELECT COUNT(*) as total_rows_of_credit_card_detail FROM credit_card_detail;


LOAD DATA LOCAL INFILE 'D:/My_learnings/Power BI/Credit_Card_Financial_Dashboard/new_data_of_credit_card_detail.csv'
INTO TABLE credit_card_detail
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, @Week_Start_Date, Week_Num, Qtr, current_year, Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt,Total_Trans_Vol, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc)
SET Week_Start_Date = STR_TO_DATE(@Week_Start_Date, '%c/%e/%Y');

SELECT COUNT(*) AS Total, COUNT(Week_Start_Date) AS NonNulls, COUNT(*) - COUNT(Week_Start_Date) AS Nulls FROM credit_card_detail;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM credit_card_detail WHERE Week_Start_Date IS NULL;
SET SQL_SAFE_UPDATES = 1;
LOAD DATA LOCAL INFILE 'D:/My_learnings/Power BI/Credit_Card_Financial_Dashboard/new_data_of_customer_detail.csv'
INTO TABLE customer_detail
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
