SELECT 
    ID AS ORDER_LINE_ID, 
    ORDER_ID, 
    PRODUCT_ID, 
    PROMO_ID, 
    QUANTITY
FROM {{ source('raw_ecommerce', 'RAW_ORDER_LINES') }}