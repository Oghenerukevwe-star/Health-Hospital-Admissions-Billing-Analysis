# Health-Hospital-Admissions-Billing-Analysis
### A Data Analytics Project Using Excel, SQL Server, and Power BI

## 📌 Project Overview
An end-to-end data analytics project involving hospital admissions and billing data. The dataset initially contained **55,500 records**; I cleaned it in Microsoft Excel by removing duplicates, resulting in **49,000 records** for analysis.

I used SQL Server to query the cleaned dataset and answer eight business questions, and Power BI to develop an interactive dashboard exploring patient admissions, billing costs, length of hospital stay, and the distribution of medical test results.


## 📊 Key Metrics at a Glance

| Total Admissions | Avg. Length of Stay | Average Billing per Patient | Total Billing | Cost per Day |
|:---:|:---:|:---:|:---:|:---:|
| *49,999* | *15.50* | *$25,605.65* | *$1.28bn* | *$1,651.95* |

## 📑 Table of Contents

1. [Introduction](#1-introduction)
2. [Data Description](#2-data-description)
3. [Methodology](#3-methodology)
4. [SQL Analysis](#4-sql-analysis)
6. [Data Model and DAX Measures](#6-data-model-and-dax-measures)
7. [Dashboard and Analysis](#7-dashboard-and-analysis)
8. [Key Insights](#8-key-insights)
9. [Recommendations](#9-recommendations)
10. [Limitations](#10-limitations)
11. [Conclusion](#11-conclusion)
12. [Author](#12-author)


## 1. Introduction

### Background and Context

Every hospital admission creates a record, but those records tell a much bigger story than the number of patients treated. They capture how patients access healthcare, the conditions for which they are admitted, the length of their hospital stays, the diagnostic tests they undergo, and the financial costs of their treatment.
Together, these records can reveal patterns in hospital utilisation, patient admissions, and billing activities that might otherwise go unnoticed.

This project explores those patterns through an analysis of hospital admissions and billing data, shifting the focus from individual patient records to a broader view of hospital activity and financial performance.

### Purpose of the Study

The objective of this project was to investigate what the hospital data reveals about patient admissions, billing costs, length of stay, and medical test results, using data analytics to answer eight business questions.

The analysis began with **55,501 records**, which were examined and cleaned in Microsoft Excel, resulting in a final dataset of **50,000 records**.

SQL Server Management Studio (SSMS) was then used to investigate the dataset and answer the eight business questions. Finally, Power BI was used to develop an interactive dashboard that brings the findings together and makes the results easier to explore and interpret.

*Tools Used:*

- *Microsoft Excel:* Data cleaning, preparation, and initial exploration.
- *SQL Server Management Studio (SSMS):* Data querying, aggregation, and business analysis.
- *Power BI:* Data modelling, DAX calculations, and interactive visualisation.


## 2. Data Description

### Dataset Source & Overview

The dataset used for this analysis was obtained from Kaggle:

**[Healthcare Dataset – Prasad Patil](https://www.kaggle.com/datasets/prasad22/healthcare-dataset)**

The dataset contains patient demographics, medical conditions, hospital admission details, billing information, medication records, and test results.

The original dataset consisted of *55,500 records* and 15 columns. Following data cleaning and duplicate removal in Microsoft Excel, the dataset was reduced to *49,000 records*, which formed the basis for the subsequent SQL analysis and Power BI dashboard development.

### Dataset Variables

The dataset initially contained 15 columns covering patient demographics, medical conditions, hospital information, admission details, and billing records. 

During data preparation, two additional columns were created to support further analysis:

| Column | Description |
|:---|:---|
| Name | Patient's name |
| Age | Patient's age |
| Gender | Patient's gender |
| Blood Type | Patient's blood group |
| Medical Condition | Medical condition associated with the patient |
| Date of Admission | Date the patient was admitted |
| Doctor | Name of the attending doctor |
| Hospital | Name of the hospital |
| Insurance | Health insurance provider |
| Billing Amount | Total amount billed for the patient's admission |
| Room Number | Room assigned to the patient |
| Admission Type | Classification of admission (Emergency, Urgent, or Elective) |
| Discharge Date | Date the patient was discharged |
| Medication | Medication prescribed to the patient |
| Test Results | Outcome of the patient's medical tests |
| Length of Stay | Number of days between admission and discharge |
| Age Group | Categorisation of patients into age groups |

### Derived Columns

Two additional columns were created during data preparation to support more detailed analysis.

**Length of Stay**: Calculated using the difference between the discharge date and admission date. This column supports the analysis of patient hospitalisation duration.

**Age Group**: Created by categorizing patients into different age ranges to facilitate demographic analysis and comparison of admission patterns across age groups.

### Key Statistics

| Statistic | Value |
|:---|---:|
| Original Records | 55,500 |
| Final Records | 49,999 |
| Original Columns | 15 |
| Final Columns | 17 |
| Records Removed | 5,501 |
| Date Range | 1 to 30 days |
| Number of Hospitals | 38,079 |
| Number of Medical Conditions | 6 |
| Total Billing Amount | 1.28bn |


### Data Quality

Data quality checks and preparation were carried out in Microsoft Excel before the dataset was imported into SQL Server for analysis. The following checks and actions were performed:

* Duplicate records: Identified and removed 5,501 duplicate entries by comparing records across all 15 original columns, reducing the dataset from 55,501 to 50,000 unique records.
* Data consistency: Reviewed key fields, including patient demographics, admission and discharge dates, billing amounts, and medical information.
* Derived variables: Created two additional analytical columns, Length of Stay and Age Group, increasing the dataset from 15 to 17 columns.

After removing duplicate records, the prepared dataset contained 50,000 records and 17 columns. It was subsequently used for SQL analysis and Power BI dashboard development.

3. ## Methodology

| Stage | Tool | Activities |
|---|---|---|
| 1 | *Microsoft Excel* | Imported and inspected the original 55,501 records; identified and removed 5,501 duplicate records across the 15 original columns; reviewed data consistency; and created two derived variables: Length of Stay and Age Group. The prepared dataset contained 50,000 records and 17 columns. |
| 2 | *SQL Server (SSMS)* | Analysed eight business questions using SQL clauses and functions, including SELECT, FROM, WHERE, GROUP BY, ORDER BY, and CAST. Applied aggregate functions such as COUNT(), SUM() and AVG() to examine admission volumes, billing amounts and other relevant metrics. |
| 3 | *Power BI* | Developed an interactive dashboard using data modelling, DAX and visualisation techniques. Incorporated KPI cards, charts and interactive filters to explore patient admissions, billing patterns, length of stay and test result distributions. |


## 4. SQL Analysis
The cleaned dataset, containing 50,000 records and 17 columns, was imported into SQL Server for further analysis using SQL Server Management Studio (SSMS).

The analysis was guided by eight business questions designed to examine patient admission patterns, billing distribution, hospital activity, length of stay, and clinical test results.

### 4.1 Business Questions

| No. | Business Question | Analytical Objective |
|---:|---|---|
| 1 | How many admissions are there per medical condition, and which condition is most common? | Identify the frequency of admissions across medical conditions and determine the most common condition. |
| 2 | What is the average and total billing amount per medical condition? | Compare the average and cumulative billing amounts associated with each medical condition. |
| 3 | What is the average length of stay per admission type (Emergency, Elective, Urgent)? | Examine differences in patient hospitalisation duration across admission types. |
| 4 | Which insurance provider covers the highest total billing? | Determine which insurance provider accounts for the largest cumulative billing amount. |
| 5 | Which 10 hospitals have the highest total billing? | Rank hospitals according to their total recorded billing amounts and identify the top 10. |
| 6 | How do admissions trend by year and month? | Examine changes in admission volumes over time to identify temporal patterns and trends. |
| 7 | What share of test results are Normal, Abnormal, and Inconclusive per medical condition? | Examine the distribution of test result categories across different medical conditions. |
| 8 | Which age group has the highest average billing? | Compare average billing amounts across patient age groups to identify the highest-billing group. |

### 4.2 SQL Query Implementation

The eight business questions were investigated using SQL queries in SQL Server Management Studio (SSMS). Different SQL clauses and aggregate functions were applied to filter, group, sort, and summarise the data.

The queries focused on extracting relevant information from the dataset and identifying patterns in patient admissions, medical conditions, billing amounts, hospital activity, and clinical test results.

#### Question 1: Admissions per Medical Condition

*Business Question:* How many admissions are there per medical condition, and which condition is most common?

SELECT
    Medical_Condition,
    COUNT(*) AS AdmissionCounts
FROM [Pjt (health)]
WHERE Medical_Condition IS NOT NULL
GROUP BY Medical_Condition
ORDER BY AdmissionCounts DESC;

*Query Explanation:*

- SELECT: Retrieves the medical condition and its corresponding admission count.
- COUNT(*): Counts the number of records associated with each medical condition.
- FROM: Specifies [Pjt (health)] as the source table.
- WHERE: Excludes records with missing medical condition values.
- GROUP BY: Groups records according to their medical condition.
- ORDER BY DESC: Sorts the results from the highest admission count to the lowest.

*Analytical Objective:*

To identify the frequency of hospital admissions across different medical conditions and determine which conditions account for the highest number of recorded admissions.

*Query Results:*

The query returned admission counts across the different medical conditions, ranked from highest to lowest.

*Key Findings:*

- *Arthritis* recorded the highest number of admissions, with 8,439 records.
- *Asthma* recorded the lowest number of admissions, with 8,272 records.

The results show that the difference between the highest and lowest admission counts was 167 records, indicating a relatively narrow distribution of admissions across these two conditions.

#### Question 2: Average and Total Billing per Medical Condition

*Business Question:* What is the average and total billing amount per medical condition?

SELECT
    Medical_Condition,
    CAST(AVG(Billing_Amount) AS DECIMAL(18,2)) AS AverageBilling,
    CAST(SUM(Billing_Amount) AS DECIMAL(18,2)) AS TotalBilling
FROM [Pjt (health)]
WHERE Medical_Condition IS NOT NULL
AND Billing_Amount >= 0
GROUP BY Medical_Condition
ORDER BY TotalBilling DESC;

*Query Explanation:*

SELECT: Retrieves each medical condition alongside its average and total billing amounts.
AVG(Billing_Amount): Calculates the average billing amount for each medical condition.
SUM(Billing_Amount): Calculates the cumulative billing amount associated with each medical condition.
CAST(... AS DECIMAL(18,2)): Formats the average and total billing amounts to two decimal places.
FROM: Specifies Pjt (health) as the source table.
WHERE: Excludes records with missing medical condition values.
GROUP BY: Groups records according to their medical condition before calculating the average and total billing.
ORDER BY DESC: Sorts the results by total billing, from the highest to the lowest.

*Analytical Objective:*
To compare the average and cumulative billing amounts across different medical conditions and identify which conditions account for the highest overall billing.

*Query Results:*
The query returned the average and total billing amounts for each medical condition, ranked according to total billing.

*Key Findings:*

The query returned the average and total positive billing amounts for the six medical conditions, excluding records with negative billing values.

- *Diabetes* recorded the highest total billing of $215,093,967.17.
- *Arthritis* followed with $215,083,225.47.
- *Obesity* recorded $213,809,775.59 in total billing.
- *Cancer* had the lowest total billing of $209,273,154.49.
- *Diabetes* accounted for the highest cumulative billing, while the results placed Cancer at the lowest.

Overall, the findings show that Diabetes accounted for the highest cumulative billing among the six medical conditions after excluding negative billing records.


#### Question 3: Average Length of Stay per Admission Type

*Business Question:* What is the average length of stay per admission type (Emergency, Elective, Urgent)


SELECT Admission_Type,
       CAST(
           AVG(TRY_CAST([Days_in_Admission] AS DECIMAL(10,2)))
           AS DECIMAL(10,2)
       ) AS AverageLengthOfStay
FROM [Pjt (health)]
WHERE Admission_Type IS NOT NULL
GROUP BY Admission_Type
ORDER BY AverageLengthOfStay;

*Query Explanation:*
SELECT: Retrieves each admission type alongside its average length of stay.
TRY_CAST([Days_in_Admission] AS DECIMAL(10,2)): Converts the Days_in_Admission values from NVARCHAR (text) to decimal numbers so they can be used in numerical calculations. Values that cannot be converted return NULL.
AVG(): Calculates the average length of stay for each admission type using the converted numerical values.
CAST(... AS DECIMAL(10,2)): Formats the calculated average length of stay to two decimal places.
AS AverageLengthOfStay: Assigns a descriptive name to the calculated average column in the query results.
FROM: Specifies [Pjt (health)] as the source table.
WHERE: Excludes records with missing admission type values.
GROUP BY: Groups records according to their admission type (Emergency, Elective, and Urgent) before calculating the average length of stay.
ORDER BY: Sorts the results by average length of stay, from the lowest to the highest.

*Analytical Objective:*
To compare the average length of hospital stay across different admission types and identify which admission category has the longest average patient stay.

*Query Results:*
The query returned the average length of stay for each admission type, ranked from the lowest to the highest average duration.

*Key Findings:*
Emergency admissions recorded the highest average length of stay at 15.60 days.
Elective admissions followed with an average stay of 15.52 days.
Urgent admissions recorded the lowest average length of stay at 15.39 days.

Overall, the results show that Emergency admissions had the longest average hospital stay, while Urgent admissions had the shortest. However, the difference across the three admission types was relatively small, at just 0.21 days between the highest and lowest averages.

#### Question 4: Insurance Provider With The Highest Total Billing

*Business Question:* Which insurance provider covers the highest total billing?

SELECT TOP 1
    Insurance_Provider,
    SUM(Billing_Amount) AS TotalBilling
FROM [Pjt (health)]
WHERE Insurance_Provider IS NOT NULL
  AND Billing_Amount >= 0
GROUP BY Insurance_Provider
ORDER BY TotalBilling DESC;

*Query Explanation:*
SELECT TOP 1: Retrieves only the insurance provider with the highest total billing amount.
SUM(Billing_Amount): Calculates the cumulative billing amount associated with each insurance provider.
FROM: Specifies [Pjt (health)] as the source table.
WHERE: Excludes records with missing insurance provider values and negative billing amounts to focus on positive billing records.
GROUP BY: Groups records according to their insurance provider before calculating the total billing amount.
ORDER BY DESC: Sorts the results by total billing, from the highest to the lowest, ensuring that the provider with the highest total billing appears first.



*Analytical Objective:*
To compare the total billing amounts covered by different insurance providers and identify the provider with the highest cumulative billing.

*Query Results:*
The query returned one record, identifying the insurance provider with the highest total billing after excluding negative billing amounts.

*Key Findings:* Medicare recorded the highest total billing of $257,754,174.81.
Overall, the findings show that Medicare accounted for the highest cumulative billing among the insurance providers in the dataset.


#### Question 5: Top 10 Hospitals With The Highest Total Billing

*Business Question:* Which 10 hospitals have the highest total billing?

SELECT TOP 10
    Hospital,
    SUM(Billing_Amount) AS TotalBilling
FROM [Pjt (health)]
WHERE Hospital IS NOT NULL
  AND Billing_Amount >= 0
GROUP BY Hospital
ORDER BY TotalBilling DESC;

*Query Explanation:*

SELECT TOP 10: Retrieves only the 10 hospitals with the highest total billing amounts.
SUM(Billing_Amount): Calculates the cumulative billing amount associated with each hospital.
FROM: Specifies [Pjt (health)] as the source table.
WHERE: Excludes records with missing hospital names and negative billing amounts to focus on positive billing records.
GROUP BY: Groups records according to their hospital names before calculating the total billing amount.
ORDER BY DESC: Sorts the results by total billing, from the highest to the lowest, ensuring that the 10 hospitals with the highest cumulative billing are returned.

*Query Results:*
The query returned the top 10 hospitals ranked according to their total billing amounts, excluding records with negative billing values.

*Key Findings:*
Smith Ltd recorded the highest total billing of $1,812,861.63.
Smith LLC ranked second with $1,563,270.47.
Smith PLC followed with $1,519,573.20.
Brown Inc ranked fourth with $1,507,516.89.
Johnson PLC recorded $1,390,627.15.
Smith Inc ranked sixth with $1,350,709.35.
Johnson Inc followed with $1,348,487.63.
Johnson LLC recorded $1,300,312.51.
Williams LLC ranked ninth with $1,265,223.05.
Johnson Ltd recorded the lowest total billing among the top 10 hospitals, at $1,157,531.44.
Overall, Smith Ltd recorded the highest cumulative billing among the hospitals analysed, while Johnson Ltd occupied the tenth position in the ranking.

#### Question 6: Admission Trend by Year and Month
*Business Question:* How do admissions trend by year and month?

SELECT
    YEAR(Date_of_Admission) AS AdmissionYear,
    MONTH(Date_of_Admission) AS AdmissionMonth,
    COUNT(*) AS AdmissionCount
FROM [Pjt (health)]
WHERE Date_of_Admission IS NOT NULL
GROUP BY
    YEAR(Date_of_Admission),
    MONTH(Date_of_Admission)
ORDER BY
    AdmissionYear ASC,
    AdmissionMonth ASC;

*Query Explanation:*

SELECT: Retrieves the admission year, admission month, and corresponding number of admissions.
YEAR(Date_of_Admission): Extracts the year from each admission date to allow admissions to be analysed annually.
MONTH(Date_of_Admission): Extracts the month from each admission date to allow admissions to be analysed monthly.
COUNT(*): Counts the number of admission records within each year and month.
FROM: Specifies [Pjt (health)] as the source table.
WHERE: Excludes records with missing admission dates to ensure that only valid dates are included in the analysis.
GROUP BY: Groups admission records by both year and month, allowing the number of admissions to be calculated for each month within each year.
ORDER BY ASC: Sorts the results chronologically, starting with the earliest year and proceeding through each month.

*Query Results:*
The query returned the number of admissions recorded for each year and month, arranged in chronological order.

*Query Results:*
August 2020 recorded the highest monthly admission count, with 912 admissions.
October 2019 followed with 905 admissions.
July 2020 recorded 901 admissions, while August 2023 recorded 871 admissions.
Admission volumes generally remained within the range of 800–900 admissions per month across most of the observed period.
February generally recorded lower admission figures compared with several other months. The lowest February count was 693 admissions in 2022.
May 2024 recorded only 190 admissions, the lowest figure in the dataset provided.
Overall, the results suggest that hospital admissions remained relatively stable across the observed years, with most months recording between 800 and 900 admissions. However, the sharp decline to 190 admissions in May 2024 requires further investigation.

*Data Observation:* The dataset covers only May–December 2019 and January–May 2024, rather than complete calendar years. Also, the unusually low May 2024 figure may indicate incomplete monthly records. Therefore, yearly totals should not be compared directly without accounting for these differences.

#### Question 7: Distribution of Test Results by Medical Condition
*Business Question:* What share of test results are Normal, Abnormal, and Inconclusive per medical condition?

SELECT
    Medical_Condition,
    COUNT(*) AS TotalPatients,
    CAST(
        SUM(CASE WHEN Test_Results = 'Normal' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*) AS DECIMAL(10, 2)
    ) AS NormalPercentage,
    CAST(
        SUM(CASE WHEN Test_Results = 'Abnormal' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*) AS DECIMAL(10, 2)
    ) AS AbnormalPercentage,
    CAST(
        SUM(CASE WHEN Test_Results = 'Inconclusive' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*) AS DECIMAL(10, 2)
    ) AS InconclusivePercentage
FROM [Pjt (health)]
WHERE Medical_Condition IS NOT NULL
  AND Test_Results IS NOT NULL
GROUP BY Medical_Condition
ORDER BY Medical_Condition ASC;

*Query Explanation:*

SELECT: Retrieves each medical condition alongside the total number of patient records and the percentage distribution of test results.
COUNT(*): Counts the total number of records for each medical condition.
CASE WHEN: Checks each test result and assigns a value of 1 when it matches the specified category (Normal, Abnormal or Inconclusive), and 0 otherwise.
SUM(): Adds the matching values for each test-result category to determine the number of records in that category.
SUM(...) * 100.0 / COUNT(*): Calculates the percentage of each test-result category by dividing its count by the total records for that medical condition and multiplying by 100. The use of 100.0 ensures decimal calculation rather than integer division.
CAST(... AS DECIMAL(10,2)): Formats the calculated percentages to two decimal places.
FROM: Specifies [Pjt (health)] as the source table.
WHERE: Excludes records with missing medical condition or test result values to ensure that only complete records are included in the analysis.
GROUP BY: Groups records according to their medical condition before calculating the total records and percentage distribution of test results.
ORDER BY: Sorts the results alphabetically by medical condition.

*Query Results:*

The query returns the total number of records and the percentage of Normal, Abnormal, and Inconclusive test results for each medical condition.

*Key Findings:*
Arthritis: Abnormal results recorded the highest share at 34.46%, while Normal results accounted for 32.49%.
Asthma: Normal results had the highest share at 34.50%, followed by Inconclusive results at 32.89%.
Cancer: Abnormal results recorded the highest share at 33.73%.
Diabetes: Abnormal results had the highest share at 33.77%, followed by Normal results at 33.24%.
Hypertension: Normal results recorded the highest share at 33.77%, while Inconclusive results accounted for 33.53%.
Obesity: Abnormal results had the highest share at 33.98%.

Abnormal results recorded the highest percentage in four of the six medical conditions: Arthritis, Cancer, Diabetes, and Obesity. Normal results had the highest share for Asthma and Hypertension.

The percentages are relatively close across all three test-result categories, suggesting a fairly balanced distribution of test outcomes across the medical conditions.

#### Question 8: Age Group With The Highest Average Billing
*Business Question:* Which age group has the highest average billing?

SELECT TOP 1
    Age_Group,
    CAST(AVG(Billing_Amount) AS DECIMAL(10, 2)) AS AverageBilling
FROM [Pjt (health)]
WHERE Age_Group IS NOT NULL
  AND Billing_Amount >= 0
GROUP BY Age_Group
ORDER BY AverageBilling DESC;

*Query Explanation:*

SELECT TOP 1: Retrieves only the age group with the highest average billing amount.
AVG(Billing_Amount): Calculates the average billing amount for each age group.
CAST(... AS DECIMAL(10,2)): Formats the calculated average billing amount to two decimal places.
FROM: Specifies [Pjt (health)] as the source table.
WHERE: Excludes records with missing age-group values and negative billing amounts to focus on positive billing records.
GROUP BY: Groups records according to their age groups before calculating the average billing amount.
ORDER BY DESC: Sorts the results by average billing, from the highest to the lowest, ensuring that the age group with the highest average billing appears first.

*Query Results:* The query returned one record, identifying the age group with the highest average billing amount after excluding negative billing values.

*Key Findings:*
- Age Group 51–65 recorded the highest average billing of $25,689.45.
- The four age groups were very close, with averages between about $25,545 and $25,689, a gap of less than 1%.


## 5. Data Model and DAX Measures

Power BI was connected to the cleaned Excel file. The data model contains two tables:

	•	Pjt (health): the 49,999 admission records.
	•	Calendar: a date table (Date, Year, Month, Month No, YearMonth) related to Date of Admission in a one-to-many relationship.

A Billing Issue column was added in Power Query to flag the 96 negative billing records as "Negative Bill" and all others as "Normal Billing". The billing measures use it to exclude negative amounts.

### Dax

Total Admissions = COUNTROWS('Pjt (health)')

Avg Stay = AVERAGE('Pjt (health)'[Days in Admission])

Total Billed =
CALCULATE(SUM('Pjt (health)'[Billing Amount]),
    'Pjt (health)'[Billing Issue] = "Normal Billing")

Avg Bill =
CALCULATE(AVERAGE('Pjt (health)'[Billing Amount]),
    'Pjt (health)'[Billing Issue] = "Normal Billing")

Cost per Day =
DIVIDE([Total Billed],
    CALCULATE(SUM('Pjt (health)'[Days in Admission]),
        'Pjt (health)'[Billing Issue] = "Normal Billing"))

% Abnormal =
DIVIDE(CALCULATE([Total Admissions],
    'Pjt (health)'[Test Results] = "Abnormal"), [Total Admissions])

On the Details page, these appear as Total Patients, Average Length of Stay, Average Billing per Patient, and Total Billing. Total Patients counts patient records (admissions), because the data has no patient ID.

## 6. Dashboard and Analysis

The dashboard has two pages. A dark navy sidebar holds the logo and page navigation, and slicers sit in the header band so every visual can be filtered.

Page 1: Overview

	•	KPI cards: total admissions, average stay, average bill, total billed, cost per day, and percent abnormal results
	•	Admissions trend by month
	•	Heatmap of admissions by month and year
	•	Admissions by age group
	•	Test results split

Page 2: Details

	•	KPI cards: Total Patients, Average Length of Stay, Average Billing per Patient, Total Billing
	•	Admissions by medical condition
	•	Billed by insurance provider
	•	Admissions by month of year
	•	Admissions by admission type (donut)
	•	Test results by medical condition (100% stacked bar)
	•	Top 10 hospitals by billing (table)
	•	Billing by medical condition (table)
	•	Average stay per admission type
	•	Average billing by age group
	•	Slicers: Year, Gender, Admission Type, and Insurance Provider


| Question | Finding |
|:---|:---|
| Admissions per condition | Arthritis is highest (8,439); Asthma is lowest (8,272), a gap of 167. |
| Billing per condition | Diabetes has the highest total billing ($215.09M) and Cancer the lowest ($209.27M). Average bills range from $25,284 (Cancer) to $25,838 (Obesity). |
| Stay per admission type |	Emergency 15.60 days, Elective 15.52, Urgent 15.39. |
| Top insurer | Medicare, at $257.75M, narrowly ahead of Cigna ($257.6M). |
| Top hospital by billing | Smith Ltd, at $1.81M. |
| Monthly trend | Typically 800 to 900 admissions a month. August is the busiest month of the year (4,353 admissions across the period) and February the quietest (3,824). |
| Test results | Abnormal 33.54%, Normal 33.37%, Inconclusive 33.09% overall. Abnormal is the largest share in four of six conditions. |
| Age groups | Patients aged 65+ account for the most admissions (14,678). The 51-65 group has the highest average bill ($25,689.45), but all four groups are within 1%. |




S
