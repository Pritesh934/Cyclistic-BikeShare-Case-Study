# 🚲 Cyclistic Bike-Share Analysis Case Study: How does a bike-share navigate speedy success?

## 📋 Project Overview
As part of the **Google Data Analytics Professional Certification**, I analyzed 12 months of Cyclistic bike-share data **(For 2024)** to identify how **annual members** and **casual riders** use the service differently. The goal of this analysis was to provide data-driven recommendations to convert casual riders into long-term members.

---
## 🏢 Business Context & Organizational Background

### 🚀 Project Introduction
As a Junior Data Analyst on the Cyclistic marketing analytics team, I conducted this comprehensive case study to help drive the company's future growth strategy. To systematically answer our core business questions, the project adheres to the standard six-step data analysis framework: **Ask, Prepare, Process, Analyze, Share, and Act**.

### 🎯 The Business Scenario
The Director of Marketing has identified that Cyclistic’s long-term commercial success depends heavily on maximizing the acquisition of annual memberships. Accordingly, my primary objective is to deeply analyze historical bike trip data to understand the behavioral nuances that differentiate casual riders from annual members. By uncovering these distinct usage trends, this analysis provides the marketing intelligence necessary to design targeted digital media strategies aimed at converting high-potential casual riders into loyal, annual subscribers.

### 📊 Organizational Profile & Service Offerings
Since its commercial launch in 2016, Cyclistic has scaled into a premier bike-share utility in Chicago, managing an active fleet of over **5,800 geotracked bicycles** paired with a dense physical network of **600 docking stations**. 

* **Fleet Inclusivity:** The company differentiates itself through an inclusive fleet design, offering traditional two-wheelers alongside adaptive options such as reclining bikes, hand tricycles, and cargo cargo models. While classic and electric designs capture the vast majority of volume, adaptive models support approximately **8%** of total trips.
* **User Segmentation by Utility:** Internal data indicates a distinct split in customer intent; while the absolute majority of consumers utilize the fleet for leisure and recreation, approximately **30%** explicitly rely on Cyclistic vehicles for their daily occupational commute.

### 💳 Pricing Framework & Profitability Realities
Cyclistic maintains a flexible revenue model divided into three core user-purchasing tiers: single-ride passes, full-day passes, and annual memberships.
* **Casual Riders:** Customers utilizing single-ride or full-day pass structures.
* **Annual Members:** Customers committed to long-term yearly subscriptions.

> 📊 **Strategic Pivot:** Historical financial analysis confirms that annual members generate significantly more consistent and higher profit margins than casual segments. Moving away from broad-scale brand awareness campaigns, the marketing team is executing a strict conversion strategy. Because casual riders are already fundamentally familiar with the physical service, they represent the single highest-value segment for membership growth.

---

## 📋 Data Analysis Phase 1: Ask

### 🎯 Business Task
The core business objective is to design targeted marketing strategies aimed at converting high-potential casual riders into profitable, long-term annual members.

### 🔍 Strategic Analysis Questions
Three core questions guide the development of Cyclistic's future marketing initiatives:
1. **How do annual members and casual riders use Cyclistic bikes differently?**
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

> 📌 **Project Focus:** The Director of Marketing assigned me the first primary question to solve: **How do annual members and casual riders use Cyclistic bikes differently?** My analysis serves as the quantitative foundation to help answer the remaining two strategic questions.

---

## Phase 2: Prepare

## 💾 Data Source
The dataset used for this analysis consists of 12 months of historical trip data from 2024, made publicly available by Motivate International Inc. under this [Data License Agreement](https://divvybikes.com/data-license-agreement). 

The raw data files were retrieved directly from the [Index of Cyclistic Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html).

## 🛠️ Data Organization

There are 12 files with naming convention of YYYYMM-divvy-tripdata and each file includes information for one month, such as the ride id, bike type, start time, end time, start station, end station, start location, end location, and whether the rider is a member or not.

The corresponding column names are shown below:

<img width="802" height="662" alt="image" src="https://github.com/user-attachments/assets/fbf2ab96-a94f-4541-85a1-67397f197bb1" />

and the data type of each variable is depicted below: 

<img width="558" height="643" alt="image" src="https://github.com/user-attachments/assets/a2e79e36-2c1d-4222-b2e3-bc23f55482b1" />

---

## Phase 3: Data Preprocessing (Cleaning & Transformation)🏗️

I used **SQL Server Management Studio (SSMS 22)** to clean, transform, and verify the dataset to ensure it was accurate, consistent, and ready for analysis. The raw data initially contained over **5,722,062 rows**.

* **📂 Data Consolidation:** Imported 12 monthly CSV files into SSMS 22, verified schema consistency across all datasets, and utilized the `UNION ALL` operator to merge all raw records into a single, unified data repository for the 2024 fiscal year.
* **🧼 Handling Missing Values:** All rows containing null or missing values across the 12 monthly datasets were systematically identified and removed to maintain absolute data integrity.
* **⚙️ Data Transformation (Feature Engineering):** Engineered new columns to extract granular insights and enable deeper temporal and behavioral analysis:
  * `avg_ride_length_in_seconds`: Calculated the exact mathematical difference between `ended_at` and `started_at` to determine individual trip durations.
  * `day_of_week`: Extracted the specific day of the week from the start timestamp to analyze weekly ridership patterns.
  * `month`: Extracted the calendar month to track seasonal trends throughout the year.
* **✂️ Filtering Outliers:** To protect the integrity of the metrics and prevent skewed results, strict operational boundaries were applied to exclude anomalous records:
  * Excluded rides with a duration of **less than one minute** (indicative of false starts, minor docking adjustments, or station maintenance).
  * Excluded rides lasting **longer than 24 hours** (indicative of lost, unreturned, or stolen equipment).
* **✅ Final Dataset Verification:** After executing these cleaning and filtration steps, the pipeline returned a final database of **4,224,062 clean, usable rows** for analysis. This workflow successfully isolated and dropped a total of **1,496,735 rows** of inconsistent or incomplete data, establishing a high-quality foundation for the subsequent visualization phase.

---

## 📊 Data Analysis Phase 4: Analyze

### 🔍 Analytical Focus
The central guiding question of this phase is: **How do annual members and casual riders use Cyclistic bikes differently?** To uncover these behavioral differences, the cleaned dataset was imported into **Tableau Desktop** for detailed exploratory data analysis (EDA) and visualization.

### 📈 Total Rides by User Type in 2024 (Pie Chart)
The initial analysis examined the overall volume and market share breakdown of bicycle activity across the entire calendar year:

<img width="868" height="568" alt="image" src="https://github.com/user-attachments/assets/7679860d-3c08-4f60-8a70-e17331669f1c" />


* **Ridership Volume:** Annual members recorded higher activity at **3,640,912 trips**, compared to **2,079,885 trips** for casual riders.
* **Market Share:** Members accounted for **63.64%** of total 2024 rides, while casual riders made up **36.36%**.

### 📈 Types of Bikes (Horizontal Stacked Bar Chart)

<img width="1457" height="288" alt="image" src="https://github.com/user-attachments/assets/567e810d-99a2-4823-9ae1-a16fe127ca58" />

* **Fleet Preferences:** Both customer segments prefer electric bicycles over classic bicycles.
* **Scooter Adoption:** Casual riders utilized electric scooters for **81,432 trips**, outperforming the **56,123 trips** taken by annual members.

### 📈Average Ride duration in seconds (Member vs Casual user Horizontal Bar Chart):

<img width="1466" height="731" alt="image" src="https://github.com/user-attachments/assets/e5f05419-43ed-4c7d-87e1-c60e1218749f" />

* **The Intensity Gap:** Casual riders average **1,131.1 seconds (18.85 mins)** per trip, while annual members average **716.8 seconds (11.94 mins)**. 
* **Duration Comparison:** Member ride durations are approximately **1.57 times shorter** than those of casual riders.

## 📂 Repository Structure

* `Datasets/`: Documentation regarding the source data.
* `Scripts/`: SQL queries used for data cleaning and transformation.
* `Visualizations and Dashboards/`: Exported PNGs of the primary analysis charts.
* `Workbook/`: The `.twbx` Tableau Packaged Workbook for interactive viewing.
* `Report/`: Final PDF case study report.
