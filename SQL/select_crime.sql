SELECT count(Highest_Offense_Description) as crime_amount, Zip_Code,
     CASE
     WHEN Location_Type IS NULL THEN 'OTHER / UNKNOWN'
     ELSE Location_Type
     END
FROM crime
WHERE Highest_Offense_Description = 'FAMILY DISTURBANCE'
  AND Location_Type = 'RESIDENCE / HOME'
  AND Zip_Code IS NOT NULL
GROUP BY Location_Type, Zip_Code
ORDER BY crime_amount DESC;

SELECT Highest_Offense_Description, count(Highest_Offense_Description) as crime_amount
FROM crime
GROUP BY Highest_Offense_Description
ORDER BY crime_amount DESC;
