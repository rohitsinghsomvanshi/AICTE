## 4. Key Business Findings

### A. Data Quality Findings
- The original dataset contained 1,003 rows and 18 columns.
- Three records had missing Gender and Total_Sales values.
- Duplicate Order IDs were identified and investigated.
- A cleaned dataset was prepared for further analysis.

### B. Sales Performance Findings
- Total Sales reached approximately ₹139.40 million.
- Total Units Sold were 5,435.
- A total of 947 unique customers were identified.
- Electronics was the highest contributing category, accounting for approximately 36.43% of sales.
- Patna recorded the highest sales among the displayed cities, at approximately ₹19.3 million.

### C. Customer Segmentation Findings
- A total of 947 customers were analyzed using the RFM model.
- Customers were classified into five segments.
- Inactive Low Value was the largest segment, with 232 customers.
- High Value Recent contributed approximately ₹44 million in revenue.
- At Risk High Value contributed approximately ₹39 million in revenue.

### D. Statistical Validation Findings
- Welch's Independent Two-Sample T-Test was performed to compare Male and Female order-level sales.
- Male average sales: ₹141,807.34.
- Female average sales: ₹136,883.21.
- T-statistic: 0.6826.
- P-value: 0.4950.
- 95% Confidence Interval: -₹9,231.58 to ₹19,079.85.

The p-value was greater than the 0.05 significance level. Therefore, the null hypothesis was not rejected. The analysis did not find sufficient statistical evidence of a difference in average sales between Male and Female records.

## 5. Business Recommendations

Based on the sales analysis, customer segmentation, and statistical findings, the following business recommendations are proposed:

### 1. Focus on High-Value Customers
- Provide loyalty rewards and exclusive offers to High Value Recent customers.
- Encourage repeat purchases through personalized promotions.

### 2. Retain At-Risk Customers
- Identify At Risk High Value customers.
- Launch targeted offers, personalized emails, and re-engagement campaigns.
- Monitor customer purchasing activity regularly.

### 3. Improve Inactive Customer Engagement
- Develop special campaigns to encourage inactive customers to purchase again.
- Understand the reasons behind reduced customer activity.

### 4. Strengthen Sales Performance
- Focus on high-performing product categories such as Electronics.
- Study sales patterns across cities to identify opportunities for improvement.
- Monitor monthly sales performance to support business planning.

### 5. Use Data-Driven Marketing
- Avoid assuming that Male and Female customers have different average sales based on this analysis.
- Use additional customer behaviour and preference data before designing gender-specific campaigns.

## 6. Conclusion

This project demonstrates how data analytics can help businesses understand sales performance and customer purchasing behaviour.

By combining data cleaning, exploratory data analysis, SQL analysis, RFM-based customer segmentation, and statistical hypothesis testing, meaningful business insights were developed.

The statistical test did not find sufficient evidence of a significant difference in average sales between Male and Female order records.

Customer segmentation revealed opportunities to improve customer retention, strengthen high-value customer relationships, and re-engage inactive customers.

## 7. Call to Action

The business should prioritize customer retention, develop targeted marketing strategies for different customer segments, and continuously monitor sales and customer performance through interactive dashboards.

Future analysis should include more historical sales data and customer-level behavioural information to improve business decisions.