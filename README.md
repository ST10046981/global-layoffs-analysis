# Global Layoffs Data Analysis — SQL & Power BI

## 📌 Project Overview

This project explores a dataset containing information about company layoffs across different countries, cities, industries, companies, funding stages, dates, and funding amounts.

The project was created as a practical exercise to develop and demonstrate skills in **SQL data analysis, database management, data cleaning, Power BI, data visualization, and business intelligence**.

The analysis focuses on understanding the scale, severity, geographical distribution, and potential patterns surrounding company layoffs.

The project is divided into several analytical sections, with SQL being used to query and investigate the dataset and Power BI being used to transform those findings into interactive dashboards.


# 📊 Dataset

The project uses a layoffs dataset containing information such as:

- Company
- Location
- Industry
- Total employees laid off
- Percentage of employees laid off
- Layoff date
- Company stage
- Funds raised
- Country

The dataset contains both numerical and categorical information, allowing the analysis to investigate layoffs from multiple perspectives.


# 🗄️ Database & SQL

The dataset was imported into **Microsoft SQL Server** and stored as a relational table.

SQL was used to explore the dataset, answer initial business questions, validate calculations, and investigate patterns before creating the Power BI dashboards.

A SQL script containing the queries used for the initial analysis is included in the repository.

A separate database/table creation script will also be included to allow the dataset structure to be recreated.


## SQL Analysis — Level 1

The first stage of the analysis focused on basic business questions surrounding the scale of layoffs.

### Questions explored:

1. **How many employees have been laid off in total?**
2. **How many distinct companies have recorded layoffs?**
3. **Which industries have experienced the most layoffs?**
4. **Which countries have experienced the most layoffs?**
5. **Which companies have laid off the most employees?**

These questions were used to practice SQL aggregation, filtering, grouping, sorting, and distinct counting.

### SQL Skills Used

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `SUM()`
- `COUNT()`
- `COUNT(DISTINCT)`
- Aggregate functions
- Filtering NULL values
- Data validation
- Basic exploratory data analysis


# 📈 Power BI Dashboard

The Power BI portion of the project expands on the SQL analysis and focuses on turning the dataset into interactive business intelligence reports.

The dashboards were designed around business questions rather than simply displaying raw statistics.


# Page 1 — Initial Layoff Analysis

The first Power BI page focuses on the initial Level 1 business questions explored through SQL.

The dashboard provides an overview of the overall scale of layoffs and allows comparisons between companies, industries, and countries.

The purpose of this page is to establish a basic understanding of the dataset before moving into more detailed analysis.

### Business Questions

- How many employees have been laid off?
- How many companies have recorded layoffs?
- Which industries have experienced the most layoffs?
- Which countries have experienced the most layoffs?
- Which companies have experienced the largest number of layoffs?

### Skills Demonstrated

- Power BI data import
- Data modeling
- Aggregation
- Distinct counting
- Filtering
- Sorting
- KPI/Card visuals
- Bar and column charts
- Basic dashboard design
- Translating SQL analysis into Power BI

<img width="1310" height="736" alt="Screenshot 2026-08-12 152319" src="https://github.com/user-attachments/assets/8739c790-eced-41cb-b31f-05b6319f1762" />


# Page 2 — Layoff Severity & Country Analysis

This dashboard focuses on understanding **layoff severity across countries** and investigating the difference between typical and extreme company-level layoffs.

The dashboard compares the **median and average percentage of employees laid off** across countries.

A scatter plot is used to identify countries where the average layoff percentage is substantially higher than the median. These differences can indicate that a small number of companies experienced exceptionally severe layoffs, causing the country's average to increase.

A map visualization is also used to display the median percentage of layoffs across countries.

A company-level table allows the selected country from the analysis to be investigated further.

## Example Insight

For example, Singapore displayed a median layoff rate of approximately 12% while its average was approximately 27%.

Further investigation showed that several companies had reported layoffs affecting 100% of their workforce. However, some of these companies had relatively small workforces.

Another company had a lower layoff percentage but affected approximately 1,500 employees.

This highlighted an important distinction between:

### Layoff Severity vs Employment Impact

A company laying off 100% of its workforce represents an extremely severe reduction relative to that company's size, but may affect relatively few people.

Conversely, a company laying off 25% of its workforce may affect thousands of employees and therefore have a much greater absolute employment impact.

The dashboard allows users to investigate both perspectives rather than relying on a single metric.

### Business Questions

- Which countries have the highest median layoff percentages?
- Which countries have a large difference between their average and median layoff percentages?
- Which companies are contributing to unusually high layoff averages?
- Are extreme layoff percentages affecting relatively small or large numbers of employees?
- How does layoff severity differ from overall employment impact?

### Skills Demonstrated

- Median vs average analysis
- Outlier investigation
- Scatter plot analysis
- Interactive filtering
- Cross-filtering between Power BI visuals
- Map visualizations
- Company-level drill-down analysis
- Comparing relative and absolute metrics
- Analytical interpretation
- Identifying patterns and anomalies
- Data storytelling

<img width="1315" height="737" alt="Screenshot 2026-08-12 152350" src="https://github.com/user-attachments/assets/bcf650b7-90a6-4c15-9377-7f7e951a05e7" />


# 🌍 Page 3 — Layoff Hotspots & Interactive Exploration

The third dashboard is designed as an **open-ended exploratory analysis page** rather than focusing on one specific business question.

The dashboard identifies the largest layoff hotspots across:

- Countries
- Cities
- Industries
- Companies

Each category displays the **Top 15** based on the total number of employees laid off.

Interactive slicers allow users to further investigate the dataset by:

- Company stage
- Country
- Date

This allows the dashboard to answer a wide range of business questions depending on the filters selected.

### Example Business Questions

- Which countries experienced the highest number of layoffs during a particular period?
- Which cities are most affected within a selected country?
- Which industries experienced the greatest number of layoffs?
- Which companies contributed the most layoffs within a specific period?
- How does the distribution of layoffs change between different company stages?
- Are particular industries or companies responsible for a large proportion of layoffs within a selected country?
- How do layoff hotspots change over time?

The page is intended to allow users to **filter, compare, and investigate the data from multiple perspectives**.

### Key Visualizations

- Top 15 Countries by total employees laid off
- Top 15 Cities by total employees laid off
- Top 15 Industries by total employees laid off
- Top 15 Companies by total employees laid off
- Interactive country slicer
- Interactive company stage slicer
- Interactive date slicer

### Important Metric Consideration

The rankings on this page are based on the **absolute number of employees laid off** rather than the percentage of a company's workforce affected.

Therefore, this page primarily investigates:

> **Layoff concentration and employment impact**

rather than:

> **Layoff severity relative to company size**

This distinction is important when interpreting the results.

### Skills Demonstrated

- Interactive dashboard development
- Data visualization
- Bar chart design
- Slicers
- Cross-filtering
- Top N analysis
- Time-based filtering
- Geographic analysis
- Industry analysis
- Company analysis
- Business question development
- Data storytelling

<img width="1313" height="739" alt="Screenshot 2026-08-12 152408" src="https://github.com/user-attachments/assets/ae736851-242f-4103-886c-3919ae597fe3" />


# 🧠 Key Analytical Concepts

Throughout the project, particular attention was given to the difference between several metrics.

## Average vs Median

The average percentage of layoffs can be heavily influenced by companies experiencing extremely large workforce reductions.

The median provides a better representation of the typical company when extreme values are present.

Comparing both metrics can therefore reveal whether a country's average layoff percentage is being influenced by a small number of unusually severe cases.

## Percentage Laid Off vs Total Laid Off

These metrics represent different aspects of the data.

**Percentage laid off** measures the severity of the workforce reduction relative to the company.

**Total laid off** measures the absolute number of employees affected.

Using both metrics provides a more complete understanding of the impact of layoffs.


# 🛠️ Tools & Technologies

### Database & SQL

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL

### Data Visualization & Business Intelligence

- Microsoft Power BI
- Power BI Desktop

### Data Sources & Supporting Tools

- CSV
- Excel


# 💡 Skills Demonstrated

This project was created to develop practical skills relevant to a **Junior Data Analyst / Business Intelligence** role.

### SQL

- Data querying
- Filtering
- Aggregation
- Grouping
- Sorting
- Distinct counting
- NULL handling
- Data validation
- Relational database management

### Power BI

- Data importing
- Data transformation
- Data modeling
- KPI cards
- Bar charts
- Column charts
- Scatter plots
- Maps
- Tables
- Slicers
- Interactive filtering
- Cross-filtering
- Top N analysis
- Dashboard design

### Data Analysis

- Exploratory data analysis
- Descriptive statistics
- Average vs median comparison
- Outlier investigation
- Trend analysis
- Geographic analysis
- Industry analysis
- Company-level analysis
- Relationship analysis
- Relative vs absolute metrics
- Business question development

### Business Intelligence

- Translating business questions into analytical queries
- Selecting appropriate visualizations
- Identifying patterns and anomalies
- Interpreting data
- Communicating findings
- Building interactive reports
- Data storytelling

Note: If you choose to load up the layoffs.csv file on a platform like SSMS, you might need to change your commas to periods in your windows settings
Settings → Time & language → Language & region → Region format → Number format -> decimal
