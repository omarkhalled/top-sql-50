/* Write your T-SQL query statement below */


select *
from users
where mail LIKE '[a-zA-Z]%@leetcode.com' AND mail NOT LIKE '%[^a-zA-Z0-9_.-]%@leetcode.com'