SELECT 
    ID AS PRODUCT_ID, 
    NAME AS PRODUCT_NAME, 
    CATEGORY, 
    PRICE
FROM {{ source('raw_ecommerce', 'RAW_PRODUCTS') }}