/* Write your T-SQL query statement below */
-- both low fat and recyclable...
select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y'