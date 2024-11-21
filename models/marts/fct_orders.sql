with 
    orders as (
        select *
        from {{ ref('stg_orders') }}
    )

    , customers as (
        select *
        from {{ ref('dim_customers') }}
    )

    select 
        customers.sk_customer
        , orders.*
    from orders
    left join customers on orders.customer_id = customers.customer_id