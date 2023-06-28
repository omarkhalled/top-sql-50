/* Write your T-SQL query statement below */
-- Write an SQL query that reports the average experience years of all the employees for each project,

select p.project_id , round(avg(e.experience_years*1.0),2)as average_years 
from Employee e
right join Project p
on p.employee_id = e.employee_id
group by p.project_id 