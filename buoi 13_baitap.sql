---EX 1
select count(distinct company_id)
from (select 
company_id, title, description,	
count(job_id) as job_count
from job_listings
group by company_id, title, description) as list_job_count
where job_count > 1;

---EX2:   CHƯA XONG
WITH total_spend as (
SELECT category, product,
sum(spend) as total_spend
FROM product_spend
where extract(year from transaction_date)='2022'
group by category, product)
,
max_spend as 
(SELECT category, product,
max(spend) as max_spend
FROM product_spend
where extract(year from transaction_date)='2022'
group by category, product)
select category, product,
total_spend
from product_spend 
---EX3

---EX4

---EX5

---EX6

---EX7
