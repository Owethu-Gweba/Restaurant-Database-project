--1. Combine the menu_tems table and the order_details table into a single table.
select *
from menu_items
select * 
from order_details

select *
from order_details od 
left join menu_items mi
on od.item_id = mi.menu_item_id

--2. What are the least and most ordered items? What category are they in?.
select item_name, count(order_details_id) as num_purchases
from order_details od 
left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchases desc

--3. What were the top 5 orders that spent the most money?.
select top 5 order_id, sum(price) as total_spend
from order_details od 
left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend

--4. View the details of the highest spend order.
select category, count(item_id) as num_items
from order_details od 
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category

--5. View the details of the highest spend order.
select order_id, category, count(item_id) as num_items
from order_details od 
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in (440,2075,1957,330,2675)
group by order_id, category