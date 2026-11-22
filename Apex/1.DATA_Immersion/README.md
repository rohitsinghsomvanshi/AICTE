# Data Immersion & Wrangling

## Project Objective
To explore, assess, clean, transform, and prepare a sales dataset for analysis using Python and Pandas.

## Tools Used
- Python
- Pandas
- NumPy
- Jupyter Notebook

## Project Tasks
1. Data loading and familiarization
2. Data dictionary creation
3. Data quality assessment
4. Missing-value review and handling
5. Duplicate Order ID identification
6. Date formatting and data type conversion
7. Outlier detection using the IQR method
8. Feature engineering
9. Sales validation
10. Export of the cleaned dataset

## Outlier Detection and Analysis
The IQR method was applied to Age, Quantity, Unit_Price, and Total_Sales. No outliers were detected in Age, Quantity, or Unit_Price. Nineteen potential outliers were identified in Total_Sales and flagged for review rather than automatically removed, as they may represent legitimate high-value transactions.

## Key Findings
- Total records: 1,000
- Total original columns: 12
- Missing values identified: Age (20), City (13)
- Duplicate Order ID: 9 rows associated with ORD100050
- Sales mismatches: 0
- Potential Total_Sales outliers: 19

## Files in This Folder
- `Data Immersion & Wranglin.ipynb`: Data immersion and wrangling notebook
- `ApexPlanet_DataAnalytics_Dataset.xlsx`: Source dataset
- `data_dictionary.xlsx`: Dataset variable descriptions
- `cleaned_sales.csv`: Prepared dataset for subsequent analysis

## Conclusion
The dataset was profiled, cleaned, transformed, and validated to prepare it for further analysis. Potential duplicate IDs and sales outliers were flagged for review rather than automatically removed.

## Author
**Rohit Singh**  
MCA Final-Year Student | Aspiring Data Analyst

- LinkedIn: [Rohit Singh](https://www.linkedin.com/in/rohitsinghsomvanshi/)
- GitHub: [rohitsinghsomvanshi](https://github.com/rohitsinghsomvanshi)
- Portfolio: [View Portfolio](https://rohitsinghsomvanshi.github.io/Portfolio/)
