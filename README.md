# 💳 Credit Card Weekly Dashboard using Power BI

## 🎯 Project Objective
*To develop a comprehensive credit card weekly dashboard that provides real-time insights into key performance metrics and trends, enabling stakeholders to monitor and analyze credit card operations.*

---

## 📂 Data Source & Import Process

- dataset used:
  - **`credit_card.csv`**: Contains transaction-level details such as card category, fees, utilization, chip usage, and expenditure types.
  - **`customer.csv`**: Contains customer-level attributes including demographics, job type, income group, satisfaction score, etc.

- These datasets were uploaded into a **MySQL database** and then connected to **Power BI** via **MySQL connector**.

- In Power BI:
  - Data was cleaned and transformed using **Power Query Editor**.
  - Data types were properly assigned, especially for date fields like `Week_Start_Date`.

---

### ✅ Key Implementation Steps:
• Developed an interactive dashboard using transaction and customer data from a SQL database, to provide real-time insights.  
• Streamlined data processing and analysis to monitor key performance metrics and trends such as revenue, interest earned, and total transactions.  
• Joined customer and transaction data based on client number to enrich the analysis.  
• Applied DAX measures to compute KPIs like:
  - Revenue
  - Interest Earned
  - Total Transaction Amount
  - Customer Satisfaction Score
---

## 📈 Visualizations Created

### Main Dashboard Highlights:
- **KPIs**: Revenue, Interest Earned, Total Transactions, Transaction Count
- **Filters**: Week Start Date
- **Bar Charts**:
  - Revenue by Card Category
  - Revenue by Use Chip Method
  - Revenue by Expenditure Type
  - Revenue by Customer Job
  - Revenue by Education Level
- **Line + Column Chart**:
  - Revenue & Transaction Volume by Quarter
- **Geographic Analysis**:
  - Top 5 States by Revenue
- **Demographic Insights**:
  - Revenue by Age Group, Marital Status, Dependent Count

---

## 🔍 Insights Derived

• Most revenue comes from **Blue** and **Silver** card holders.  
• **Swipe** method has significantly higher usage than **Chip** or **Online**.  
• **Bills**, **Entertainment**, and **Fuel** are top expenditure types.  
• **Businessmen** and **Graduates** contribute the highest revenue.  
• Q4 has the highest transaction volume and revenue.

---

## 🏁 Final Outcomes

• Successfully delivered a dynamic and intuitive dashboard for monitoring credit card KPIs.  
• Helped stakeholders understand trends in revenue, delinquency, customer satisfaction, and usage behavior.  
• Enabled decision-makers to identify high-value customer segments and optimize marketing or credit strategies.  

---

## 🔄 Project Update

- **Additional Data Loaded**: More recent weekly records were appended to the **MySQL database**, and the dashboard automatically refreshed in Power BI due to live connection.
- **New Date Parsing Issue Fixed**: `Week_Start_Date` formatting was resolved using **locale-specific conversion** in Power Query 

---
## Preview 
![Screenshot1](https://github.com/user-attachments/assets/7110cc71-52e5-426d-90fb-b13ada267f76)
![Screenshot2](https://github.com/user-attachments/assets/0adac258-86f2-4e97-ba5e-5d905abda90b)

📌 *This project demonstrates end-to-end analytics: from SQL-based data import, Power BI data modeling, DAX calculation, visualization, and insight generation.*
