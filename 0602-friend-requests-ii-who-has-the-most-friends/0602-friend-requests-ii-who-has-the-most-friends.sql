/* Write your T-SQL query statement below */



select top 1 t.id,count(t.id) as num 
from
(select requester_id as id
from RequestAccepted 
union all
select accepter_id as id
from RequestAccepted 
) t
group by t.id
order by 2 desc