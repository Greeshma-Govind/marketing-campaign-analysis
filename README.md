# Marketing Analysis

## 📌 Project Overview

This project focuses on analyzing customer and marketing campaign data to identify patterns in customer behavior, purchasing habits, campaign performance, and customer segmentation.

The project demonstrates an end-to-end data analytics workflow using:

**CSV Dataset → MySQL → Python → Tableau → Business Insights**

The analysis combines data preparation, SQL querying, exploratory data analysis, visualization, and dashboard development to transform raw customer data into meaningful business insights.

---

## 🎯 Project Objectives

The main objectives of this project are to:

- Understand customer demographics and purchasing behavior
- Analyze customer spending across different product categories
- Examine purchasing patterns across different sales channels
- Evaluate marketing campaign responses
- Identify customer segments and behavioral patterns
- Analyze customer complaints and other relevant customer characteristics
- Identify factors associated with customer engagement and purchasing behavior
- Create visualizations and dashboards to communicate key findings

---

## 📂 Dataset

The project uses a marketing campaign dataset containing customer-level information.

The dataset includes information related to:

### Customer Information
- Customer ID
- Year of Birth
- Education
- Marital Status
- Income
- Number of Children
- Number of Teenagers
- Customer enrollment information

### Product Spending
- Wines
- Fruits
- Meat Products
- Fish Products
- Sweet Products
- Gold Products

### Purchase Behaviour
- Deals Purchases
- Web Purchases
- Catalog Purchases
- Store Purchases
- Web Visits

### Marketing Campaign Information
- Campaign acceptance/response indicators
- Recency
- Customer complaints
- Response to the latest campaign

---

## 🛠️ Tools & Technologies

### Excel / CSV
Used for:
- Initial dataset inspection
- Data preparation
- Understanding the structure of the dataset

### MySQL
Used for:
- Importing the dataset
- Data querying
- Aggregation and filtering
- Customer and campaign analysis
- Generating business-focused insights

### Python
Used for:
- Data cleaning
- Exploratory Data Analysis (EDA)
- Statistical analysis
- Data visualization
- Identifying patterns and relationships in the data

### Tableau
Used for:
- Interactive data visualization
- Dashboard development
- Presenting key marketing and customer insights

---

## 🔄 Project Workflow

### Step 1: Data Preparation

The raw marketing campaign dataset was inspected and prepared for analysis.

Initial checks included:
- Understanding columns and data types
- Checking missing values
- Identifying duplicate records
- Reviewing customer attributes
- Understanding numerical and categorical variables

---

### Step 2: MySQL Analysis

The dataset was imported into MySQL for structured analysis.

SQL was used to perform:
- Data filtering
- Aggregations
- Grouping
- Sorting
- Customer analysis
- Product spending analysis
- Campaign response analysis
- Purchase channel analysis

---

### Step 3: Python Analysis

Python was used for exploratory data analysis and visualization.

The analysis includes:
- Data cleaning
- Missing-value analysis
- Descriptive statistics
- Distribution analysis
- Customer segmentation
- Product spending analysis
- Campaign response analysis
- Correlation analysis
- Data visualization

---

### Step 4: Tableau Dashboard

The analyzed data was visualized using Tableau.

The dashboard provides an interactive view of:
- Customer characteristics
- Purchasing behavior
- Product spending
- Marketing campaign performance
- Customer response patterns

---

## 📊 Key Areas of Analysis

### 1. Customer Demographics

Analysis of:
- Age / Year of Birth
- Education
- Marital Status
- Income
- Children and teenagers in the household

### 2. Product Analysis

Analysis of customer spending across:
- Wine
- Fruits
- Meat
- Fish
- Sweets
- Gold products

### 3. Purchase Channel Analysis

Comparison of purchasing activity through:
- Web
- Catalog
- Store
- Deals

### 4. Marketing Campaign Analysis

Analysis of:
- Campaign acceptance
- Customer response
- Campaign engagement
- Customer characteristics associated with campaign responses

### 5. Customer Behaviour

Analysis of:
- Recency
- Purchase frequency
- Spending patterns
- Website visits
- Customer complaints

---

## 📈 Business Questions

Some of the questions explored in this project include:

- What are the characteristics of the customers in the dataset?
- Which product categories generate the highest customer spending?
- Which purchasing channel is used most frequently?
- How does customer income relate to spending?
- Which customers show higher engagement with marketing campaigns?
- What factors are associated with campaign responses?
- How does purchasing behavior differ across customer segments?
- What patterns can be identified from customer complaints and campaign responses?
- Which customer groups may be valuable targets for future marketing campaigns?

---

## 💡 Business Insights

The analysis is designed to help businesses understand:

- Customer purchasing preferences
- High-value customer characteristics
- Effective marketing segments
- Preferred purchasing channels
- Product-level spending patterns
- Customer engagement with campaigns

The final insights can be used to support data-driven marketing decisions such as customer targeting, campaign planning, product promotion, and channel optimization.

---

## 📊 Tableau Dashboard

The Tableau dashboard provides a visual representation of the analysis.

**Dashboard Preview:**

![Marketing Analysis Dashboard](Tableau/Dashboard.png)

The interactive Tableau workbook is available in the `Tableau` folder.

---

## 📁 Repository Structure

```text
Marketing-Analysis/
│
├── README.md
│
├── Dataset/
│   └── marketing_campaign.csv
│
├── MySQL/
│   └── Marketing Analysis.sql
│
├── Python/
│   └── Marketing Analysis.ipynb
│
└── Tableau/
    ├── Marketing Analysis.twbx
    └── Dashboard.png
