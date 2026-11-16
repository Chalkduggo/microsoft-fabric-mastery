
# Day 01 — Learning Reflection

## What I Learned
- Creating and navigating a Microsoft Fabric Lakehouse
- Querying Delta tables using the SQL analytics endpoint
- Performing aggregations with GROUP BY
- Applying CASE WHEN for conditional aggregation
- Calculating estimated monthly recurring revenue

## SQL Error 8120
I encountered SQL error 8120 when selecting a column
that was neither aggregated nor included in GROUP BY.

Resolution:
I added the necessary non-aggregated columns to
the GROUP BY clause.

## SQL Alias Error
I attempted to reference a COUNT(*) alias in another
expression within the same SELECT clause.

Resolution:
I used COUNT(*) directly in the calculation.

## Business Logic Correction
Initially, WHERE status = 'Active' excluded cancelled
subscriptions from the total.

I replaced this approach with conditional aggregation,
allowing total, active and cancelled subscriptions
to be calculated in one query.

## My Key Takeaway
A technically valid SQL query can still give an
incomplete answer to the business question.

Correct aggregation and business logic are both
essential for reliable analytics.

## Next Learning Goals
- Understand Delta Lake and OneLake architecture
- Compare Lakehouse and Warehouse
- Learn Spark SQL versus T-SQL
- Practise additional Fabric data transformations
