/* Write your T-SQL query statement below */

select query_name  , round(avg(1.00*rating/position),2) as quality ,
round(avg(case when rating < 3 then 1.00 else 0.00 end)*100.00 , 2 )as poor_query_percentage
from Queries 
group by query_name 