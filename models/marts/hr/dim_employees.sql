SELECT 
    EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME, 
    DEPARTMENT,
    SALARY
FROM {{ ref('stg_employees') }}
