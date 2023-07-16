/* Write your T-SQL query statement below */
-- Movie Rating
 with cte1 as ( 
select user_id,count(rating) as count
from MovieRating
group by user_id

 )
,
cte2 as (select * ,dense_rank() over(order by count desc) as rnk
from cte1

)

,
cte3 as ( 
select movie_id,avg(rating*1.0) as average
from MovieRating
where created_at between '2020-02-01' and '2020-02-29'
group by movie_id

 )
,
cte4 as (select * ,dense_rank() over(order by average desc) as rnk
from cte3

)


,
cte5 as 
(select min(name)  as results
from users
where user_id in (
select user_id  
from cte2
where rnk = 1 

)
)


,
cte6 as (select min(title)  as results
from Movies
where movie_id in (
select movie_id  
from cte4
where rnk = 1 
)


)

select * 
from cte5
union all
select * 
from cte6