/* Write your T-SQL query statement below */

/* Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.
*/
select format(trans_date, 'yyyy-MM') as month, country ,
count(id) as trans_count ,
sum(case when state = 'approved' then 1 else 0 end) as approved_count ,
sum(amount) as trans_total_amount ,
sum(case when state = 'approved' then amount else 0 end) as approved_total_amount 
from Transactions
group by format(trans_date, 'yyyy-MM') , country 