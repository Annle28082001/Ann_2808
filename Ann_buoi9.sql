--BAI1
--total viewership for laptops and mobile devices as laptop_reviews
--mobile devices = sum of tablet and phone as mobile_views
--WHEN sum(laptop, mobile devices) then  'Tablet'
SELECT 
SUM(CASE
WHEN device_type = 'laptop' then 1 else 0
END) as laptop_reviews,
sum(CASE
WHEN device_type in ('phone', 'laptop') then 1 else 0
END) as mobile_views
from viewership;

--BAI2
SELECT
x, y, z, 
case
when  x + y > z and x + z > y then 'Yes'
else 'No'
END as 'triangle'
FROM triangle

--bai3
SELECT
ROUND(
Sum(CASE WHEN call_category IS NULL or call_category = 'n/a' then 1 ELSE 0 END)* 100.0
/count(*),1)
FROM callers

--bai4
select name from customer
where referee_id <>2 or referee_id is null

--bai5 
select
survived,
sum(case when pclass = 1 then 1 else 0 end) as first_class,
sum(case when pclass = 2 then 1 else 0 end) as second_class,
sum(case when pclass = 3 then 1 else 0 end) as third_class
from titanic
group by survived

