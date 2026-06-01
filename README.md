# 🚲 Cyclistic Bike-Share Analysis Case Study: How does a bike-share navigate speedy success?

## 📋 Project Overview
As part of the **Google Data Analytics Professional Certification**, I analyzed 12 months of Cyclistic bike-share data **(For 2024)** to identify how **annual members** and **casual riders** use the service differently. The goal of this analysis was to provide data-driven recommendations to convert casual riders into long-term members.

---

## 💾 Data Source
The dataset used for this analysis consists of 12 months of historical trip data from 2024, made publicly available by Motivate International Inc. under this [Data License Agreement](https://divvybikes.com/data-license-agreement). 

The raw data files were retrieved directly from the [Index of Cyclistic Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html).

## 🛠️ Technical Workflow

### 1. Data Processing (SQL) 🏗️
I used **SQL Server Management Studio (SSMS)** to clean and transform the dataset, which initially contained over 5.72 million rows.

* **Consolidation**: Imported 12 monthly CSV files into SSMS 22, verified schema consistency across all datasets, and utilized the UNION ALL operator to merge over 5.72 million raw records into a single, unified data repository for 2024.
* **Cleaning**: Removed null values, duplicates, and trips under 60 seconds (likely test/maintenance rides).
* **Final Dataset**: **4,224,062 rows** of clean, usable data.
* **Feature Engineering**: Created columns for `ride_length`, `day_of_week`, and `month` to identify temporal trends.

**Data Organization** 

There are 12 files with naming convention of YYYYMM-divvy-tripdata and each file includes information for one month, such as the ride id, bike type, start time, end time, start station, end station, start location, end location, and whether the rider is a member or not.

The corresponding column names are shown below:

<img width="773" height="640" alt="image" src="https://github.com/user-attachments/assets/e6e2cb71-fce2-47e3-a427-696472ad0bd5" />

and the data type of each variable is depicted below:

<img width="558" height="639" alt="image" src="https://github.com/user-attachments/assets/bae9248e-e96e-4f44-9859-c2f7a1b3a3d9" />



### 2. Analysis & Visualization (Tableau) 📊
The cleaned data was imported into **Tableau Desktop** for exploratory data analysis (EDA) and final dashboarding.

---

## 📖 Background & Business Case

### 1. 🚀 Project Introduction
As a Junior Data Analyst on the Cyclistic marketing analytics team, I am conducting this case study to help drive the company's future growth. To answer our core business questions, I am following the structured data analysis process: **Ask, Prepare, Process, Analyze, Share, and Act**. This report serves as a comprehensive look at my findings and data-driven recommendations.

### 2. 🎯 Business Scenario
The Director of Marketing, Lily Moreno, has identified that Cyclistic's future success depends on maximizing the number of annual memberships. My primary objective is to understand how casual riders and annual members use Cyclistic bikes differently. By uncovering these insights, I aim to provide the marketing team with the necessary intelligence to design a strategy that converts casual riders into long-term annual members. My recommendations must be approved by the executive team and are therefore backed by compelling data insights and professional visualizations.

### 3. 🏢 Organizational Context
Since its launch in 2016, Cyclistic has grown into a premier bike-share program in Chicago with a fleet of over **5,800 geotracked bicycles** and **600 docking stations**. 

#### 🚲 Service Offerings
* I recognize that Cyclistic distinguishes itself through inclusivity, offering not only traditional bikes but also reclining bikes, hand tricycles, and cargo bikes.
* While the majority of our users opt for traditional bikes, approximately **8%** utilize assistive options.
* Our data shows that while most riders use the service for leisure, about **30%** of our users rely on these bikes for their daily commute.

#### 💳 Pricing and Profitability
Currently, Cyclistic offers three tiers of pricing: **single-ride passes, full-day passes, and annual memberships**.
* I define **"casual riders"** as those purchasing single or full-day passes, while **"members"** are those with annual subscriptions.
* Internal financial analysis has confirmed that annual members are significantly **more profitable** than casual riders.

#### 🔄 The Strategy Shift
Previously, our marketing relied on broad awareness campaigns. However, I am now focusing on Moreno's goal of **conversion**. Because casual riders are already familiar with our service, they represent a high-potential segment for membership growth. To facilitate this, I have analyzed historical bike trip data to identify the behavioral trends that differentiate these two groups.

---

## 💡 Key Insights & Findings

* **Market Share**: Annual members dominate usage at **63.6%**, while casual riders represent **36.4%**.
* **The "Intensity" Gap**: Casual riders take much longer trips, averaging **18.85 minutes**—nearly **1.6 times longer** than the member average of **11.94 minutes**.
* **Peak Usage**:
    * **Members**: Show a **"Commuter Profile"** with sharp spikes at **8 AM and 5 PM** on weekdays.
    * **Casual Riders**: Show a **"Leisure Profile"** with peak activity on **Saturdays** and a specific peak hour at **11 AM**.
* **Station Popularity**: Casual riders start their trips primarily at tourist hubs and lakefront locations, whereas members start from residential and business districts.

---

## 🚀 Recommendations

1.  **"Weekend Warrior" Pass**: Launch a seasonal membership targeted at weekend users, specifically focusing on marketing at lakefront stations at 11 AM.
2.  **Long-Duration Incentives**: Since casual riders ride longer, introduce a membership tier that offers lower rates for rides exceeding 15 minutes.
3.  **Summer Campaign**: Data shows a massive surge in casual rides from June to August. This is the prime window for conversion-focused digital advertising.

---

## 📂 Repository Structure

* `Datasets/`: Documentation regarding the source data.
* `Scripts/`: SQL queries used for data cleaning and transformation.
* `Visualizations and Dashboards/`: Exported PNGs of the primary analysis charts.
* `Workbook/`: The `.twbx` Tableau Packaged Workbook for interactive viewing.
* `Report/`: Final PDF case study report.
