/* Write your T-SQL query statement below */

select 
(case when id%2 = 0 then lag(id) over(order by id) 
      when id%2 = 1 then lead(id,1,id) over(order by id) end ) as id , student
from seat
order by id