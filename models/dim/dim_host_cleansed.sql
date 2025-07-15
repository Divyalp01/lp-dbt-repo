
with data as (
    select * from {{ref('src_hosts')}} 
),
manipulated as (
SELECT
    host_id,
    NVL(
        host_name,
        'Anonymous'
    ) AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    data 
)

select * from manipulated 
