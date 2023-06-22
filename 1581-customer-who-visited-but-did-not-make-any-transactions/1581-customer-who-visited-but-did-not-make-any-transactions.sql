/* Write your T-SQL query statement below */


select customer_id , count(customer_id) as count_no_trans
from Visits
left join Transactions
on Transactions.visit_id = Visits.visit_id
where transaction_id is null
group by customer_id