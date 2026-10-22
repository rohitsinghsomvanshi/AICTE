# Sales Data Analysis Project

## Data Cleaning, Exploratory Data Analysis (EDA), SQL Business Analysis and Power BI Dashboard

**Project:** Data Immersion & Wrangling --- Tasks 1 and 2\
**Tools:** Python, Pandas, Matplotlib, Jupyter Notebook, MySQL, Power
BI, GitHub\
**Dataset:** Sales dataset (`sales_data.csv` / cleaned
`cleaned_sales.csv`)\
**Records analysed:** 1,000

------------------------------------------------------------------------

## 1. Project Overview

The objective of this project is to clean and understand a sales
dataset, assess data quality, explore patterns and relationships, answer
business questions using SQL, and present important findings through
visualizations and a Power BI dashboard.

The workflow covers data loading, data dictionary preparation,
missing-value treatment, date handling, duplicate identifier review,
feature engineering, sales validation, exploratory data analysis, SQL
aggregation, correlation analysis, and dashboard creation.

## 2. Dataset Overview

The dataset contains 1,000 records. The main original fields include:

-   `Order_ID`
-   `Order_Date`
-   `Customer_ID`
-   `Customer_Name`
-   `Age`
-   `Gender`
-   `City`
-   `Product`
-   `Category`
-   `Quantity`
-   `Unit_Price`
-   `Total_Sales`

Additional analytical columns were created during cleaning and analysis,
including `Duplicate_Order_ID`, `Calculated_Sales`, `Sales_Mismatch`,
`Order_Year`, `Order_Month`, `Order_Day`, `Age_Group`, and
`Sales_Outlier`.

A data dictionary was prepared to document the fields and their meanings
and exported as `data_dictionary.xlsx`.

## 3. Data Quality Assessment and Cleaning

### 3.1 Missing Values

The initial data-quality check identified:

  -------------------------------------------------------------------------
  Column                Missing values  Percentage of 1,000 Treatment
                                                    records 
  --------------- -------------------- -------------------- ---------------
  `Age`                             20                 2.0% Filled using
                                                            the median;
                                                            converted to
                                                            nullable
                                                            integer after
                                                            rounding

  `City`                            13                 1.3% Filled with
                                                            `Unknown`

  **Total missing               **33**                  --- Addressed
  cells                                                     during cleaning
  identified**                                              
  -------------------------------------------------------------------------

The cleaned dataset should be checked after export to confirm that no
unintended missing values remain.

### 3.2 Exact Duplicate Rows and Repeated Order IDs

-   The initial exact duplicate-row check found **0 exact duplicate
    rows**.
-   There were **992 distinct `Order_ID` values** across 1,000 records.
-   `ORD100050` appeared 9 times and was associated in the initial
    review with 9 distinct customer IDs, 9 distinct dates, and 5
    products.
-   A `Duplicate_Order_ID` flag was created to identify records with
    repeated order IDs.

Repeated order IDs are not necessarily exact duplicate records. They
could indicate a source-data issue, multiple line items, or an
identifier-generation problem. The source owner should confirm the
intended meaning of `Order_ID` before records are deleted or a true
order count is reported.

### 3.3 Date Handling and Feature Engineering

`Order_Date` was converted to a date/datetime representation for
date-based analysis. Additional date features were created:

-   `Order_Year`
-   `Order_Month`
-   `Order_Day`
-   `Age_Group`

These features support age-group analysis and month-wise sales
reporting. For monthly charts, month names must be sorted using a
numeric key such as `Year * 100 + Month`, rather than alphabetically.

### 3.4 Sales Validation

A calculated sales field was created:

`Calculated_Sales = Quantity × Unit_Price`

The `Sales_Mismatch` flag identifies rows where the absolute difference
between `Total_Sales` and `Calculated_Sales` is greater than 0.01. The
validation found **0 sales mismatches** in the checked records.

### 3.5 Potential Outliers

The Interquartile Range (IQR) method flagged **19 potential outliers**
in `Total_Sales`. These were retained rather than automatically removed
because high-value transactions may be legitimate. They should be
checked against business context and source records before any
correction or exclusion.

## 4. Data Cleaning Conclusion

The cleaning workflow addressed the identified missing values, converted
date information for analysis, added useful derived columns, checked
sales arithmetic, and flagged repeated order IDs and potential outliers
for review. The cleaned data was exported to `cleaned_sales.csv`, and
the data dictionary was saved as `data_dictionary.xlsx`.

------------------------------------------------------------------------
## Exploratory Data Analysis :-
## 5. Descriptive Statistics

The cleaned dataset contains 1,000 records. Summary statistics for the
main numerical variables are:

  Metric                   Age   Quantity   Unit Price   Total Sales
  -------------------- ------- ---------- ------------ -------------
  Count                  1,000      1,000        1,000         1,000
  Mean                   41.35      5.435    25,486.78    139,399.44
  Standard deviation     13.68       2.84    14,179.40    114,100.05
  Minimum                   18          1       145.78        437.34
  25th percentile           30          3    13,895.72     47,066.63
  Median                    41          5    25,398.74    108,594.03
  75th percentile           53          8    37,512.38    203,722.88
  Maximum                   65         10    49,997.53    493,677.50

### Interpretation

-   The average customer age is approximately 41 years, with ages
    ranging from 18 to 65.
-   Quantity ranges from 1 to 10 units per record, with a median of 5.
-   Average `Unit_Price` is 25,486.78.
-   Average `Total_Sales` per record is 139,399.44.
-   The mean of `Total_Sales` is higher than its median, indicating that
    high-value records pull the average upward.

The dataset does not specify the currency, so the report does not assume
a currency symbol.

## 6. Univariate Analysis --- Total Sales Distribution

A histogram of `Total_Sales` was created using Matplotlib.

### Finding

The histogram shows a **right-skewed distribution**. Many records have
comparatively lower sales values, while fewer records have very high
sales values.

### Business Insight

The business should monitor high-value transactions separately because
they can materially affect total revenue and average sales. The 19
IQR-flagged records should be reviewed rather than removed
automatically.

## 7. Category-wise Sales Analysis

SQL aggregation produced the following category-level revenue:

    Rank Category        Total Revenue
  ------ ------------- ---------------
       1 Electronics     50,778,581.70
       2 Education       25,031,689.40
       3 Grocery         22,231,711.28
       4 Furniture       21,521,561.48
       5 Fashion         19,835,895.79

### Finding and Business Insight

Electronics is the highest-revenue category by a substantial margin.
Education is second, followed by Grocery, Furniture, and Fashion.
Inventory, product mix, pricing, and promotional performance should be
investigated to understand what drives Electronics' performance.

## 8. Monthly Sales Trend Analysis

Monthly sales were grouped by year and month and visualized with a line
chart.

### Key Findings

-   **March 2025:** Sales reached approximately 13 million, one of the
    highest values visible in the chart.
-   **May 2025:** Sales were lower than the early-year peak.
-   **June 2025:** Sales increased again to approximately 12.9 million.
-   **August--September 2025:** Sales declined, reaching approximately
    9.2 million in September.
-   **October--December 2025:** Sales recovered and remained
    comparatively high.
-   **January 2026:** Sales were approximately 0.8 million, much lower
    than the other visible months.

### Business Insight

Monthly fluctuations can help with inventory planning, demand
monitoring, and promotional timing. However, the unusually low January
2026 value should be validated first: the month may be incomplete or may
have a data-coverage issue. Do not treat it as a confirmed business
decline until the period's completeness has been checked.

Month labels should be sorted chronologically using a `MonthSort` key
such as `Year * 100 + Month`.

## 9. City-wise Sales Analysis

The SQL results showed the following city-level revenue:

    Rank City          Total Revenue
  ------ ----------- ---------------
       1 Patna         19,285,966.89
       2 Kolkata       18,883,449.57
       3 Bengaluru     18,773,574.32
       4 Mumbai        18,757,050.17
       5 Hyderabad     17,166,766.87
       6 Delhi         16,097,079.00
       7 Pune          14,513,175.90
       8 Gaya          14,380,859.39

### Business Insight

Patna has the highest city-level revenue among the displayed results.
Kolkata, Bengaluru, and Mumbai have similar totals. Compare customer
counts, record counts, and average sales by city before deciding where
to allocate resources. `Unknown` appears in the Power BI city chart
because missing city values were retained as an explicit category during
cleaning.

## 10. Gender-wise Sales Analysis

  Gender     Total Revenue   Record Count
  -------- --------------- --------------
  Male       72,463,550.63            511
  Female     66,935,889.02            489

### Business Insight

Male-labelled records have higher total revenue and a slightly higher
record count than female-labelled records in this dataset. This is a
descriptive finding about this dataset only and should not be
generalized to all customers. A small blank category appeared in the
Power BI pie chart; blank or unexpected gender values should be reviewed
and clearly handled.

## 11. Product Performance

The top products by revenue in the SQL output were:

    Rank Product     Total Revenue   Quantity Sold
  ------ --------- --------------- ---------------
       1 Laptop      25,443,008.51             970
       2 Mobile      25,335,573.19           1,008
       3 Book        25,031,689.40             977
       4 Rice        22,231,711.28             826
       5 Chair       21,521,561.48             855

### Business Insight

Laptop has the highest revenue among the products listed, while Mobile
has the highest quantity sold among these five. Revenue and quantity
should be monitored separately because selling more units does not
always mean generating more revenue.

## 12. Multivariate Analysis and Correlation

A correlation heatmap was created for `Age`, `Quantity`, `Unit_Price`,
and `Total_Sales`.

  ------------------------------------------------------------------------
  Variable pair                          Correlation Interpretation
  --------------------- ---------------------------- ---------------------
  Quantity vs Total                             0.65 Moderately strong
  Sales                                              positive linear
                                                     association

  Unit Price vs Total                           0.69 Moderately strong
  Sales                                              positive linear
                                                     association

  Age vs Total Sales                            0.00 No meaningful linear
                                                     association in this
                                                     dataset

  Age vs Quantity                              -0.03 Negligible linear
                                                     association

  Quantity vs Unit                              0.02 Negligible linear
  Price                                              association

  Age vs Unit Price                            -0.01 Negligible linear
                                                     association
  ------------------------------------------------------------------------

### Interpretation

-   Quantity and Total Sales have a positive correlation of **0.65**.
-   Unit Price and Total Sales have a positive correlation of **0.69**.
-   Age and Total Sales have a correlation of approximately **0.00**.
-   Age has very weak correlations with Quantity (**-0.03**) and Unit
    Price (**-0.01**).

Total Sales tends to be higher when quantity or unit price is higher.
This relationship is partly expected because `Total_Sales` is calculated
from `Quantity × Unit_Price`. Correlation does not prove causation.

A Quantity-versus-Total-Sales scatter plot was also created in Power BI.
For a true record-level scatter plot, use a stable unique row identifier
and ensure multiple rows are not unintentionally aggregated into one
point.

------------------------------------------------------------------------

## 13. SQL Business Questions

The following business questions were addressed using MySQL queries with
filtering, grouping, aggregation, sorting, and limits:

1.  Which categories generate the highest total revenue?
2.  Which five products generate the highest revenue?
3.  What is the monthly sales trend by year and month?
4.  Which cities generate the highest total sales?
5.  How do revenue and record counts compare by gender?
6.  Which products have the highest revenue and quantity sold?
7.  How do categories compare by revenue, quantity, and average sales
    per record?

The queries were run against `sales_analysis.sales_test` and should be
saved in `sql_business_queries.sql`. Questions 2 and 6 overlap in the
original query set; to improve variety, question 6 can instead compare
products by average unit price.

### SQL Findings Summary

-   Electronics is the highest-revenue category.
-   Laptop is the highest-revenue product among the top five shown.
-   Mobile has the highest quantity sold among those five products.
-   Patna has the highest city-level revenue in the displayed results.
-   Monthly sales vary over the observed period; January 2026 needs a
    completeness check.
-   Male-labelled records have higher total sales than female-labelled
    records in this dataset.

------------------------------------------------------------------------
# 14. Dashboard Components

The Power BI dashboard includes:

-   KPI cards for Total Sales, Total Units Sold, and Unique Customers
-   Monthly Sales Trend line chart
-   Category-wise sales chart
-   City-wise sales bar chart
-   Gender contribution pie chart
-   Category slicer
-   Quantity vs Total Sales scatter plot

The dashboard currently displays approximately **139.40M Total Sales**,
**5.435K Units Sold**, and **948 Unique Customers**. Verify these KPI
values against the final imported dataset before submission. The
dataset's currency is not specified.

### Recommended Final Checks

-   Sort `MonthYear` chronologically using `MonthSort`.
-   Ensure the monthly chart displays Month-Year rather than individual
    dates.
-   Remove or explicitly label blank gender values.
-   Use separate, clearly titled Category and City slicers if both are
    required.
-   Keep titles, axis labels, and number formats consistent.
-   Validate the KPI values directly from the final dataset.

## 15. Business Recommendations

1.  **Investigate Electronics performance:** Review its product mix,
    stock availability, pricing, and sales consistency.
2.  **Validate monthly changes:** Check the August--September 2025 dip
    and the unusually low January 2026 value after confirming data
    completeness.
3.  **Compare cities fairly:** Patna leads on revenue, but compare
    customer counts and record counts before reallocating resources.
4.  **Track revenue and units together:** Laptop leads by revenue, while
    Mobile leads by units among the listed top products.
5.  **Review high-value transactions:** Validate the 19 potential
    `Total_Sales` outliers against source records.
6.  **Resolve repeated order IDs:** Confirm whether repeated `Order_ID`
    values are valid line items or a source-data issue before reporting
    true order counts.
7.  **Improve data completeness:** Track missing or unknown city and
    gender values and improve source-data entry.

## 16. Limitations

-   The dataset's currency, business context, and formal definition of
    an order were not provided.
-   Repeated `Order_ID` values mean distinct ID count should not
    automatically be interpreted as the true order count.
-   January 2026 may be an incomplete period; data coverage must be
    confirmed.
-   Potential outliers were flagged but not removed.
-   Correlation describes linear association and does not establish
    causation.
-   City and gender comparisons are descriptive and should not be
    generalized beyond this dataset without further validation.

## 17. Tools and Technologies

-   Python
-   Pandas
-   Matplotlib
-   Jupyter Notebook
-   MySQL
-   Power BI
-   GitHub

## 18. Conclusion

This project demonstrates a complete introductory analytics workflow,
from data cleaning and validation to exploratory analysis, SQL business
queries, correlation analysis, and dashboard presentation. The key
findings are that Electronics leads by revenue, Laptop is the
top-revenue product among the listed top five, Patna leads the displayed
city comparison, and Total Sales is positively associated with Quantity
and Unit Price.

Before final submission, validate repeated order identifiers, confirm
January 2026 data coverage, review the potential outliers, verify the
final dashboard KPIs, and upload the notebook, SQL file, report, and
dashboard artifacts to the project repository.
