{% set order_statuses = ['Shipped', 'Complete', 'Processing', 'Cancelled', 'Returned'] %}

SELECT 
    user_id,
    COUNT(DISTINCT order_id) as num_orders,
    {% for order in order_statuses -%}
    COUNT(DISTINCT CASE WHEN  status = '{{ order }}' THEN order_id END) AS num_orders_{{ order }}
    {%- if not loop.last -%}
        ,
    {%- endif %}
    {% endfor%}
FROM {{ ref('stg_looker__orders') }}
GROUP BY user_id