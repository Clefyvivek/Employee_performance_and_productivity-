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
- Trends Over Time: Analyzing changes if dates exist (e.g., hire date, review periods).

### Key Takeaway:

The company exhibits **structural imbalances**: hiring contraction and reduced resignations mask deeper issues in workload distribution, pay‑for‑performance alignment, and managerial capability; targeted interventions in workforce planning, compensation design, and training will improve productivity and equity.

### Key Insights (2020–2024 Workforce Analysis):
| Metric / Trend | Headline Insight | Implication | Query Results |
| -------------- | ---------------- | ----------- | ------ |
| **−32% hiring (2022→2024)** | Sharp contraction in workforce | Signals cost-cutting or slowed growth; risk of capability gaps | <img width="202" height="156" alt="image" src="https://github.com/user-attachments/assets/6549f7f6-132c-4215-97c9-ee8624a215b2" />|
| **−34.6% resignations (2023→2024)** | Attrition declined despite hiring freeze | Suggests retention measures or limited external opportunities | <img width="193" height="168" alt="image" src="https://github.com/user-attachments/assets/04795ed6-305a-4091-94d7-acb2929a45ae" /> |
| **4,455 female hires (2022)** | Female hiring peaked post‑COVID | Strong DEI momentum; Operations led with 588 female hires | <img width="265" height="157" alt="image" src="https://github.com/user-attachments/assets/3777b610-b968-4319-91b7-3db3039b85ba" /> |
| **Avg satisfaction 3/5** | Engagement flat across stayers/leavers | Satisfaction not predictive of churn; deeper drivers need analysis | <img width="285" height="161" alt="image" src="https://github.com/user-attachments/assets/f418bf8c-694d-4037-92e9-57763eaabc39" /> |
| **Pay vs hours anomalies** | High pay with low hours; low pay with high hours | Compensation misalignment; fairness and productivity concerns | <img width="603" height="450" alt="image" src="https://github.com/user-attachments/assets/c17aa3d1-a438-4778-9eb8-34d12eb320ff" /> |
| **$7.62M salaries (Ops, 2022)** | Operations is cost center | Budget allocation review needed; peak spend in one department | <img width="330" height="257" alt="image" src="https://github.com/user-attachments/assets/da32eafc-61a5-48e2-a643-5c16e61f1bd4" /> |
| **62 employees with 99 training hrs** | Training linked to top performance | Evidence for scaling structured training programs | <img width="421" height="350" alt="image" src="https://github.com/user-attachments/assets/26073f1c-467a-45fb-8f1e-e4651dea65ce" /> |
| **1,197 promotions (Ops, 2021)** | Promotions concentrated in Operations | Career progression uneven; risk of morale issues elsewhere | <img width="545" height="405" alt="image" src="https://github.com/user-attachments/assets/c17f09de-a6d9-4199-9b14-1a7368cb4f64" /> |


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

### Key Imapact:

These recommendations strengthen fairness, efficiency, and resilience across the workforce. By aligning pay with performance, balancing workloads, and investing in leadership development, the company can reduce risks of burnout, inequity, and capability gaps while building a sustainable talent pipeline.


### Limitations and Next Steps:
- Data is limited for 2024 for employees 
- No resignation date column in the dataset
- Future: Integrate Python/Tableau for interactive dashboards or ML predictions.

### How to Run:
- Clone the repository 
- Import the database
- Explore the data
- Key insights
- That's it! You should now have a fully populated database ready for querying and further exploration.
Feel free to modify the queries or extend the analysis. Contributions and suggestions are welcome!

### About Me: 

Data Analyst, passionate about sustainable finance. Connect on [LinkedIn](https://www.linkedin.com/in/vivek-sharma-b74950241/) | View more projects [here](https://github.com/Clefyvivek). Thanks for visiting!




