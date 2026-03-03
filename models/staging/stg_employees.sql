SELECT 
    ID AS EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME, 
    DEPARTMENT, 
    SALARY
FROM {{ source('raw_ecommerce', 'RAW_EMPLOYEES') }}
