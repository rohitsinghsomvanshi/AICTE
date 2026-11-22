### Data Storytelling & Statistical Validation

This project brings together sales data preparation, exploratory data analysis, sales performance reporting, RFM-based customer segmentation, and statistical hypothesis testing.

## Project Objectives
- Analyze sales performance and customer purchasing behaviour.
- Identify high-performing sales categories and cities.
- Explore product, category, city, and monthly sales patterns.
- Segment customers using Recency, Frequency, and Monetary (RFM) analysis.
- Validate a business question using statistical hypothesis testing.
- Turn analytical findings into practical business recommendations.

## Project Highlights
- Total sales: approximately ₹139.40 million
- Total units sold: 5,435
- Unique customers: 947
- Top sales category: Electronics (36.43% of sales)
- Top-performing city: Patna (approximately ₹19.3 million in sales)

## Customer Segmentation (RFM)

| Customer Segment | Customers | Revenue |
|---|---:|---:|
| High Value Recent | 165 | ₹44.22M |
| At Risk High Value | 147 | ₹38.55M |
| Regular Customers | 189 | ₹27.89M |
| Inactive Low Value | 232 | ₹14.69M |
| Recent Low Value | 214 | ₹14.06M |

RFM analysis helps distinguish valuable recent customers from customers who may need retention or re-engagement campaigns.

## Statistical Hypothesis Testing

**Research question:** Is there a statistically significant difference in average sales between Male and Female sales records?

- **H₀ (Null hypothesis):** There is no significant difference in average sales between the two groups.
- **H₁ (Alternative hypothesis):** There is a significant difference in average sales between the two groups.
- **Test used:** Welch's Independent Two-Sample T-Test
- **Significance level (α):** 0.05

| Metric | Result |
|---|---:|
| Male mean sales | ₹141,807.34 |
| Female mean sales | ₹136,883.21 |
| T-statistic | 0.6826 |
| P-value | 0.4950 |
| 95% confidence interval for mean difference (Male − Female) | −₹9,231.58 to ₹19,079.85 |

**Interpretation:** The p-value (0.4950) is greater than 0.05, and the confidence interval includes zero. Therefore, we fail to reject the null hypothesis. This test did not find a statistically significant difference between the mean sales values of Male and Female records.

**Important note:** This compares sales records, not average spend per unique customer. The test dataset contained 1,000 records after excluding 3 records with missing Gender or Total_Sales values.

## Tools & Technologies
- Python, Pandas, NumPy, SciPy
- SQL / MySQL
- Microsoft Power BI
- Microsoft Excel
- PowerPoint

## Project Deliverables
- `Data_Story.md`: Data story and business findings
- `Final_Presentation.pdf`: Final presentation
- `Hypothesis_Testing.ipynb`: Hypothesis-testing notebook
- `Hypothesis_Testing_Summary.csv`: Statistical test summary
- `cleaned_sales.csv`: Dataset used for the analysis

## Business Recommendations
1. Reward and retain High Value Recent customers.
2. Re-engage At Risk High Value customers with personalized campaigns.
3. Develop suitable win-back campaigns for inactive customers.
4. Focus on the Electronics category and study Patna's sales performance.
5. Use customer behaviour and sales trends to guide decisions.
6. Avoid making gender-based marketing assumptions from this test alone.
7. Monitor sales and customer segments regularly.

## How to Reproduce the Hypothesis Test
1. Install the required libraries: `pip install pandas numpy scipy jupyter`.
2. Keep `cleaned_sales.csv` in the same folder as `Hypothesis_Testing.ipynb`, or update the CSV path in the notebook.
3. Open the notebook in Jupyter Notebook or VS Code.
4. Run the cells in order to load the data, prepare the test dataset, run Welch's t-test, calculate the confidence interval, and export the summary.

## Conclusion
This project demonstrates how sales analytics, customer segmentation, and statistical testing can support evidence-based business decisions. The findings point to opportunities in customer retention, re-engagement, and category-focused sales planning.

## Author
**Rohit Singh**  
MCA Final-Year Student | Aspiring Data Analyst
