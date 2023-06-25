/* Write your T-SQL query statement below */

select name , bonus
from Employee
left join Bonus 
on Bonus.empId = Employee.empId
where bonus < 1000 or bonus is null