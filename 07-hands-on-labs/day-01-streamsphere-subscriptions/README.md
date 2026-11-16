
# Day 01 — StreamSphere Subscription Analysis

## Certification
Microsoft Fabric DP-600 — Analytics Engineer Associate

## Business Scenario
StreamSphere is a fictional OTT streaming platform
offering Basic, Standard, and Premium plans.

The Product and Revenue Analytics teams need to
understand subscriber distribution and monthly
recurring revenue by subscription plan.

## Business Question
Which subscription plans have the most subscribers,
and how much estimated monthly recurring revenue
does each plan generate?

## Technology Used
- Microsoft Fabric
- OneLake
- Fabric Lakehouse
- SQL Analytics Endpoint
- T-SQL
- GitHub

## Dataset
Synthetic StreamSphere subscription data.

- Total subscriptions: 30
- Plans: Basic, Standard, Premium
- Statuses: Active, Cancelled

## Business Metrics
- Total subscriptions
- Active subscriptions
- Cancelled subscriptions
- Estimated monthly recurring revenue (MRR)

## Results

| Plan | Total | Active | Cancelled | MRR (INR) |
|------|------:|-------:|----------:|----------:|
| Premium | 10 | 9 | 1 | 5,841 |
| Standard | 10 | 9 | 1 | 3,591 |
| Basic | 10 | 8 | 2 | 1,592 |
| Total | 30 | 26 | 4 | 11,024 |

## Business Findings
1. Premium generates the highest estimated MRR.
2. Premium and Standard have 9 active subscriptions each.
3. Basic has the lowest estimated MRR.
4. The overall active subscription rate is 86.67%.
5. Premium contributes approximately 53% of MRR.

## SQL Concepts Applied
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- COUNT()
- SUM()
- CASE WHEN
- Conditional aggregation

## Engineering Notes
The Lakehouse SQL analytics endpoint was used
to query the Delta table using T-SQL.

The original query counted active subscriptions
only. Conditional aggregation was introduced
to calculate total, active, and cancelled
subscriptions within the same result.

## Limitations
MRR is estimated using active subscriptions
multiplied by their listed monthly plan prices.

It does not account for discounts, taxes,
refunds, or partial billing periods.

## Evidence
See the screenshots folder for Fabric execution
and query output.

## Learning Reflection
See learning-reflection.md.

## Disclaimer
StreamSphere is a fictional learning project.
All subscription records are synthetic.
