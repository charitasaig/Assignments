# Task 9 – Data Selection and Cleaning in Pandas

## Objective
The objective of this task is to learn how to select, filter, clean, and process data using Pandas.

## Topics Covered

### Selecting Data
Select required rows and columns.

Methods:
- `[]`
- `loc[]`
- `iloc[]`

### Data Filtering
Filter rows based on conditions.

Example:
```python
df[df["Salary"] > 50000]
```

### Handling Missing Values
Useful functions:
- `isnull()`
- `fillna()`
- `dropna()`

### Handling Duplicates
Remove duplicate records using:

```python
df.drop_duplicates()
```

### String Operations
Common string methods:
- `upper()`
- `lower()`
- `title()`
- `startswith()`

### Datetime Operations
Convert dates and extract information.

Example:
```python
df["JoiningDate"] = pd.to_datetime(df["JoiningDate"])
```

Useful properties:
- `.dt.year`
- `.dt.month`
- `.dt.day`

## Skills Learned
- Selecting rows and columns
- Using `loc[]` and `iloc[]`
- Filtering data
- Handling missing values
- Removing duplicates
- String operations
- Datetime operations

## Conclusion
This task helped in understanding data cleaning and preprocessing, which are important steps before performing data analysis.
