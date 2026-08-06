# Task 10 – Think Like a Data Analyst

## Objective
The objective of this task is to learn how to summarize and combine datasets using Pandas. It focuses on grouping data, performing aggregate calculations, and merging multiple DataFrames.

## Topics Covered

- `groupby()` (Single Column)
- `groupby()` (Multiple Columns)
- Multiple Aggregations using `agg()`
- Different Aggregation Functions
- Merging DataFrames
  - Inner Join
  - Left Join
  - Right Join
  - Outer Join
  - Merge Indicator

## Concepts Learned

### 1. GroupBy
The `groupby()` function is used to group data based on one or more columns and perform calculations on each group.

Example:
```python
df.groupby("Department")["Salary"].mean()
```

### 2. Aggregate Functions
Aggregate functions are used to summarize grouped data.

Common functions:
- `mean()`
- `sum()`
- `count()`
- `min()`
- `max()`

Example:
```python
df.groupby("Department")["Salary"].agg(["min","max","mean","sum"])
```

### 3. DataFrame Merge
The `merge()` function combines two DataFrames based on a common column.

Syntax:
```python
pd.merge(df1, df2, on="Department", how="inner")
```

### Types of Joins

**Inner Join**
- Returns only matching records from both DataFrames.

**Left Join**
- Returns all records from the left DataFrame and matching records from the right DataFrame.

**Right Join**
- Returns all records from the right DataFrame and matching records from the left DataFrame.

**Outer Join**
- Returns all records from both DataFrames.

**Merge Indicator**
- Adds a `_merge` column showing:
  - `both`
  - `left_only`
  - `right_only`

## Skills Learned

- Reading CSV files using Pandas
- Grouping data with `groupby()`
- Using aggregate functions
- Applying multiple aggregations with `agg()`
- Merging DataFrames using different joins
- Creating summary reports
- Performing basic HR data analysis

## Conclusion

This task helped me understand how to analyze grouped data and combine multiple datasets using Pandas. These concepts are commonly used in real-world data analysis, reporting, and business intelligence applications.
