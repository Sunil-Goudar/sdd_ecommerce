{{ config(materialized='ephemeral') }}

SELECT 
    ol.ORDER_ID,
    ol.PRODUCT_ID,
    ol.QUANTITY,
    p.PRICE,
    (ol.QUANTITY * p.PRICE) AS GROSS_AMOUNT,
    COALESCE(pr.DISCOUNT_PERCENT, 0) AS DISCOUNT_PERCENT
FROM {{ ref('stg_order_lines') }} ol
LEFT JOIN {{ ref('stg_products') }} p ON ol.PRODUCT_ID = p.PRODUCT_ID
LEFT JOIN {{ ref('stg_promotions') }} pr ON ol.PROMO_ID = pr.PROMO_ID