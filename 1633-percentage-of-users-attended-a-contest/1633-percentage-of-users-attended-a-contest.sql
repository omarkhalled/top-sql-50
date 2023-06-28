/* Write your T-SQL query statement below */

-- Write an SQL query to find the percentage of the users registered in each contest rounded to two decimals.

select  r.contest_id  ,  round(100.0*count(distinct r.user_id)/(select count(user_id) from Users),2)  as percentage 
from Register r
group by r.contest_id 
order by percentage desc ,r.contest_id asc