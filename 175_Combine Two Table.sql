# Write your MySQL query statement below
select person.FirstName as FirstName, person.LastName as LastName, address.City as City, address.State as State from person left join address on person.personid=address.personid
