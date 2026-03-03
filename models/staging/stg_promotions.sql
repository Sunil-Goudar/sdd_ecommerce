SELECT 
    ID AS PROMO_ID, 
    PROMO_CODE, 
    DISCOUNT_PERCENT
FROM {{ source('raw_ecommerce', 'RAW_PROMOTIONS') }}