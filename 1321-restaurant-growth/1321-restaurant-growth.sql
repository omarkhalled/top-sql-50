/* Write your T-SQL query statement below */


select distinct c1.visited_on ,
(select sum(amount) amount
from Customer c2
WHERE c2.visited_on BETWEEN dateadd(day,-6,c1.visited_on) AND c1.visited_on
) as amount
,
(select round(sum(amount*1.00)/7,2) amount
from Customer c2
WHERE c2.visited_on BETWEEN dateadd(day,-6,c1.visited_on) AND c1.visited_on
) as average_amount

from Customer c1

where visited_on >= (select dateadd(day,6,min(visited_on)) from Customer)