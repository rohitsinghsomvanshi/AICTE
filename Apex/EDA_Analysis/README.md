# Sales Data Analysis & Exploratory Data Analysis (EDA)
A Python-based Exploratory Data Analysis (EDA) project that examines sales transaction data, calculates key business metrics, and visualizes sales patterns across categories and time.

# Project Overview
This notebook explores a cleaned sales dataset (cleaned_sales.csv) containing customer, order, product, category, quantity, pricing, and sales information.


# The analysis focuses on:
- Understanding the dataset structure and data types.
- Converting order dates into a datetime format.
- Reviewing descriptive statistics for important numerical fields.
- Calculating key business metrics.
- Exploring the distribution of total sales.
- Comparing sales across product categories.
- Reviewing the most frequent values in categorical columns.
- Analyzing monthly sales trends.
- Studying relationships between numerical variables using a correlation heatmap.

# Dataset
Required file: cleaned_sales.csv

The notebook expects this CSV file in the same directory as EDA_analysis.ipynb.

The inspected notebook reports 1,000 rows and 18 columns. The columns are:
Column	Description
Order_ID	Unique or transaction order identifier
Order_Date	Date on which the order was placed
Customer_ID	Customer identifier
Customer_Name	Customer name
Age	Customer age
Gender	Customer gender
City	Customer city
Product	Product name
Category	Product category
Quantity	Number of units purchased
Unit_Price	Price per unit
Total_Sales	Total sales value recorded for the row
Duplicate_Order_ID	Boolean flag indicating a duplicate order ID
Order_Year	Year component of the order date
Order_Month	Month component of the order date
Order_Day	Day component of the order date
Age_Group	Customer age-group label
Sales_Outlier	Boolean flag indicating a sales outlier

# Technologies and Libraries
- Python
- Jupyter Notebook
- NumPy
- Pandas
- Matplotlib
# Versions recorded in the notebook:
# Library	Version
NumPy	2.3.5
Pandas	2.3.3
Matplotlib	3.10.6
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

# Analysis Workflow
## Import libraries and inspect versions
The notebook imports NumPy, Pandas, and Matplotlib and prints their installed versions.
## Load the dataset
df = pd.read_csv("cleaned_sales.csv")
The dataset is loaded into a Pandas DataFrame.
## Inspect dataset structure
The notebook uses:
- df.shape to check the number of rows and columns.
- df.info() to inspect column names, data types, and non-null counts.
The notebook output shows 1,000 records and 18 columns, with 1,000 non-null values reported for each column.
## Convert the order date
Order_Date is converted to Pandas datetime format using:
df["Order_Date"] = pd.to_datetime(df["Order_Date"], errors="coerce")
Invalid date values, if any, are converted to NaT.
## Descriptive statistics
The notebook calculates descriptive statistics for:
- Age
- Quantity
- Unit_Price
- Total_Sales
It uses Pandas describe() to show count, mean, standard deviation, minimum, quartiles, and maximum.
## Key business metrics
The notebook calculates the following metrics:
Metric	Calculation
Total Revenue	Sum of Total_Sales
Unique Order IDs	Number of unique Order_ID values
Unique Customers	Number of unique Customer_ID values
Total Units Sold	Sum of Quantity
Average Sales per Row	Mean of Total_Sales


Recorded results from the notebook:
Metric	Result
Total Revenue	139,399,439.65
Unique Order IDs	992
Unique Customers	947
Total Units Sold	5,435
Average Sales per Row	139,399.44


The average is calculated per DataFrame row, not necessarily per unique order.

## Distribution of total sales
A histogram is created from Total_Sales using 20 bins. It helps visualize how frequently different sales values occur and whether the distribution is concentrated or spread out.

## Sales by category
The notebook groups the data by Category, sums Total_Sales, sorts the categories in descending order, and displays the results in a bar chart.

Recorded category-wise sales:
Category	Total Sales
Electronics	50,778,581.70
Education	25,031,689.40
Grocery	22,231,711.28
Furniture	21,521,561.48
Fashion	19,835,895.79


In the notebook output, Electronics has the highest total sales among the listed categories.

 ## Categorical value counts
The notebook checks the most frequent values (top 10) in these columns:
- Gender
- City
- Product
- Category
This helps explore the composition of customers, locations, products, and categories.
  ## Monthly sales trend
The notebook groups Total_Sales by month using the datetime values in Order_Date, then plots the monthly totals as a line chart.

This visualization can help identify changes in sales over time. Rows with invalid/missing dates are excluded from this monthly grouping.

# Correlation analysis
A correlation matrix is calculated for:
- Age
- Quantity
- Unit_Price
- Total_Sales
The notebook visualizes the matrix as a heatmap and annotates each cell with its correlation coefficient. This helps inspect linear relationships between the selected numerical variables.
# Key Findings from the Recorded Notebook Output
- The dataset contains 1,000 rows and 18 columns.
- The notebook reports 992 unique order IDs and 947 unique customers.
- Total recorded sales are 139,399,439.65.
- A total of 5,435 units are recorded as sold.
- Electronics is the highest-sales category in the displayed category summary.
- The notebook includes visual analysis of sales distribution, category performance, monthly trends, and numerical correlations.
These findings reflect the outputs available in the notebook. No additional conclusions about customer behavior, seasonality, or causes of sales changes are assumed.

## How to Use This Project
1. Keep EDA_analysis.ipynb and cleaned_sales.csv in the same folder.
2. Install the required Python libraries.
3. Launch Jupyter Notebook.
4. Open EDA_analysis.ipynb.
5. Run all cells in sequence.
6. Review the printed metrics, tables, and charts.
```bash
pip install pandas matplotlib jupyter openpyxl
```


## 🏁 Conclusion
This Exploratory Data Analysis (EDA) project provides a comprehensive overview of sales transaction data using Python, Pandas, NumPy, and Matplotlib. The analysis covered dataset exploration, descriptive statistics, key business metrics, sales distribution, category-wise performance, monthly sales trends, and correlation analysis.
The dataset contains 1,000 records and 18 columns, with total recorded sales of 139,399,439.65 and 5,435 units sold. The category-wise analysis shows that Electronics generated the highest sales, followed by Education and Grocery.
---

**Project:** Sales Dashboard – Analysis  

# This project strengthened my practical understanding of Python-based data analysis, data visualization, and Exploratory Data Analysis (EDA).

# 👨‍💻 Author

**Rohit Singh**
MCA Student

Aspiring Data Analyst | Power BI Developer | Aspiring Data Science

📧 Email: rohitsinghsomvanci00@gmail.com

🔗 LinkedIn: https://linkedin.com/in/rohitsinghsomvanshi

💻 GitHub: https://github.com/rohitsinghsomvanshi

🔗 Portfolio: [https://github.com/rohitsinghsomvanshi](https://rohitsinghsomvanshi.github.io/Portfolio/)

---

## ⭐ If you found this project helpful, don't forget to Star this repository!


Give this repository a ⭐ on GitHub.

