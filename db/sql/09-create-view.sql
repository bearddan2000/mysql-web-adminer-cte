CREATE VIEW `animal`.breed_count AS
WITH CTE_Count (id, val) AS (
  SELECT breedId, COUNT(*)
  FROM animal.dog
  GROUP BY breedId
)

SELECT c.breed, b.val as 'Breed Count'
FROM animal.dog as a
JOIN CTE_Count as b ON b.id = a.breedId
JOIN animal.breedLookup as c ON c.id = a.breedId
GROUP BY a.breedId;
