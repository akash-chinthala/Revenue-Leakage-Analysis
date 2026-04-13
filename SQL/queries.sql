
select count(*) from order_payments
where order_id is null or 
payment_sequential is null or
payment_type is null or
payment_installments is null or
payment_value is null ;



select count(*) from order_items
where order_id is null or 
order_item_id is null or
product_id is null or
seller_id is null or
shipping_limit_date is null  or
price is null or 
freight_value is null;



select count(*) from order_orders
where order_id is null or 
customer_id is null or
order_status is null or
order_purchase_timestamp is null or
order_approved_at is null  or
order_delivered_carrier_date is null or 
order_estimated_delivery_date is null or
order_delivered_customer_date is null;




with items_summary as (
select order_id,sum(price) as total_price,sum(freight_value) as total_freight,sum(price) + sum(freight_value) as expected_revenue from order_items
    group by order_id
),

payments_summary as (
select order_id,sum(payment_value) as actual_revenue from order_payments
    group by order_id
),

final_data as (
select o.order_id,o.customer_id,o.order_status,o.order_purchase_timestamp,
	 i.total_price,i.total_freight,i.expected_revenue,p.actual_revenue,
	(i.expected_revenue - p.actual_revenue) as revenue_leakage,
    
    case  when (i.expected_revenue - p.actual_revenue) > 0 then 'loss'
    when (i.expected_revenue - p.actual_revenue) = 0 then 'no issue'
	else 'overpayment'end as leakage_status
from order_orders o
  
    left join items_summary i 
        on o.order_id = i.order_id
    left join payments_summary p
        on o.order_id = p.order_id
        
) select * from final_data;