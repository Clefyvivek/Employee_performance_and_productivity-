# Employee_performance_and_productivity

## Executive Summary: 
- **Workforce contraction**: Hiring fell sharply (−32%), while resignations also declined, indicating constrained growth rather than improved retention.
- **Compensation anomalies**: Pay and workload are misaligned, with some employees overworked at low pay, and others underworked at high pay.
- **Operational hotspots**: Operations and IT departments dominate salary spend, promotions, and overtime, creating concentration risks.
- **Talent development**: Training correlates strongly with performance, but inexperienced young managers highlight leadership gaps.
- **Strategic priorities**: Address pay equity, rebalance workload, and expand structured training to retain high performers and build sustainable leadership pipelines.



### Goals:
- Performance Distribution and Top/Bottom Performers (rankings based on department, job title, ratings, etc)
- Productivity Metrics: Projects completed per employee, hours worked vs. output (e.g., sales/targets), or productivity score (output/hours). 
- Correlation Between Factors and Performance/Productivity.
- Demographic Insights (Diversity and Equity)
- Absenteeism and Engagement, Track attendance and satisfaction.
- Trends Over Time Analyzing changes if dates exist (e.g., hire date, review periods).

### Key Takeaway:

The company exhibits **structural imbalances**: hiring contraction and reduced resignations mask deeper issues in workload distribution, pay‑for‑performance alignment, and managerial capability; targeted interventions in workforce planning, compensation design, and training will improve productivity and equity.

### Key Insights (2020–2024 Workforce Analysis):
| Metric / Trend | Headline Insight | Implication |
| -------------- | ---------------- | ----------- |
| **−32% hiring (2022→2024)** | Sharp contraction in workforce | Signals cost-cutting or slowed growth; risk of capability gaps |
| **−34.6% resignations (2023→2024)** | Attrition declined despite hiring freeze | Suggests retention measures or limited external opportunities | 
| **4,455 female hires (2022)** | Female hiring peaked post‑COVID | Strong DEI momentum; Operations led with 588 female hires | 
| **Avg satisfaction 3/5** | Engagement flat across stayers/leavers | Satisfaction not predictive of churn; deeper drivers need analysis |
| **Pay vs hours anomalies** | High pay with low hours; low pay with high hours | Compensation misalignment; fairness and productivity concerns |
| **$7.62M salaries (Ops, 2022)** | Operations is cost center | Budget allocation review needed; peak spend in one department | 
| **62 employees with 99 training hrs** | Training linked to top performance | Evidence for scaling structured training programs |
| **1,197 promotions (Ops, 2021)** | Promotions concentrated in Operations | Career progression uneven; risk of morale issues elsewhere |

- [For more detailed key insights ](Detailed_Key_Insights.md)

### Data & Modeling:
- Dataset: employee_performance_and_productivity (47,198 rows) covering the company departments, employees' performance scores, projects handled, Training hours, etc.
- Tools: MySQL CASE expression, SQL VIEW, JOIN statement, aggregations (SUM, COUNT, AVG, MIN, MAX ), ALTER TABLE (ADD), Data Manipulation Language (MODIFY), Numeric function (ROUND), etc.
- Approach: corrected the date column after getting the irregular date results when queried, applied a VIEW to refer for productivity comparison calculations. Compared employees in various performance and productivity aspects. 

### Sample SQL Highlights:  -- Employees with top performance scores in various departments with 4 or more years at work

                                                          
                                                          SELECT 
                                                           	Employee_ID,
                                                           	Department,
                                                              Job_Title,
                                                              Performance_Score
                                                          FROM employee_data
                                                          WHERE Years_At_Company >= 4
                                                          	AND Performance_Score = 5
                                                          	AND Resigned = 'FALSE'




### Recommendations Table: 
| Stakeholder | Recommended Action | Expected Impact |
|------------ | ------------------ | --------------- |
| **HR & Workforce Planning** | Implement targeted hiring in critical departments (Ops, IT) and design retention programs beyond pay (career growth, recognition). | Close capability gaps, stabilize headcount, improve long‑term retention. |
| **Compensation & Finance Teams** | Conduct a pay equity audit to resolve anomalies (high pay with low hours, low pay with high hours). Align compensation with workload and performance. | Fairer pay structures, stronger employee trust, improved productivity. |
| **Operations & Department Heads** | Redistribute workload to avoid over‑reliance on a few employees handling extreme project loads. Scale-structured training programs proven to boost performance. | Reduce burnout, increase efficiency, lift overall performance scores. |
| **Leadership Development** | Launch mentorship and leadership training for young/inexperienced managers. Standardize promotion criteria across departments. | Build a sustainable leadership pipeline, improve morale, and ensure fair career progression. | 
| **Executive & Strategic Oversight** | Review budget allocation in cost‑heavy departments (Ops $7.62M salaries). Introduce wellness programs to reduce sick leave and monitor overtime hotspots in IT. | Optimize costs, improve employee well-being, reduce absenteeism, and overtime dependency. |

### Limitations and Next Steps:
- Data is limited for August 2024 for employees 
- 
-

### How to Run:
- Clone the repository 
- Import the database
- Explore the data
- Key insights
- That's it! You should now have a fully populated database ready for querying and further exploration.
Feel free to modify the queries or extend the analysis. Contributions and suggestions are welcome!

About Me: Data Analyst, passionate about sustainable finance. Connect on [LinkedIn](www.linkedin.com/in/vivek-sharma-b74950241) | View more projects [here]. Thanks for visiting!




