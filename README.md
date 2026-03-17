# Online Retail Sales Analysis & RFM Customer Segmentation

## Overview

This project performs an end-to-end analysis of an online retail dataset to uncover sales trends, customer behavior, and revenue insights.
The analysis includes **data cleaning, exploratory data analysis (EDA), and customer segmentation using RFM (Recency, Frequency, Monetary) analysis** to identify high-value customers and potential churn risks.

The objective is to transform raw transactional data into actionable business insights that can support marketing and customer retention strategies.

---

## Dataset Description
The dataset used in this project is publicly available at the UCI Machine Learning Repository.

Source: https://archive.ics.uci.edu/ml/datasets/online+retail

Note: The dataset file is not included in this repository due to GitHub file size limitations.

The dataset contains transactional records from an online retail store. Each row represents a product purchased in a transaction.

**Key Columns**

* **InvoiceNo** – Unique identifier for each transaction
* **StockCode** – Product code
* **Description** – Product name
* **Quantity** – Number of items purchased
* **InvoiceDate** – Date and time of purchase
* **UnitPrice** – Price per item
* **CustomerID** – Unique identifier for each customer
* **Country** – Country where the customer resides

---

## Tools & Technologies

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook
* SQL

---

## Project Workflow

### 1. Data Cleaning & Preprocessing

* Removed missing customer IDs and product descriptions
* Removed duplicate records
* Filtered invalid quantities and prices
* Created a new feature: **TotalPrice = Quantity × UnitPrice**

---

### 2. Exploratory Data Analysis

Key analyses performed:

* Monthly sales trend analysis
* Top selling products
* Revenue distribution by country
* Customer purchasing behavior

These analyses help understand **overall sales patterns and customer activity**.

---

### 3. RFM Customer Segmentation

Customers were segmented using the **RFM framework**:

* **Recency (R)** – How recently a customer made a purchase
* **Frequency (F)** – How often a customer makes purchases
* **Monetary (M)** – How much money a customer spends

Based on RFM scores, customers were categorized into:

* **VIP Customers**
* **Loyal Customers**
* **Regular Customers**
* **At Risk Customers**

This segmentation helps businesses design **targeted marketing and retention strategies**.

---

### 4. SQL Analysis

SQL queries were used to extract key business insights from the dataset:

* Top selling products

* Revenue by country

* Monthly sales trends

* Top customers by revenue

* Average order value

### SQL queries are available in:
Online_Retail_Analysis.sql

---

## Key Insights

* **November is the peak sales month**, indicating strong seasonal demand.
* **United Kingdom generates the highest revenue**, suggesting that most business activity is concentrated in this region.
* **Top 20% of customers contribute approximately 75% of total revenue**, demonstrating the Pareto principle in customer purchasing behavior.
* **VIP customers generate the highest revenue**, highlighting the importance of retaining high-value customers.
* A group of customers has been identified as **At Risk**, indicating potential churn and the need for re-engagement campaigns.

---

## Visualizations

The analysis includes several visualizations such as:

* Customer Segmentation Distribution
* Revenue Contribution by Customer Segment
* Monthly Sales Trends
* RFM Correlation Heatmap

These visualizations help communicate insights clearly and support data-driven decision making.

---

## Business Recommendations

* Focus on **retaining VIP customers** through loyalty programs and personalized offers.
* Develop marketing strategies to **convert Regular customers into Loyal customers**.
* Re-engage **At Risk customers** with targeted campaigns and discounts.
* Monitor seasonal demand trends to improve **inventory and marketing planning**.

---

## Project Structure

```
online-retail-rfm-analysis
│
├── Online Retail Sales Analysis.ipynb
│   
│
├── Online_Retail_Analysis.sql
│   
│
├── images
│
└── README.md
```

---

## Author

**Avinash Paliwal**

GitHub: https://github.com/ExpertAvinash

LinkedIn: https://www.linkedin.com/in/avinash-paliwal-a710a1253/


