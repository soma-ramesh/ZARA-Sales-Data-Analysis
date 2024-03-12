SELECT * FROM zara.sales;

--------- Feature Engineering---------------------------------------------------------
SELECT Sales_Volume, Price, Sales_Volume * Price AS "Revenue" FROM  SALES;

ALTER TABLE SALES
ADD COLUMN  REVENUE INT;

UPDATE SALES
SET REVENUE = Sales_Volume * Price;

ALTER TABLE SALES
RENAME column REVENUE TO Revenue;

------------------------------------------------------------------------------------

--------  Overall Sales:---------

--- 1. What is the total sales volume and revenue for the entire dataset?

SELECT 
sum(Sales_Volume) as "Total_Sales_Volume" , 
concat(round(sum(Sales_Volume * Price )/1000000,2),' ','M') 
AS "Revenue_In_USD"
FROM SALES;



--- 2. What is the average price of products sold?


SELECT 
concat(round(avg(Price),2),' ','USD') as "Avg_Price" 
FROM SALES;


---------------------------------------------------------------------------------------------------------------------------------------

-------------- Product Analysis:----------


--- 3. Which product has the highest sales volume?


SELECT NAME as "Product", 
Sales_Volume AS "Units_Sale" 
FROM SALES
order by Units_Sale DESC
LIMIT 1;

------------------------------



--- 4 . Which product has the lowest sales volume and its price ?


SELECT name as "Product",
Sales_Volume as "Units_Sale", 
concat(Price,' ','USD') AS "Price"
FROM SALES 
WHERE Sales_Volume = (Select min(Sales_Volume) from sales);


------------------------



--- 5. Which product has the highest revenue?


SELECT Name as "Product", 
concat(round(SUM(Revenue)/1000000,2),' ', 'M') as"Revenue" 
FROM SALES 
group by Name 
order by Revenue DESC
limit 3;







------------- Product Categories:-----------
--- 6. What are the top-selling product categories?


SELECT Product_Category, 
SUM(Sales_Volume) AS "Sales_Volume" 
FROM SALES 
group by Product_Category 
order by SUM(Sales_Volume) DESC;




------------- Section-wise Sales:----------
--- 7. What is the sales distribution for each product section (e.g., jackets for men)?


SELECT Section, Sub_Category, 
SUM(Sales_Volume) AS "Sale_Volume" 
FROM SALES 
group by Section, Sub_Category 
order by SALE_VOLUME DESC; 




--- 8 . What is the distribution of sales across different store sections (Aisle, End-cap, Front of Store)?


SELECT Product_Position, 
SUM(Sales_Volume) AS "Sale_Units" ,
round((SUM(Sales_Volume) / (SELECT SUM(Sales_Volume) FROM Sales)),2) * 100 AS "Sale_Per" 
FROM Sales 
group by Product_Position 
order by Sale_Per DESC;
       
       
       
       
       
--- 9. How does the presence of promotions affect sales volume and revenue?


SELECT Promotion, 
round(sum(Sales_Volume)/ (SELECT sum(Sales_Volume) FROM SALES),2) AS "Unit_Sale_Perc", 
round(sum(Revenue)/ (SELECT sum(Revenue) FROM SALES),2) AS "Revenue_Perc"
FROM SALES
GROUP BY Promotion;
 
 
 
 
 --- 10. Which products have the highest sales and their revenue during promotions?
 
 
SELECT Name as "Product", 
Sales_Volume AS "Units_Sale", 
Revenue as "Revenue_In_USD"
FROM SALES 
WHERE Promotion = "Yes"
order by Units_Sale DESC
LIMIT 5;
        
        
        

 --- 11. Which products have the Lowest sales during promotions?
 SELECT Name as "Product", Sales_Volume AS "Units_Sale" FROM SALES 
		WHERE Promotion = "Yes"
        order by Units_Sale
        LIMIT 5;
        
        
        
        
 --- 12. Which products have the highest sales and Revenue without promotions?
 SELECT Name as "Product", Sales_Volume AS "Units_Sale", Revenue FROM SALES 
		WHERE Promotion = "No"
        order by Units_Sale DESC
        LIMIT 5;




--- 13. How does the presence of promotions affect sales volume and revenue?
SELECT Promotion, 
       sum(Sales_Volume) AS "Unit_Sale", 
       concat(round(sum(Revenue)/1000000,1),' ' , "Millions") AS "Revenue"
       FROM SALES
       GROUP BY Promotion;
       
       
       
       
--- 14. What is the revenue for each sub category?
select   Sub_Category, 
         concat(round(sum(Revenue)/1000000,2),' ' , "Millions") AS "Revenue" FROM SALES
         group by Sub_Category;     
         
         
         
         
--- 15. Effect of promotion on Sub_Category?
SELECT   Promotion,  Sub_Category, 
          concat(round(sum(Revenue)/1000000,2),' ' , "Millions") AS "Revenue" FROM SALES
           group by  Promotion, Sub_Category
           order by Sub_Category, Revenue DESC ;
           
           
           
           
           
--- 16. Which is the top sold seasonal product?
SELECT NAME , Sales_Volume FROM SALES
       WHERE SEASONAL = "Yes"
       Order by Sales_Volume DESC 
	   LIMIT 1;
       
       
       
       
       
--- 17. Season wise revenue for each sub category?
  SELECT   seasonal,  Sub_Category, 
          concat(round(sum(Revenue)/1000000,2),' ' , "Millions") AS "Revenue" FROM SALES
           group by  seasonal , Sub_Category
           order by Sub_Category, Revenue DESC ;
           
           
           
           
           
--- 18. Which seasonal product has highest  price and lowest price?
--- SELECT name, Price  FROM SALES  WHERE SEASONAL = "Yes"  and price =(SELECT max(Price) FROM SALES  WHERE SEASONAL = "Yes");
--- SELECT name, Price  FROM SALES  WHERE SEASONAL = "Yes"  and price =(SELECT min(Price) FROM SALES  WHERE SEASONAL = "Yes");

SELECT name as "Seasonal_Product" , Price  
FROM SALES  
WHERE SEASONAL = 'Yes' AND Price = (SELECT min(Price) FROM SALES WHERE SEASONAL = 'Yes')

UNION

SELECT name as "Seasonal_Product", Price  
FROM SALES  
WHERE SEASONAL = 'Yes' AND Price = (SELECT max(Price) FROM SALES WHERE SEASONAL = 'Yes');






--- 19. How are price ranges distributed within each product category?
SELECT Product_Category, MIN(Price) AS Min_Price, MAX(Price) AS Max_Price
       FROM SALES
       GROUP BY Product_Category;
       
       
       
       
       
--- 20. How are price ranges distributed within each Sub_Category?       
SELECT Sub_Category, MIN(Price) AS Min_Price, MAX(Price) AS Max_Price
       FROM SALES
       GROUP BY Sub_Category
       order by Sub_Category DESC;
----------------------------------------



SELECT
    sp.Sub_Category,
    sp.Min_Price,
    sp.Max_Price,
    SUM(CASE WHEN s.Price = sp.Min_Price THEN s.Revenue ELSE 0 END) AS Revenue_Min_Price,
    SUM(CASE WHEN s.Price = sp.Max_Price THEN s.Revenue ELSE 0 END) AS Revenue_Max_Price
FROM (
    SELECT
        Sub_Category,
        MIN(Price) AS Min_Price,
        MAX(Price) AS Max_Price
    FROM SALES
    GROUP BY Sub_Category
) AS sp
JOIN SALES s ON sp.Sub_Category = s.Sub_Category
GROUP BY sp.Sub_Category, sp.Min_Price, sp.Max_Price
ORDER BY sp.Sub_Category DESC;


