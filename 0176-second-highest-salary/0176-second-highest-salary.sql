/*with cte as 
(
	select *,
	count(*) over(order by salary desc) count_row,
	rank() over(order by salary desc) rank
	from Employee
)

select (case when count_row = 1 then 0 else salary end) as SecondHighestSalary
from cte
where rank  = 2
*/

SELECT MAX(Salary) AS SecondHighestSalary FROM Employee WHERE Salary < (SELECT MAX(Salary) FROM Employee);
