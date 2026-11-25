# Health-Hospital-Admissions-Billing-Analysis
### A Data Analytics Project Using Excel, SQL Server and Power BI

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
4. [Data Cleaning and Preparation](#4-data-cleaning-and-preparation)
5. [SQL Analysis](#5-sql-analysis)
6. [Data Model and DAX Measures](#6-data-model-and-dax-measures)
7. [Dashboard and Analysis](#7-dashboard-and-analysis)
8. [Key Insights](#8-key-insights)
9. [Recommendations](#9-recommendations)
10. [Limitations](#10-limitations)
11. [Conclusion](#11-conclusion)
12. [Author](#12-author)


## 1. Introduction

### Background and Context

Every hospital admission creates a record, but those records tell a much bigger story than the number of patients treated. They capture how patients access healthcare, the conditions they are admitted for, the duration of their hospital stays, the diagnostic tests they undergo, and the financial costs associated with their treatment.
When examined collectively, these records can reveal patterns in hospital utilisation, patient admissions, and billing activities that may otherwise go unnoticed.

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

### Dataset Overview

The dataset used for this analysis contains hospital admission and billing records covering patient demographics, medical conditions, admission details, hospital information, insurance coverage, medication and diagnostic test results.

The original dataset consisted of *55,501 records* and 15 columns. Following data cleaning and duplicate removal in Microsoft Excel, the dataset was reduced to *50,000 records*, which formed the basis for the subsequent SQL analysis and Power BI dashboard development.

### Dataset Variables

The dataset initially contained 15 columns covering patient demographics, medical conditions, hospital information, admission details and billing contains the following 15 columns:

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

### Key Statistics

| Statistic | Value |
|:---|---:|
| Original Records | 55,501 |
| Final Records | 50,000 |
| Columns | 15 |
| Records Removed | 5,501 |
| Date Range | 1 to 30 days |
| Number of Hospitals | 38,079 |
| Number of Medical Conditions | 6 |
| Total Billing Amount | 1.28bn |


## 2. Business Questions
The analysis answered the following business questions:
1. How many admissions are there per medical condition, and which condition is most common?
2. What is the average and total billing amount per medical condition?
3. What is the average length of stay per admission type (Emergency, Elective, Urgent)?
4. Which insurance provider covers the highest total billing?
5. Which 10 hospitals have the highest total billing?
6. How do admissions trend by year and month?
7. What share of test results are Normal, Abnormal, and Inconclusive per medical condition?
8. Which age group has the highest average billing?



