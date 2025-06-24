{% snapshot orders_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='order_id',
        strategy='timestamp',
        updated_at='created_at',
    )
}}

SELECT 
       [order_id]
      ,[user_id]
      ,[status]
      ,[gender]
      ,[created_at]
      ,[returned_at]
      ,[shipped_at]
      ,[delivered_at]
      ,[num_of_item]
FROM {{ source('LookerEcommerce', 'orders') }}

{% endsnapshot %}