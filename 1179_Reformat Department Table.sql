# Write your MySQL query statement below
select d0.id,  Jan_Revenue, Feb_Revenue,Mar_Revenue,Apr_Revenue,May_Revenue,Jun_Revenue,Jul_Revenue,Aug_Revenue,Sep_Revenue,Oct_Revenue,Nov_Revenue,Dec_Revenue from 

(select distinct id from department) d0
left join
(select id, revenue as Jan_Revenue from department where month='Jan') d1 on d0.id=d1.id
left join
(select id, revenue as Feb_Revenue from department where month='Feb') d2 on d0.id=d2.id
left join
(select id, revenue as Mar_Revenue from department where month='Mar') d3 on d0.id=d3.id
left join
(select id, revenue as Apr_Revenue from department where month='Apr') d4 on d0.id=d4.id
left join
(select id, revenue as May_Revenue from department where month='May') d5 on d0.id=d5.id
left join
(select id, revenue as Jun_Revenue from department where month='Jun') d6 on d0.id=d6.id
left join
(select id, revenue as Jul_Revenue from department where month='Jul') d7 on d0.id=d7.id
left join 
(select id, revenue as Aug_Revenue from department where month='Aug') d8 on d0.id=d8.id
left join
(select id, revenue as Sep_Revenue from department where month='Sep') d9 on d0.id=d9.id
left join
(select id, revenue as Oct_Revenue from department where month='Oct') d10 on d0.id=d10.id
left join
(select id, revenue as Nov_Revenue from department where month='Nov') d11 on d0.id=d11.id
left join
(select id,revenue as Dec_Revenue from department where month='Dec') d12 on d0.id=d12.id
order by d0.id






# Write your MySQL query statement below
select id, 
	sum(case when month = 'jan' then revenue else null end) as Jan_Revenue,
	sum(case when month = 'feb' then revenue else null end) as Feb_Revenue,
	sum(case when month = 'mar' then revenue else null end) as Mar_Revenue,
	sum(case when month = 'apr' then revenue else null end) as Apr_Revenue,
	sum(case when month = 'may' then revenue else null end) as May_Revenue,
	sum(case when month = 'jun' then revenue else null end) as Jun_Revenue,
	sum(case when month = 'jul' then revenue else null end) as Jul_Revenue,
	sum(case when month = 'aug' then revenue else null end) as Aug_Revenue,
	sum(case when month = 'sep' then revenue else null end) as Sep_Revenue,
	sum(case when month = 'oct' then revenue else null end) as Oct_Revenue,
	sum(case when month = 'nov' then revenue else null end) as Nov_Revenue,
	sum(case when month = 'dec' then revenue else null end) as Dec_Revenue
from department
group by id
order by id;
