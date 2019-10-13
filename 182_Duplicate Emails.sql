# Write your MySQL query statement below
select Email from (select count(Email) as num, Email from Person group by Email having num>1) as statistic
