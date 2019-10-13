# Write your MySQL query statement below

select b.name as employee from Employee a, Employee b where a.id=b.managerid and a.salary<b.salary
