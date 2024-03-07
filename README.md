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


# CONCLUSIONS:

1. **Total Sales Volume** : The sum of the sales volume for all products in the dataset is 455,556 units.

2. **Total Revenue** : The total revenue generated from sales is $38,129,605.

3. **Average Price** : The average price of products sold is $85.2960.
 
4. **Top-Selling Product** : "Plaid Tie Dye Overshirt" stands out as the product with the highest sales volume, indicating strong customer demand for this particular item.
 
5. **Low Sales Volume** : The "Abstract Jacquard Sweater" has the lowest sales volume, indicating that it may not be as popular among customers compared to other products.
The relatively low sales volume coupled with the product's price of $60 may suggest that customers perceive the product as less attractive at its current price point. ZARA may explore pricing adjustments or promotions to stimulate sales.

6. **Top Revenue Products**: The "Contrasting Patches Bomber Jacket" and the "Suit Jacket In 100% Linen" are the top-performing products in terms of revenue. These products contribute significantly to ZARA's overall sales. Revenue from "Contrasting Patches Bomber Jacket" is  "0.89 Millions" and Revenue from "Suit Jacket In 100% Linen" is	0.82 Millions.7. 

7. **Dominant Categories**: "Clothing" stands out as the dominant product category in terms of sales volume, significantly surpassing other categories. "Footwear" also contributes to sales but to a lesser extent. The high sales volume in the "Clothing" category suggests strong customer preferences for ZARA's clothing products. While "Clothing" dominates, the "Footwear" category still represents a substantial portion of sales. ZARA may explore opportunities to enhance its footwear offerings, considering trends and customer preferences in this segment.

8. **Men's Jackets Dominance**: The top-selling sub-category is "jackets" in the "Men" section, with a significant sales volume of 255,451 units. This suggests a strong demand for men's jackets.

9. **Women's Sweaters Significance** : In the "Women" section, "sweaters" emerge as a notable sub-category with a sales volume of 63,374 units. This indicates popularity and demand for women's sweaters.

10. **Men's Shoes and T-Shirts** : "shoes" and "t-shirts" are prominent sub-categories in the "Men" section, with sales volumes of 57,906 and 53,637 units, respectively. This suggests a strong market for men's footwear and t-shirts.

11. **Men's Jeans and Sweaters** : "jeans" and "sweaters" are also contributing sub-categories in the "Men" section, with sales volumes of 13,320 and 11,868 units, respectively.

12. **Aisle Dominance** : The "Aisle" section contributes the highest percentage to total sales, accounting for 38.94%. This suggests that products placed in the aisle have a significant impact on overall sales.

13. **Sales Volume Impact**: While products with promotions contribute to a slightly lower percentage of the total sales volume (47%), they appear to have a balanced impact on overall revenue (50%).

14. **Revenue Distribution**: The distribution of revenue is evenly split between products with and without promotions, both accounting for approximately 50% of the total revenue.

15. **Promotions Effectiveness**: The data suggests that promotions may not significantly impact the overall revenue distribution but play a role in influencing sales volume. ZARA may consider optimizing their promotion strategies to enhance overall sales performance.

16. **Top-Selling Seasonal Product**: The "Plaid Tie Dye Overshirt" stands out as the most popular seasonal product, demonstrating high demand among customers during the seasonal period. ZARA can take note of the success of this particular seasonal item and explore strategies to replicate its success or identify similar products for future seasonal offerings.

17. **Lowest Price Seasonal Product**: The "High Collar Knit Sweater" is the seasonal product with the lowest price, priced at 8 USD.

18. **Highest Price Seasonal Product**: The "Cropped Leather Jacket" stands out as the seasonal product with the highest price, commanding a price of 439 USD.
