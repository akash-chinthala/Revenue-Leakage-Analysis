Revenue Leakage Detection & Analysis

📌 Project Overview
This project focuses on identifying revenue leakage by comparing expected revenue with actual revenue at the order level. The goal is to uncover financial gaps, missing payments, and operational inefficiencies in an e-commerce business.

🎯 Objective
* Detect revenue loss across orders
* Identify missing or incomplete payments
* Analyze revenue trends and order status impact
* Provide actionable business insights

🛠️ Tools & Technologies
* SQL → Data cleaning, transformation, aggregation
* Excel → Initial data understanding & preprocessing
* Power BI → Dashboard creation & visualization

📂 Dataset
* Source: Olist Brazilian E-commerce Dataset (Kaggle)
* Tables used:
    * orders
    * order_items
    * order_payments
    * customers

🔄 Project Workflow
1️⃣ Data Cleaning
* Removed duplicates
* Handled null and empty values
* Corrected data types

2️⃣ Data Transformation (SQL)
* Aggregated order-level data:
    * Expected Revenue = Price + Freight
    * Actual Revenue = Payment Value
* Created revenue leakage metric:  Revenue Leakage = Expected Revenue - Actual Revenue 
* Built final dataset using joins

3️⃣ Data Analysis
* Identified:
    * Orders with revenue loss
    * Overpayments
    * Missing payment records
    * Cancelled orders with payments

4️⃣ Dashboard Development (Power BI)

📊 Power BI Dashboard

![Revenue Leakage Dashboard](Power%20Bi%20Dash/dash_img.png)
Created an interactive dashboard with:
📌 KPI Metrics
* Total Expected Revenue
* Total Actual Revenue
* Total Revenue Leakage
* Revenue Leakage Rate (%)
* Total Orders

📊 Visualizations
* Revenue Leakage by Order Status
* Expected vs Actual Revenue Trend
* Top Revenue Leakage Orders
* Orders with Missing Payments
* Cancelled Orders with Payments

🔍 Key Insights
* Some orders had missing payments, directly contributing to revenue loss
* Cancelled orders with payments indicate process inefficiencies
* Revenue mismatch exists across different order statuses
* Overall leakage rate is low but highlights data and operational gaps

📸 Dashboard Preview




💡 Business Impact
* Helps businesses identify hidden revenue loss
* Improves payment tracking systems
* Supports better financial decision-making
* Enhances operational efficiency

🚀 Conclusion
This project demonstrates how data analysis can be used to detect financial discrepancies and improve business performance through data-driven insights.

👨‍💻 Author
* Akash Reddy Chinthala
* Aspiring Data Analyst
