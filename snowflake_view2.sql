Create or replace  view if not exists product_performance_per_state view AS

SELECT
p.id
, p.name
, p.price
, p.category,
, c.state
, sum(o.quantity) as sum_quantity
, count(o.o_id) as count_orders
from products p 
inner join  orders o
on p.product_id = o.product_id 
inner join customers c
on o.customer_id = c.customer_id
group by 1,2,3,4,5
order by 5 desc 
;