/* Day 1 — StreamSphere Subscription Analysis
Business scenario

StreamSphere is a fictional OTT streaming platform offering Basic, Standard, and Premium subscription plans at different monthly prices.

The Product and Revenue Analytics teams want to understand the distribution of subscriptions across these plans and how much monthly subscription revenue each plan represents.

Business question:
Which StreamSphere subscription plans have the most subscribers, and how much potential monthly recurring revenue does each plan generate?

The results should show each plan's monthly price, screen allowance, total subscriptions, active subscriptions, and estimated monthly recurring revenue (MRR), ordered from highest to lowest MRR. */


SELECT 
plan_name AS Subscription_Plan,
monthly_price_inr AS Subcription_Price,
screens_allowed AS No_of_Screens,
COUNT(*) as Total_Subscriptions,

SUM(
    CASE 
        WHEN status ='Active' THEN 1
        ELSE 0
    END
) AS Active_Subscriptions,
SUM(
    CASE
        WHEN status = 'Active'
        THEN monthly_price_inr
        ELSE 0
    END
) AS Estimated_MRR_inr

FROM 
dbo.streamsphere_subscriptions

GROUP BY
plan_name,
screens_allowed,
monthly_price_inr

ORDER BY 
Estimated_MRR_inr DESC;

 /*
 MRR = active_subscriptions* monthly_price_inr.

 SQL concepts used SELECT,FROM,WHERE,GROUP BY,ORDER BY.

 Note: 
 Encountered an error when we used status whithout groupby, thus the error 8120 error arrived.
 This is shown because as aggregation function has been used such as COUNT() or SUM () but included another column  in SELECT  without
 placing it in the GROUP BY clause
 
 The key concept you learned:
    GROUP BY status produces separate rows for each subscription status.
    SUM(CASE WHEN status = 'Active' THEN 1 ELSE 0 END) calculates the number of active subscriptions within each group, without requiring separate rows for each status.
    This is called conditional aggregation, and it's extremely useful in business analytics.
 */

