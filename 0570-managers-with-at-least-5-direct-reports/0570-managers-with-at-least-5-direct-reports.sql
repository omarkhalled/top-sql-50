/* Write your T-SQL query statement below */
-- Write an SQL query to report the managers with at least five direct reports.

select e.name 
from Employee e
join Employee e2
on e.id = e2.managerId
group by  e.name 
having count(e.name) >= 5