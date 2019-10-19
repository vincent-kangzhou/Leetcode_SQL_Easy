# Write your MySQL query statement below
update salary set sex = (case when sex='m' then 'f' else 'm' end)\



# Write your MySQL query statement below
update salary set sex = (case sex when 'm' then 'f' else 'm' end)


# Write your MySQL query statement below
UPDATE salary 
SET sex = CHAR(ASCII('f') ^ ASCII('m') ^ ASCII(sex))
