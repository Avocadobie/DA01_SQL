---EX1
SELECT
 SUM(CASE
   WHEN DEVICE_TYPE = 'tablet' OR DEVICE_TYPE = 'phone' 
   THEN 1 ELSE 0 END) AS MOBILE_VIEWS,
 SUM(CASE
   WHEN DEVICE_TYPE = 'laptop'
   THEN 1 ELSE 0 END) AS LAPTOP_VIEWS
FROM VIEWERSHIP;

---EX2
SELECT *,
CASE 
    WHEN x+y > z and x + z > y and y + z > x then 'Yes'
    ELSE 'No'
END as triangle
FROM triangle;

---EX3
SELECT 
ROUND(CAST(SUM(CASE
  when call_category is null or call_category ='n/a' then 1
  else 0 
end) / COUNT(call_category)* 100) as decimal,1) as call_percentage
FROM callers;

---EX4
elect name 
from customer
where referee_id not like 2
or referee_id is null ;

---EX5
select survived, 
SUM(CASE
    WHEN pclass = 1 then 1
    ELSE 0
END) as first_class,
SUM(CASE
    WHEN pclass = 2 then 1
    ELSE 0
END) as second_class,
SUM(CASE
    WHEN pclass = 3 then 1
    ELSE 0
END) as third_class
from titanic
group by survived;
