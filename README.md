# Olist_ecommerce
Project Overview
This project performs an end-to-end business analysis of the Olist e-commerce dataset using **SQL** and **Power BI**. The goal is to optimize logistics efficiency and identify high-value customer segments to drive revenue growth.

---

## 📊 Key Business Requirements (BRDs)
                 (BR-01)
*   **BR-01 (Revenue & Profitability) Identifying the top-performing product categories by revenue to prioritize inventory.
*   **BR-02 (Customer Segmentation):** Develop an RFM (Recency, Frequency, Monetary) model to categorize the user base.
*   **BR-03 (Logistics Performance):** Analyze average delivery days and delays to identify geographic bottlenecks.
*   **BR-04 (Payment Trends):** Identify the most popular and highest-value payment methods to optimize transaction costs.
*   **BR-05 (Cancellation Analysis):** Perform monthly trend analysis to identify spikes in cancelled orders.

---

## 🛠️ Tech Stack
*   **Database:** MySQL (Data Cleaning, Aggregations, Window Functions)
*   **Visualization:** Power BI (Interactive Dashboards)
*   **Analysis Framework:** RFM Modeling, Trend Analysis

---

## 🔍 Featured SQL Logic
### 1. Trend Analysis for Cancellation Rate
I implemented a `CASE WHEN` aggregation inside a `DATE_FORMAT` grouping to calculate the monthly "Failure Rate" of orders. This allows for exception reporting where the cancellation rate exceeds 2%.

### 2. RFM Model Scoring
The analysis uses `DATEDIFF` against a reference date to calculate **Recency**, ensuring that even historical datasets provide actionable insights for customer re-engagement.

---

## 📈 Key Insights & Recommendations
*   **Logistics:** Certain states show a 50% higher delivery delay; I recommend establishing a local distribution center in these hubs to reduce churn.
*   **Cancellations:** Spikes in cancellations correlate with "Boleto" payments; shifting users to instant payments could reduce this "decision-regret" window.



