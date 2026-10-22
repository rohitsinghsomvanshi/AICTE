# 📊 Sales Dashboard – Analysis

An end-to-end Sales Data Analysis project using Python, Pandas, Matplotlib, MySQL, Jupyter Notebook, and Power BI. This project focuses on data cleaning, exploratory data analysis, SQL business queries, and interactive dashboard visualization.

## 📸 Dashboard Preview

<p align="center">
  <img src="https://github.com/rohitsinghsomvanshi/AICTE/blob/main/Apex/EDA_Analysis/Screenshot%202026-10-22%20224250.png?raw=true" alt="" width="100%">
</p>

## 📌 Project Overview

The objective of this project is to analyze sales data, identify business trends, evaluate data quality, answer business questions, and present meaningful insights through visualizations and a Power BI dashboard.

## 🗂️ Dataset Overview

- Total Records: 1,000
- Dataset: Sales Dataset
- Main Columns: Order_ID, Order_Date, Customer_ID, Customer_Name, Age, Gender, City, Product, Category, Quantity, Unit_Price, Total_Sales

## 🧹 Data Cleaning

- Handled missing values in Age and City.
- Checked exact duplicate rows and repeated Order_ID values.
- Converted date columns for time-based analysis.
- Created additional features such as Order_Year, Order_Month, Order_Day, and Age_Group.
- Validated Total_Sales against Quantity × Unit_Price.
- Identified potential sales outliers using the IQR method.

## 📈 Exploratory Data Analysis (EDA)

The analysis includes:
- Descriptive statistics
- Sales distribution analysis
- Category-wise sales analysis
- Monthly sales trends
- City-wise sales analysis
- Gender-wise sales contribution
- Product performance analysis
- Correlation analysis

## 📊 Power BI Dashboard Features

- KPI Cards: Total Sales, Total Units Sold, Unique Customers
- Monthly Sales Trend
- Sales by Category
- Sales by City
- Sales Contribution by Gender
- Quantity vs Total Sales Scatter Plot
- Category Filter/Slicer

### Dashboard KPIs

- Total Sales: Approximately 139.40M
- Total Units Sold: Approximately 5.435K
- Unique Customers: 948

*Note: Verify these values against the final dataset before submission. The dataset currency was not specified.*

## 🔍 Key Business Insights

- Electronics generated the highest category revenue, approximately 50.78M.
- Laptop had the highest revenue among the five products listed in the SQL results.
- Mobile had the highest quantity sold among those five products.
- Patna had the highest city-level revenue among the displayed city results.
- Quantity and Total Sales showed a positive correlation of approximately 0.65.
- Unit Price and Total Sales showed a positive correlation of approximately 0.69.
- The unusually low January 2026 sales value should be checked for data completeness.

## 🛠️ Tools & Technologies

- Python
- Pandas
- Matplotlib
- Jupyter Notebook
- MySQL
- Power BI
- GitHub

## 💻 How to Run

1. Clone or download this repository.
2. Open the Jupyter notebooks in VS Code or Jupyter Notebook.
3. Install the required Python libraries:

```bash
pip install pandas matplotlib jupyter openpyxl
```

4. Update the dataset path in the notebooks if required.
5. Run the data cleaning notebook first, followed by the EDA notebook.
6. Open the SQL file in MySQL and adjust the database/table name if needed.
7. Open the Power BI report if the .pbix file is available.

## 🧮 SQL Business Analysis

Business questions explored include:

1. Which category generates the highest revenue?
2. Which products generate the highest sales?
3. What are the monthly sales trends?
4. Which cities generate the highest revenue?
5. How do sales compare by gender?
6. Which products have the highest revenue and quantity sold?

## 💡 Recommendations

- Investigate the strong performance of Electronics.
- Validate monthly sales fluctuations against data coverage.
- Compare revenue with customer counts across cities.
- Review potential high-value sales outliers.
- Investigate repeated order IDs before interpreting them as unique orders.
- Validate dashboard KPIs against the final dataset.

## ⚠️ Limitations

- Dataset currency and business context were not specified.
- Repeated Order_ID values require further validation.
- January 2026 may be an incomplete period.
- Potential outliers were flagged but not automatically removed.
- Correlation does not establish causation.

## 🏁 Conclusion

This project demonstrates a complete introductory data analytics workflow, from data cleaning and exploratory analysis to SQL-based business insights and Power BI dashboard reporting.

The dashboard provides a visual overview of sales performance across categories, cities, products, months, and gender.

---

**Project:** Sales Dashboard – Analysis  
**Author:** Your Name
