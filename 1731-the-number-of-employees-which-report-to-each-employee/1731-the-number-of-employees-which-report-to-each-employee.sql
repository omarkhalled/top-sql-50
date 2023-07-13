/* Write your T-SQL query statement below */


select e.employee_id as employee_id ,e.name , count(e1.employee_id) as reports_count ,round(sum(e1.age)*1.0/count(e1.employee_id),0) as average_age 
from Employees e
join Employees e1
on e.employee_id = e1.reports_to 
group by e.employee_id , e.name
having count(e1.employee_id) >=1
order by e.employee_id