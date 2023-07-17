/* Write your T-SQL query statement below */


with cte as (select product_name ,sum(unit) as unit
from Products p 
join Orders o
on o.product_id  = p.product_id 
where order_date  like '2020-02-%'
group by product_name

)
select product_name,unit
from cte
where unit >=100