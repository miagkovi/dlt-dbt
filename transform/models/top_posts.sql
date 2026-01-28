SELECT 
    title, 
    userId 
FROM {{ source('raw_data', 'posts') }}
WHERE id <= 10