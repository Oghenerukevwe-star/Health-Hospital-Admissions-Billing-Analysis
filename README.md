# Health-Hospital-Admissions-Billing-Analysis
### A Data Analytics Project Using Excel, SQL Server, and Power BI

## 📌 Project Overview
An end-to-end data analytics project involving hospital admissions and billing data. The dataset initially contained **55,501 records**; I cleaned it in Microsoft Excel by removing duplicates, resulting in **50,000 records** for analysis.

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

The original dataset consisted of *55,501 records* and 15 columns. Following data cleaning and duplicate removal in Microsoft Excel, the dataset was reduced to *50,000 records*, which formed the basis for the subsequent SQL analysis and Power BI dashboard development.

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
| Original Records | 55,501 |
| Final Records | 50,000 |
| Columns | 17 |
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





