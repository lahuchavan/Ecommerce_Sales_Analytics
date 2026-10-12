::: {align="center"}
# 🛒 E-Commerce Sales Analytics

### Turning Sales Data into Business Insights

**Python · SQL · PostgreSQL · Power BI**

Analyze sales performance, profitability, customer behavior, and product
trends with an interactive business intelligence dashboard.
:::

------------------------------------------------------------------------

## 📌 Project Overview

The **E-Commerce Sales Analytics** project explores a Superstore-style
retail dataset to understand what drives sales and profit. The workflow
combines Python-based data preparation, SQL analysis in PostgreSQL, and
an interactive Power BI dashboard to present useful business metrics in
a clear visual format.

The project demonstrates an end-to-end analytics workflow: from
exploring and preparing data to querying it and communicating findings
through a dashboard.

## 🎯 Business Goals

-   Monitor overall sales, profit, orders, quantity sold, customers, and
    profit margin.
-   Compare sales performance across product categories and
    sub-categories.
-   Identify regional differences in profitability.
-   Explore sales and profit patterns over time.
-   Compare product and customer performance.
-   Present geographic sales patterns across US states.

## 🧰 Tools & Technologies

  Tool                       How it is used
  -------------------------- -----------------------------------------------------
  **Python**                 Data inspection, cleaning, and exploratory analysis
  **Pandas & NumPy**         Data preparation and numerical operations
  **Matplotlib & Seaborn**   Exploratory data visualization
  **SQL**                    Business queries and data aggregation
  **PostgreSQL**             Relational database for analytics
  **Power BI**               Interactive dashboard, KPI cards, and charts

## 📊 Dashboard Highlights

The Power BI report includes:

-   **KPI cards:** Total Sales, Total Profit, Total Orders, Total
    Quantity, Total Customers, and Profit Margin
-   **Sales & Profit Trend:** Explore changes in sales and profit over
    time
-   **Sales by Category:** Compare Technology, Furniture, and Office
    Supplies
-   **Sales by Sub-category:** Identify high-performing product groups
-   **Profit by Region:** Compare profitability across regions
-   **Sales vs. Profit:** Explore the relationship between sales and
    profit by category
-   **Sales by State:** View geographic sales distribution across the
    United States

> **Dashboard preview:** Add your dashboard screenshot to
> `screenshots/dashboard.png`, then uncomment the line below.
>
> ```{=html}
> <!-- ![E-Commerce Sales Analytics Dashboard](screenshots/dashboard.png) -->
> ```

## 🔄 Project Workflow

1.  **Explore the data** --- review columns, data types, missing values,
    duplicates, and overall data quality.
2.  **Prepare the data with Python** --- clean and transform fields for
    analysis.
3.  **Analyze with SQL** --- query sales, profit, categories,
    sub-categories, customers, and regions in PostgreSQL.
4.  **Build the Power BI report** --- create KPI measures and
    visualizations.
5.  **Communicate insights** --- use the dashboard to explore
    performance and support data-informed decisions.

## 🧮 Example Power BI Measures

The following DAX measures use the table name `public superstore`.
Update the table or column names if your Power BI model differs.

``` dax
Total Sales = SUM('public superstore'[sales])

Total Profit = SUM('public superstore'[profit])

Total Orders = DISTINCTCOUNT('public superstore'[order_id])

Total Customers = DISTINCTCOUNT('public superstore'[customer_id])

Total Quantity = SUM('public superstore'[quantity])

Profit Margin = DIVIDE([Total Profit], [Total Sales], 0)

Average Order Value = DIVIDE([Total Sales], [Total Orders], 0)
```

**Tip:** Format `Profit Margin` as a percentage in Power BI.

## 📁 Suggested Repository Structure

Keep the folders that match the files you actually upload.

``` text
Ecommerce-Sales-Analytics/
├── data/                 # Dataset, if redistribution is allowed
├── python/               # Python scripts or Jupyter notebooks
├── sql/                  # SQL analysis queries
├── powerbi/              # Power BI .pbix report
├── screenshots/          # Dashboard preview images
└── README.md
```

## 🚀 Getting Started

1.  Clone or download this repository.
2.  Review the data-source instructions in the `data/` folder.
3.  Run the notebook or scripts in `python/`, if included.
4.  Run the SQL scripts in `sql/` against your PostgreSQL database, if
    included.
5.  Open the `.pbix` file in Power BI Desktop.
6.  If Power BI requests credentials or a data source, update the
    connection settings for your environment.

## 💡 Insights & Findings

Add a few **verified findings from your own analysis** here, for
example:

-   Which category contributes the most sales?
-   Which region generates the highest profit?
-   Which sub-categories have strong sales but low profit?
-   How do sales and profit change over time?

Use figures from your actual dashboard rather than estimates.

## 🔮 Future Enhancements

-   Add date, region, category, and customer-segment slicers.
-   Improve navigation and dashboard accessibility.
-   Add customer segmentation or sales forecasting.
-   Automate data refresh where the environment supports it.

## 👤 Author

**Lahu Chavan**

*Aspiring Data Analyst*

**Skills demonstrated:** Python · SQL · PostgreSQL · Power BI · Data
Visualization · Business Analysis

------------------------------------------------------------------------

::: {align="center"}
⭐ If you find this project useful, feel free to star the repository.
:::
