SELECT 
    CUSTOMER_ID, 
    FIRST_NAME, 
    LAST_NAME 
FROM {{ ref('stg_customers') }}
