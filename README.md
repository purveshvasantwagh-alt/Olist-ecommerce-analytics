# E-Commerce Customer Retention & Revenue Analytics

[![Tableau Public](https://img.shields.io/badge/Tableau_Public-Live_Dashboard-E97627?style=flat&logo=Tableau)](https://public.tableau.com/views/OlistE-CommerceAnalyticsProject/Dashboard1)
[![Database](https://img.shields.io/badge/Database-SQLite-003B57?style=flat&logo=SQLite)](https://www.sqlite.org/)

An end-to-end data analytics project examining **100,000+ real-world Brazilian e-commerce orders** from the Olist dataset. This project analyzes customer repurchase frequency, order fulfillment funnels, and month-over-month category revenue drivers using advanced SQL (CTEs, Window Functions) and interactive visualizations in Tableau.

---

## 🎯 Motivation & Business Context

In multi-seller e-commerce marketplaces, customer acquisition costs are high, making retention and smooth order fulfillment critical for long-term margins. I built this project to analyze where customers drop off in the fulfillment funnel, how quickly repeat buyers return for subsequent purchases, and which product categories consistently drive revenue growth to inform targeted marketing and inventory strategies.

---

## 📊 Interactive Dashboard

Access the interactive visual analysis hosted on Tableau Public:
👉 **[View Live Tableau Dashboard](https://public.tableau.com/views/OlistE-CommerceAnalyticsProject/Dashboard1)**


---

## 📌 Key Data Insights & Business Findings

* **Order Fulfillment Efficiency:** Out of 100,000+ order records, over **97%** reached `delivered` status successfully. Critical drop-offs (canceled and unavailable orders) accounted for under **1.5%** of overall volume, indicating high marketplace fulfillment reliability.
* **Customer Repurchase Behavior:** The repeat purchase interval curve drops off sharply after initial purchases. A significant portion of repeat transactions occur within the **10–30 day window**, identifying the optimal timeframe for automated re-engagement marketing campaigns.
* **Category Growth & Revenue Drivers:** Top product categories—led by *cama_mesa_banho* (Bed & Bath), *beleza_saude* (Health & Beauty), and *relogios_presentes* (Watches & Gifts)—consistently contribute the largest share of monthly revenue, showing strong growth trajectories entering key end-of-year sales cycles.

---

## 🛠️ Tech Stack & Concepts

* **Database Engine:** SQLite (DB Browser)
* **SQL Techniques:** Common Table Expressions (CTEs), Window Functions (`LAG()`, `DENSE_RANK()`, `SUM() OVER()`), Date Arithmetic (`JULIANDAY`), Inner/Outer Joins, Aggregation
* **Data Visualization:** Tableau Public Desktop (Histograms, Stacked Bar Charts, Horizontal Funnel Charts)
* **Version Control:** Git & GitHub

---

## 📁 Repository Structure

```text
├── assets/
│   └── dashboard_preview.png    # Dashboard preview image for documentation
├── data/
│   ├── funnel_metrics.csv       # Aggregated funnel counts and percentage drop-offs
│   ├── repeat_orders.csv        # Calculated customer repurchase intervals
│   └── category_ranks.csv       # Ranked monthly revenue by product category
├── sql/
│   ├── 01_funnel_analysis.sql   # Fulfillment stage distribution query
│   ├── 02_repeat_purchases.sql  # Customer purchase interval calculation (LAG)
│   └── 03_category_ranks.sql    # Monthly category revenue ranking (DENSE_RANK)
└── README.md                    # Project documentation
