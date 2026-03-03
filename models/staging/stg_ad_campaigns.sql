SELECT 
    ID AS CAMPAIGN_ID,
    CAMPAIGN_NAME,
    PLATFORM,
    SPEND
FROM {{ source('raw_ecommerce', 'RAW_AD_CAMPAIGNS') }}
