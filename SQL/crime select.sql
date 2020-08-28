SELECT count(Highest_Offense_Description) as crime_amount,
     CASE
     WHEN Location_Type IS NULL THEN 'OTHER / UNKNOWN'
     ELSE Location_Type
     END, Zip_Code FROM crime
WHERE Zip_Code IS NOT NULL
GROUP BY Location_Type, Zip_Code
ORDER BY crime_amount DESC;
