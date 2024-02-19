Create or replace  view if not exists product_performance_view2 AS

SELECT
p.id
, p.name
, p.price
, p.category,
, sum(o.quantity) as sum_quantities
, count(o.order_id) as count_orders
, count(distinct c.state) as count_states
from products p 
inner join  orders o
on p.product_id = o.product_id 
inner join customers c
on o.cust_id = c.cust_id
group by 1,2,3,4
order by 5 desc 
;