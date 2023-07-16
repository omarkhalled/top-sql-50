/* Write your T-SQL query statement below */




with cte as (select d.name as Department  , e.name  as Employee , e.salary as Salary, 
dense_rank() over (partition by e.departmentId order by salary desc) as rnk
from Employee e
join Department d
on e.departmentId = d.id
)

select Department,Employee,Salary
from cte 
where rnk between 1 and 3