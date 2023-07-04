/* Write your T-SQL query statement below */
-- Calculate the number of unique subjects each teacher teaches in the university.


select teacher_id ,count(distinct subject_id) as cnt
from Teacher
group by teacher_id