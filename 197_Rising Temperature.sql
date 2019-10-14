# Write your MySQL query statement below

select w1.id from weather w1, weather w2 where w1.temperature>w2.temperature and datediff(w1.recorddate, w2.recorddate)=1



# Write your MySQL query statement below

select id from (
select case when temperature >@pre_t and datediff(recorddate, @pred_d)=1 then id else null end as id, 
@pre_t :=Temperature, @pred_d:=recorddate
from weather, (select @pre_t:=Null, @pred_d:=Null) as init order by recorddate asc
) p where id is not null;
