SELECT 
    PRODUCT_ID, 
    WAREHOUSE_LOCATION, 
    STOCK_COUNT
FROM {{ source('raw_ecommerce', 'RAW_INVENTORY') }}
