SELECT *
FROM Persons_Table
WHERE gender LIKE 'Male'

SELECT *
FROM Persons_Table
WHERE Age > 18

SELECT *
FROM Persons_Table
WHERE Address IS NULL

UPDATE Persons_Table
SET Age = Age + 1;

DELETE FROM Persons_Table
WHERE Address IS NULL

SELECT COUNT(*)
FROM Persons_Table

SELECT Age, COUNT(*) AS personCount
FROM Persons_Table
GROUP BY Age;