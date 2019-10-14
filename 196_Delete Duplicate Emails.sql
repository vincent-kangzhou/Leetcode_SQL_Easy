# Write your MySQL query statement below

DELETE FROM Person WHERE id NOT IN (select id from  (SELECT MIN(id) as id FROM person GROUP BY email) p)
