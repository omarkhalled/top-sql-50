/* Write your T-SQL query statement below */
-- Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".

select * 
from Cinema c
where c.description != 'boring' and (c.id%2) !=0
order by c.rating desc