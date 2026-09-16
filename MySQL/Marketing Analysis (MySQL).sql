CREATE DATABASE RETAIL_DATA;
USE RETAIL_DATA;

SELECT
    COUNT(ID)
FROM
    marketing_campaign;
    
SELECT
    Product_Category,
    Total_Spent
FROM
    (
        SELECT 'Wines' AS Product_Category, SUM(MntWines) AS Total_Spent FROM marketing_campaign
        UNION ALL
        SELECT 'Meat Products' AS Product_Category, SUM(MntMeatProducts) AS Total_Spent FROM marketing_campaign
        UNION ALL
        SELECT 'Gold Products' AS Product_Category, SUM(MntGoldProds) AS Total_Spent FROM marketing_campaign
        UNION ALL
        SELECT 'Fish Products' AS Product_Category, SUM(MntFishProducts) AS Total_Spent FROM marketing_campaign
        UNION ALL
        SELECT 'Sweet Products' AS Product_Category, SUM(MntSweetProducts) AS Total_Spent FROM marketing_campaign
        UNION ALL
        SELECT 'Fruits' AS Product_Category, SUM(MntFruits) AS Total_Spent FROM marketing_campaign
    ) AS Product_Spending
ORDER BY
    Total_Spent DESC
LIMIT 10;

SELECT
    Response,
    COUNT(Response) AS Count
FROM
    marketing_campaign
GROUP BY
    Response;

SELECT
    Education,
    Marital_Status,
    COUNT(ID) AS Customer_Count
FROM
    marketing_campaign
GROUP BY
    Education,
    Marital_Status
ORDER BY
    Education,
    Customer_Count DESC; 
    
SELECT
	ID,
    round((Income)) AS Average_Income_Participated
FROM
    marketing_campaign
WHERE
    (AcceptedCmp1 + AcceptedCmp2 + AcceptedCmp3 + AcceptedCmp4 + AcceptedCmp5 + Response) > 0;
    
SELECT
    SUM(AcceptedCmp1) AS Total_Accepted_Cmp1,
    SUM(AcceptedCmp2) AS Total_Accepted_Cmp2,
    SUM(AcceptedCmp3) AS Total_Accepted_Cmp3,
    SUM(AcceptedCmp4) AS Total_Accepted_Cmp4,
    SUM(AcceptedCmp5) AS Total_Accepted_Cmp5,
    SUM(Response) AS Total_Accepted_Last_Campaign
FROM
    marketing_campaign;
    
SELECT
    Response,
    COUNT(Response) AS Customer_Count
FROM
    marketing_campaign
GROUP BY
    Response
ORDER BY
    Response;

SELECT
    AVG(Kidhome) AS Average_Kids,
    AVG(Teenhome) AS Average_Teens,
    AVG(Kidhome + Teenhome) AS Average_Total_Dependents
FROM
    marketing_campaign;
    
 SELECT
    *,
    (YEAR(CURDATE()) - Year_Birth) AS Age
FROM
    marketing_campaign;
    
SELECT
    *,
    (YEAR(CURDATE()) - Year_Birth) AS Age,
    CASE
        WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 18 AND 25 THEN '18-25'
        WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 26 AND 35 THEN '26-35'
        WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 36 AND 45 THEN '36-45'
        WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS Age_group
FROM
    marketing_campaign;

SELECT
    Age_group,
    ROUND(AVG(NumWebVisitsMonth), 2) AS Average_Web_Visits_Per_Month
FROM
    (
        SELECT
            NumWebVisitsMonth,
            CASE
                WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 18 AND 25 THEN '18-25'
                WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 26 AND 35 THEN '26-35'
                WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 36 AND 45 THEN '36-45'
                WHEN (YEAR(CURDATE()) - Year_Birth) BETWEEN 46 AND 55 THEN '46-55'
                ELSE '56+'
            END AS Age_group
        FROM
            marketing_campaign
    ) AS AgeGroupData 
GROUP BY
    Age_group
ORDER BY
    Age_group;
















