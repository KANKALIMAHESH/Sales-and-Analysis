# Task 6: Sales Trend Analysis Using Aggregations

## Objective:
Analyze monthly revenue and order volume using SQL aggregate functions from an `online_sales` dataset.

## Tools Used:
- SQL (PostgreSQL/MySQL/SQLite)

## SQL Script Overview:
The SQL script creates a sample dataset and calculates monthly revenue and order volume using the following aggregates:
- `SUM(amount)` for total revenue.
- `COUNT(DISTINCT order_id)` for order volume.
- Grouped by year and month extracted from `order_date`.

## Sample Output:
| Year | Month | Total Revenue | Order Volume |
|------|-------|----------------|---------------|
| 2023 | 1     | 550.00         | 2             |
| 2023 | 2     | 750.00         | 2             |
| 2023 | 3     | 500.00         | 1             |

## Key Learnings:
- How to group data using `GROUP BY` with `EXTRACT()` for time-based trends.
- How to use aggregate functions like `SUM()` and `COUNT()`.
- Importance of ordering results using `ORDER BY`.

## Files Included:
- `task6_sales_trend.sql`: SQL script for table creation, data insertion, and analysis.
- `sales_trend_output.pdf`: Simulated output table in PDF format.
- `README.md`: This explanation and summary.

## Note:
Data used here is simulated due to lack of provided dataset.
