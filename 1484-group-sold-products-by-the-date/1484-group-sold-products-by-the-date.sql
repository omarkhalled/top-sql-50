
select sell_date,  count(distinct product) as num_sold, 
  string_agg(product, ',') WITHIN GROUP (ORDER BY product) as products
from (select distinct sell_date, product from activities) ac
group by ac.sell_date