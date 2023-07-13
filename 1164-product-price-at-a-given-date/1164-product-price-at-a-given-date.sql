/* Write your T-SQL query statement below */
with cte as (select * , max(change_date) over(partition by product_id) as latest_change_date
from Products 
where change_date <= '2019-08-16'



)


select c.product_id , c.new_price  as price 
from cte c
where c.change_date = c.latest_change_date
union 
select product_id,10 as price 
from Products group by product_id having min(change_date)>'2019-08-16'

