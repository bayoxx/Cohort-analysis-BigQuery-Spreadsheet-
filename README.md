### **Project Title**: **Cohort Analysis for Weekly Subscription Retention**

**Objective**: 
To analyze subscription churn and retention patterns on a weekly basis to identify early indicators of customer behaviour and potential areas for improvement. This analysis aims to provide actionable insights that can enhance customer retention and reduce churn.

**Background**:
The Product Manager raised concerns that monthly retention analysis might overlook critical trends, potentially missing valuable insights. Therefore, a weekly cohort analysis was conducted to monitor how many subscribers remained active each week from the start of their subscription up to six weeks.

**Data Source**:
The analysis was performed using the `subscriptions` table in BigQuery, focusing on subscription data up to February 7, 2021.

**Methodology**:
1. **Data Extraction**: 
   - A SQL query was written to extract relevant subscription data from BigQuery.
   - Weekly cohorts were formed based on the subscription start date, covering the period from November 1, 2020, to January 24, 2021.
   - Retention was tracked for each cohort from week 0 to week 6.

2. **Analysis & Visualization**:
   - The data was visualized using Googlesheet to highlight retention rates for each cohort week over week.
   - Conditional formatting was used to distinguish high-performing cohorts from those with declining retention.

**Insights**:
1. **High Initial Retention**: Customer retention is consistently strong in week one across all cohorts, indicating successful early engagement.
2. **Declining Retention in Early Cohorts**: The first five cohorts (2020-11-01 to 2020-11-29) showed a significant drop in retention from week 3 to week 6, suggesting potential issues during the later stages of engagement.
3. **Best-Performing Cohorts**: Cohorts starting on 2020-12-20 and 2020-12-27 exhibited the highest retention rates, maintaining strong engagement through week 6.
4. **Strong Performance in Recent Cohorts**: Cohorts from 2021-01-03, 2021-01-10, 2020-12-13, and 2021-01-17 also performed well, closely following the top-performing cohorts.

**Recommendations**:
1. **Enhance Onboarding and Early Engagement**: Leverage the strong week one retention by optimizing the onboarding process and early user engagement strategies.
2. **Investigate Churn Factors**: Analyze the reasons behind the declining retention in the first five cohorts (from 2020-11-01 to 2020-11-29) and address any identified issues.
3. **Reintroduce Successful Strategies**: Implement strategies that contributed to the high retention rates in the top-performing cohorts across other segments.
4. **Personalized Customer Communication**: Improve customer communication with personalized messages and follow-ups to encourage continued engagement.
5. **Continuous Testing and Optimization**: Regularly test and refine services based on ongoing analysis to maintain high retention rates.

**Tools Used**:
- **BigQuery** for data extraction and SQL queries.
- **Googlesheet** for data visualization and analysis.

- This is the link to my [spreadsheet](https://docs.google.com/spreadsheets/d/1A_e-q5ZDMOiVWtaCWS6qksyWw9kA3Ub9QLvAyuV8Vtc/edit?gid=0#gid=0). The spreadsheet shows my **dashboard**, **the data and my workings**, **insights**, and **recommendations**. 

Note: *I have also attached the .sql file to this repository*. You can also check the SQL Query [here](https://github.com/bayoxx/Cohort-analysis-BigQuery-Spreadsheet-/blob/main/weekly%20retention%20and%20cohort.sql)

This project demonstrates the application of cohort analysis to provide actionable insights into customer retention, showcasing the ability to identify patterns and recommend strategic improvements.
