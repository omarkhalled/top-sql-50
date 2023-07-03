/* Write your T-SQL query statement below */


with cte as 
(
select  *,rank() over (partition by customer_id order by order_date)as rnk
from Delivery 
)

select round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end )*100.00 / count(customer_id),2) as immediate_percentage
from cte
where rnk = 1