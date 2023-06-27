/* Write your T-SQL query statement below */

-- Write an SQL query to find the number of times each student attended each exam.

/*select Students.student_id , student_name ,subject_name , count(*) as attended_exams
from Students
left join Examinations on Examinations.student_id = Students.student_id
group by subject_name , student_name , Students.student_id  
order by Students.student_id
*/


select  s.student_id, s.student_name,su.subject_name,count(e.subject_name) as attended_exams
from Students s
cross join Subjects su
left join Examinations e
on e.student_id = s.student_id and su.subject_name = e.subject_name
group by su.subject_name , s.student_name , s.student_id
order by s.student_id 