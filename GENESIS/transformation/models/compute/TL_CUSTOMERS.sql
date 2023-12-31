with customers as (
select
    id as customer_id,
    first_name,
    last_name

from {{ref('SL_CUSTOMERS')}}
),

customer_orders as (
        select
        customer_id,
        min(order_date) as first_order,
        max(order_date) as most_recent_order,
        count(order_id) as number_of_orders
    from {{ref('SL_ORDERS')}}
    group by customer_id
),

customer_payments as (
    select
        orders.customer_id,
        sum(amount) as total_amount
    from {{ref('SL_PAYMENTS')}} payments
    left join {{ref('SL_ORDERS')}} orders on
         payments.order_id = orders.order_id
    group by orders.customer_id
),

final as (
    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order,
        customer_orders.most_recent_order,
        customer_orders.number_of_orders,
        customer_payments.total_amount as customer_lifetime_value
    from customers
    left join customer_orders
        on customers.customer_id = customer_orders.customer_id
    left join customer_payments
        on  customers.customer_id = customer_payments.customer_id
)

select * from final