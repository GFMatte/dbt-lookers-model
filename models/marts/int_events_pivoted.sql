{% set traffic_source_values = ['Adwords', 'Email', 'Facebook', 'Organic', 'YouTube'] %}
{% set browser_values = ['Chrome', 'Firefox', 'Safari', 'IE', 'Other'] %}

SELECT 
    user_id,
    COUNT(DISTINCT session_id) as num_web_sessions,
    -- Looping throug traffic sources
    {%- for source in traffic_source_values %}
    COUNT(DISTINCT CASE WHEN traffic_source = '{{ source }}' THEN user_id END) AS num_traffic_source_{{ source }},
    {%- endfor %}
    -- Looping through browsers
    {% for browser in browser_values -%}
    COUNT(DISTINCT CASE WHEN browser = '{{ browser }}' THEN user_id END) AS num_browser_{{ browser }}
    {%- if not loop.last -%}
        ,
    {%- endif %}
    {% endfor -%}
FROM  {{ ref('stg_looker__events') }}
GROUP BY user_id
