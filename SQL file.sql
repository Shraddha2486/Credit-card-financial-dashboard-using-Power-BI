show databases;
Use credit_card_database;
LOAD DATA LOCAL INFILE 'D:/My_learnings/Power BI/Credit_Card_Financial_Dashboard/credit_card.csv'
INTO TABLE credit_card_detail
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, @Week_Start_Date, Week_Num, Qtr, current_year, Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc)
SET Week_Start_Date = STR_TO_DATE(@Week_Start_Date, '%c/%e/%Y');
SELECT 
    *
FROM
    credit_card_detail;
drop table credit_card_detail;
create table credit_card_detail(
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

SET sql_mode = '';

select * from customer_detail;
SELECT Week_Start_Date FROM credit_card_detail WHERE Week_Start_Date IS NULL;
SELECT COUNT(*) AS Total, COUNT(Week_Start_Date) AS NonNulls, COUNT(*) - COUNT(Week_Start_Date) AS Nulls
FROM credit_card_detail;

SELECT @Week_Start_Date, STR_TO_DATE(@Week_Start_Date, '%Y-%m-%d')
FROM credit_card_detail
LIMIT 10;
