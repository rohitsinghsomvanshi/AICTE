# Data Immersion & Wrangling

## Project Objective
To explore, assess, clean, transform, and prepare a sales dataset for analysis using Python and Pandas.

## Tools Used
- Python
- Pandas
- NumPy
- Jupyter Notebook
- GitHub

## Project Tasks
1. Data loading and familiarization
2. Data dictionary creation
3. Data quality assessment
4. Missing value handling
5. Duplicate Order ID identification
6. Date formatting and data type conversion
7. Outlier detection using IQR
8. Feature engineering
9. Sales validation
10. Final cleaned dataset export

## Outlier Detection and Analysis

I applied the Interquartile Range (IQR) method to detect outliers in Age, Quantity, Unit_Price, and Total_Sales. No outliers were detected in Age, Quantity, or Unit_Price. However, 19 potential outliers were identified in Total_Sales. These records were flagged for further investigation rather than automatically removed, as they may represent legitimate high-value transactions.

## Key Findings
- Total records: 1,000
- Total original columns: 12
- Missing values identified: Age (20), City (13)
- Duplicate Order ID: 9 rows associated with ORD100050
- Sales mismatches: 0
- Potential Sales outliers: 19

## Files
- `data_cleaning.ipynb`: Python data cleaning notebook
- `data_dictionary.xlsx`: Dataset variable descriptions
- `cleaned_sales.csv`: Final cleaned dataset
- `duplicate_order_ids_review.csv`: Duplicate ID review
- `sales_outliers_review.csv`: Outlier review

## Conclusion
The dataset was profiled, cleaned, transformed, and validated to prepare it for further analysis. Potential duplicate IDs and sales outliers were flagged for review rather than automatically removed.


## 👨‍💻 Author

**Rohit Singh**

MCA Student

Aspiring Data Analyst | Python Developer | Machine Learning Enthusiast

---
Portfolio: [https://github.com/rohitsinghsomvanshi](https://rohitsinghsomvanshi.github.io/Portfolio/)
## ⭐ If you like this project

Give this repository a ⭐ on GitHub.

