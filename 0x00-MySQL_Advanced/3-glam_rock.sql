SELECT band_name, 
    IFNULL(
        TIMESTAMPDIFF(YEAR, formed, 
            CASE WHEN split = 'Present' THEN '2022-01-01' ELSE split END
        ), 0) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;

