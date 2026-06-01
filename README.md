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

### 2. Analysis & Visualization (Tableau) 📊
The cleaned data was imported into **Tableau Desktop** for exploratory data analysis (EDA) and final dashboarding.

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
