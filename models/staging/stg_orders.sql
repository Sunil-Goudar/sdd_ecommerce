SELECT 
    ID AS ORDER_ID, 
    USER_ID AS CUSTOMER_ID, 
    ORDER_DATE, 
    STATUS
FROM {{ source('raw_ecommerce', 'RAW_ORDERS') }} 
WHERE STATUS != 'returned'
