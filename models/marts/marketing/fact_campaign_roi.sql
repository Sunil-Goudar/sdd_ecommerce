SELECT 
    CAMPAIGN_ID,
    CAMPAIGN_NAME,
    PLATFORM,
    SPEND AS TOTAL_SPEND
FROM {{ ref('stg_ad_campaigns') }}
