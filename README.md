# Sales Insights Dashboard 📊

## 📌 Introduction
A comprehensive sales analysis dashboard showcasing detailed insights from our sales data through SQL queries and Power BI visualizations.

## 🎯 Project Overview
The project combines SQL analysis with Power BI visualizations to provide insights into:
- Total sales performance
- Product line analysis
- Geographic distribution
- Order status metrics
- Deal size distribution

## 📊 Dashboard & Analysis

### 1. Total Sales Overview
```sql
SELECT SUM(sales) AS total_sales 
FROM sales;
```
**Query Result:**
```plaintext
Total Sales: $10,032,628.85
```

#### 📈 Dashboard KPIs
```
┌───────────────┬────────────┬─────────────┐
│   10.03M      │   83.66    │    2823     │
│  Total Sales  │ Avg Sales  │ Total Orders│
└───────────────┴────────────┴─────────────┘
```

### 2. Product Line Analysis
```sql
SELECT productline, SUM(sales) AS total_sales
FROM sales
GROUP BY productline
ORDER BY total_sales DESC;
```

#### 📊 Product Line Distribution
```
Classic Cars    ████████████████████████  $3,919,615
Vintage Cars    ████████████             $1,903,150
Motorcycles     ██████                   $1,166,388
Trucks & Buses  ██████                   $1,127,789
Planes          ████                     $975,003
Ships           ███                      $714,437
Trains          █                        $226,243
```

### 3. Geographic Distribution
```sql
SELECT country, SUM(sales) AS total_sales
FROM sales
GROUP BY country
ORDER BY total_sales DESC;
```

#### 🗺️ Top Sales by Country
```
USA        ████████████████████  $3,627,982
Spain      ████████             $1,215,686
France     ████████             $1,110,916
Australia  ████                 $630,623
UK         ███                  $478,880
```

### 4. Order Status Analysis
```sql
SELECT status, COUNT(*) AS total_orders, SUM(sales) AS total_sales
FROM sales
GROUP BY status;
```

#### 📋 Order Status Distribution
```
Status      Orders    Sales
--------------------------------
Shipped     2,617     $9,291,501
Resolved    47        $150,718
Cancelled   60        $194,487
In Process  41        $144,729
Disputed    14        $72,212
On Hold     44        $178,979
```

### 5. Deal Size Analysis
```sql
SELECT dealsize, COUNT(*) AS total_deals, SUM(sales) AS total_sales
FROM sales
GROUP BY dealsize
ORDER BY total_sales DESC;
```

#### 💰 Deal Size Distribution
```
Size    Deals   Sales Amount
--------------------------------
Medium  1,384   $6,087,432
Small   1,282   $2,643,077
Large   157     $1,302,119
```

## 💻 SQL Queries Collection

### Query Files Structure:
```
📁 sql_queries/
├── 1_total_sales.sql
├── 2_best_selling_product.sql
├── 3_sales_by_country.sql
├── 4_analysis_by_order_status.sql
└── 5_sales_by_deal_size.sql
```

### Example Usage:
```sql
-- 1. Total Sales Query
SELECT SUM(sales) AS total_sales FROM sales;

-- 2. Product Line Analysis
SELECT productline, SUM(sales) AS total_sales
FROM sales
GROUP BY productline
ORDER BY total_sales DESC;

-- 3. Country Analysis
SELECT country, SUM(sales) AS total_sales
FROM sales
GROUP BY country
ORDER BY total_sales DESC;

-- 4. Order Status
SELECT status, COUNT(*) AS total_orders, SUM(sales) AS total_sales
FROM sales
GROUP BY status;

-- 5. Deal Size
SELECT dealsize, COUNT(*) AS total_deals, SUM(sales) AS total_sales
FROM sales
GROUP BY dealsize
ORDER BY total_sales DESC;
```

## 📈 Key Insights

1. **Product Performance**
   - Classic Cars dominates with $3.9M in sales
   - Top 3 product lines account for 70% of total sales

2. **Geographic Insights**
   - USA leads with $3.6M in sales (36% of total)
   - Strong European presence (Spain, France, UK)
   - Growing APAC market with Australia leading

3. **Order Processing**
   - 92.6% successful shipping rate
   - Low dispute rate (0.5%)
   - Healthy order completion metrics

4. **Deal Size Impact**
   - Medium deals drive business (60% of revenue)
   - Large deals show highest per-order value
   - Balanced distribution between small and medium deals

## 🛠️ Technical Stack
- **Database**: PostgreSQL
- **Visualization**: Power BI
- **Languages**: SQL
- **Version Control**: Git

## 📚 How to Use

1. **Clone the Repository**
   ```bash
[   git clone https://github.com/yourusername/sales-insights-dashboard.git](https://github.com/3blattef/Sales-Insights-Dashboard.git)
   ```

2. **Database Setup**
   ```sql
   -- Create database
   CREATE DATABASE sales_insights;
   
   -- Import data
   \i setup/import_data.sql
   ```

3. **Run Queries**
   - Execute queries from the `sql_queries` folder
   - View results in your preferred SQL client

4. **View Visualizations**
   - Open `dashboard/sales_insights.pbix` in Power BI
   - Refresh data as needed

## 🔄 Future Updates
1. Add time-series analysis
2. Implement customer segmentation
3. Add profit margin analysis
4. Create automated reporting system

---
*For more information or support, please open an issue or submit a pull request.*
