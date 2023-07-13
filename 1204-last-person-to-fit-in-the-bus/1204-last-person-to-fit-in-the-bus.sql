/* Write your T-SQL query statement below */


with cte as (

select * , sum(weight) over (order by Turn) as total_sum
from queue
)
select top 1 person_name 
from cte
where total_sum <= 1000
order by turn desc