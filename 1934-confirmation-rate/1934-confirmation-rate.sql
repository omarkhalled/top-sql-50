/* Write your T-SQL query statement below */
-- Write an SQL query to find the confirmation rate of each user.

select s.user_id , 
round(avg(case when c.action = 'confirmed' then 1.00 else 0.00 end ),2)as confirmation_rate 
from Signups s
left join Confirmations c
on s.user_id = c.user_id 
group by s.user_id 
order by s.user_id