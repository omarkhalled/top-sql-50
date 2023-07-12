/* Write your T-SQL query statement below */


with cte as (select num , count(num) f
from MyNumbers 
group by num

)

select isnull(max(num),null) num 
from cte
where f = 1