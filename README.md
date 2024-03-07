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
1. # Data Wrangling :This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace, missing or NULL values.
   1. Build a database
   2. Create table and insert the data.
2. Feature Engineering: This will help use generate some new column from existing ones.
   1. Add a new column named **Revenue** to give the insights of each product of revenue and is obtained from Price and Sales_Volume of the product.


