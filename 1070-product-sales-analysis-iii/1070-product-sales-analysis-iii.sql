/* Write your T-SQL query statement below */


/*select s.product_id , s.year as first_year , s.quantity , s.price 
from Sales s
join (select product_id   ,  min(year)  as year
from Sales 
group by product_id) s1
on s.product_id = s1.product_id and s.year = s1.year
*/


 
select t.product_id, t.year as first_year, t.quantity, t.price
from (
select rank() over(partition by product_id order by year) as rnk, *
from sales) t
where t.rnk = 1