# Write your MySQL query statement below
SELECT name
FROM Employee
WHERE id IN
(SELECT managerId
FROM Employee
GROUP BY managerId
Having COUNT(DISTINCT ID)>=5);