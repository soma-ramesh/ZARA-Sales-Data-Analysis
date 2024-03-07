# ZARA-Sales-Data-Analysis
------------------------------
### Data Analysis using MySQL
----------------------------
# About:
-------------------------
This ZARA sales dataset contains information about product sales from ZARA stores over a specific period of time. The dataset includes various attributes relevant to sales, such as product ID, product name, product category, price, sales volume, sales date. This data can be used to analyze product sales trends, sales performance across different product categories, the effectiveness of promotions, customer purchasing patterns, and other factors that influence Zara's sales performance.


# Purpose of the project:
---------------------------
The major aim of thie project is to gain insight into the sales data of ZARA Brand and to provide valuable insights for Zara management in optimizing marketing strategies, inventory management, and other decision-making processes to enhance revenue and profitability.



# About Data:
------------------
The dataset was obtained from [https://www.kaggle.com/datasets/xontoloyo/data-penjualan-zara]. This dataset contains 16 columns and 252 rows:

| Column              | Description                                                                  | Data Type       |
|---------------------|------------------------------------------------------------------------------|-----------------|
| product_ID          | Unique identifier for each product                                           | INT             |
| product_Position    | The position of the product in the catalog or store layout.                  | VARCHAR(50)     |
| promotion           | Indicator of whether the product is currently on promotion or not.           | CHAR(5)         |
| product_Category    | The category of the product, such as clothing, accessories, shoes, etc.      | VARCHAR(45)     |
| seasonal            |Indicator of whether the product is part of a specific seasonal collection.   | CHAR(5)         |
| sales_Volume        | The quantity of products sold.                                               | INT             |
| brand               | Brand of the product                                                         |  VARCHAR(25)    |
| name                |Name of the product.                                                          | VARCHAR(100)    |
| price               | Price of the product.                                                        | INT             |
| currency            |Currency of the product price.                                                | VARCHAR(10)     |
| terms               |Terms or conditions of the product.                                           | VARCHAR(15)     |
| section             | Section or category where the product is sold in the store                   | VARCHAR(15)     |
------------------------------------------------------------------------------------------------------------------------

# Analysis List:
1. Overall Sales Analysis:
2. Product Analysis:
3. Promotions:
4. Seasonal Trends:
5. Store Section Analysis:
6. Section-wise Sales:

----------------------------------------------------------------------
# Approach Used:
1. # Data Wrangling :
   This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace, missing or NULL values.
   **1. Build a database**
   **2. Create table and insert the data**
   
2. # Feature Engineering:
   This will help use generate some new column from existing ones.
   1. Add a new column named **Revenue** to give the insights of each product of revenue and is obtained from Price and Sales_Volume of the product.
   
3. # Exploratory Data Analysis (EDA): 
   Exploratory data analysis is done to answer the listed questions and aims of this project.
   
4. # Conclusion:
--------------------------------------------------------

# Business Questions To Answer:
1. What is the total sales volume and revenue for the entire dataset?
2. What is the average price of products sold?
3. Which product has the highest sales volume?
4. Which product has the lowest sales volume and its price ?
5. Which product has the highest revenue?
6. What are the top-selling product categories?
7. What is the sales distribution for each product section (e.g., jackets for men)?
8. What is the distribution of sales across different store sections (Aisle, End-cap, Front of Store)?
9. How does the presence of promotions affect sales volume and revenue?
10. Which products have the highest sales and their revenue during promotions?
11. Which products have the Lowest sales during promotions?
12. Which products have the highest sales and Revenue without promotions?
13. How does the presence of promotions affect sales volume and revenue?
14. What is the revenue for each sub category?
15. Effect of promotion on Sub_Category?
16. Which is the top sold seasonal product?
17. Season wise revenue for each sub category?
18. Which seasonal product has highest  price and lowest price?
19. How are price ranges distributed within each product category?
20. How are price ranges distributed within each Sub_Category?   
------------------------------------------------------------------


1. **Total Sales Volume** : The sum of the sales volume for all products in the dataset is 455,556 units.

2. **Total Revenue** : The total revenue generated from sales is $38,129,605.

3. **Average Price** : The average price of products sold is $85.2960.
 
4. **Top-Selling Product** : "Plaid Tie Dye Overshirt" stands out as the product with the highest sales volume, indicating strong customer demand for this particular item.
 
5. **Low Sales Volume** : The "Abstract Jacquard Sweater" has the lowest sales volume, indicating that it may not be as popular among customers compared to other products.
The relatively low sales volume coupled with the product's price of $60 may suggest that customers perceive the product as less attractive at its current price point. ZARA may explore pricing adjustments or promotions to stimulate sales.


