/* Write your T-SQL query statement below */




select p.product_id , round(cast (sum(p.price*u.units) as float)/sum(u.units),2) as average_price
from prices p
left join UnitsSold u
on p.product_id = u.product_id and u.purchase_date between p.start_date and p.end_date
group by p.product_id 