/* Write your T-SQL query statement below */

select round(1.00*sum(case when datediff(day,a1.first_event,a.event_date)=1 then 1 else 0 end) /count(distinct a.player_id),2) as fraction
from Activity a
left join (
    select player_id , min(event_date) as first_event
    from Activity
    group by player_id
) a1
on a.player_id = a1.player_id